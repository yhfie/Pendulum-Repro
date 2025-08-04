type ref;
type javaType;
type Field $GenericType__0;
type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;
type boolArrHeap_type = [ref][int]bool;
type refArrHeap_type = [ref][int]ref;
type realArrHeap_type = [ref][int]int;
type intArrHeap_type = [ref][int]int;
const unique $type : Field javaType;
const unique $alloc : Field bool;
const unique $null : ref;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Object : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique org.openmrs.util.Security : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.io.Serializable : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Comparable : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.CharSequence : javaType extends  complete;
//const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique org.openmrs.api.APIException : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Throwable : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Exception : javaType extends  unique java.lang.Throwable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.RuntimeException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.ClassCastException : javaType extends  unique java.lang.RuntimeException complete;
const unique $StringConst0 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique sg.edu.nus.comp.tsunami.safe.Safe : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Appendable : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.AbstractStringBuilder : javaType extends  unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;
////const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;
const unique $StringConst1 : ref extends  complete;
const unique $StringConst2 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.MessageDigestSpi : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.MessageDigest : javaType extends  unique java.security.MessageDigestSpi complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.GeneralSecurityException : javaType extends  unique java.lang.Exception complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.NoSuchAlgorithmException : javaType extends  unique java.security.GeneralSecurityException complete;
//const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.nio.charset.Charset : javaType extends  unique java.lang.Object, java.lang.Comparable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique org.slf4j.Logger : javaType extends  complete;
const unique $StringConst3 : ref extends  complete;
const unique $StringConst4 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.IndexOutOfBoundsException : javaType extends  unique java.lang.RuntimeException complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.ArrayIndexOutOfBoundsException : javaType extends  unique java.lang.IndexOutOfBoundsException complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.NullPointerException : javaType extends  unique java.lang.RuntimeException complete;
const unique $StringConst5 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Number : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Integer : javaType extends  unique java.lang.Number, java.lang.Comparable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.util.Random : javaType extends  unique java.lang.Object, java.io.Serializable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.System : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Long : javaType extends  unique java.lang.Number, java.lang.Comparable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.spec.AlgorithmParameterSpec : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique javax.crypto.spec.IvParameterSpec : javaType extends  unique java.lang.Object, java.security.spec.AlgorithmParameterSpec complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.spec.KeySpec : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.Key : javaType extends  java.io.Serializable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique javax.security.auth.Destroyable : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique javax.crypto.SecretKey : javaType extends  java.security.Key, javax.security.auth.Destroyable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique javax.crypto.spec.SecretKeySpec : javaType extends  unique java.lang.Object, java.security.spec.KeySpec, javax.crypto.SecretKey complete;
const unique $StringConst6 : ref extends  complete;
const unique $StringConst7 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique javax.crypto.Cipher : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique javax.crypto.NoSuchPaddingException : javaType extends  unique java.security.GeneralSecurityException complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.InvalidAlgorithmParameterException : javaType extends  unique java.security.GeneralSecurityException complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique javax.crypto.BadPaddingException : javaType extends  unique java.security.GeneralSecurityException complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.util.Base64 : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.util.Base64$Encoder : javaType extends  unique java.lang.Object complete;
const unique $StringConst8 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.util.Base64$Decoder : javaType extends  unique java.lang.Object complete;
const unique $StringConst9 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique org.openmrs.api.context.Context : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.util.Dictionary : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.util.Map : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Cloneable : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.util.Hashtable : javaType extends  unique java.util.Dictionary, java.util.Map, java.lang.Cloneable, java.io.Serializable complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.util.Properties : javaType extends  unique java.util.Hashtable complete;
const unique $StringConst10 : ref extends  complete;
const unique $StringConst11 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique org.springframework.util.StringUtils : javaType extends  complete;
const unique $StringConst12 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.security.SecureRandom : javaType extends  unique java.util.Random complete;
const unique $StringConst13 : ref extends  complete;
const unique $StringConst14 : ref extends  complete;
const unique $StringConst15 : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique javax.crypto.KeyGenerator : javaType extends  unique java.lang.Object complete;
const unique $StringConst16 : ref extends  complete;
const unique CC$org$_$openmrs$_$util$_$Security : ref extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique org.slf4j.LoggerFactory : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.reflect.AnnotatedElement : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.reflect.GenericDeclaration : javaType extends  java.lang.reflect.AnnotatedElement complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.reflect.Type : javaType extends  complete;
const { :sourceloc "Security.java",-1,-1,-1,-1 } unique java.lang.Class : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.reflect.GenericDeclaration, java.lang.reflect.Type, java.lang.reflect.AnnotatedElement complete;
//const { :sourceloc "Charset.java",-1,-1,-1,-1 } unique fakejava.nio.charset.Charset : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Charset.java",-1,-1,-1,-1 } unique java.nio.charset.Charset : javaType extends  unique java.lang.Object complete;
//const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique fakejava.lang.StringBuilder : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique java.lang.StringBuilder : javaType extends  unique java.lang.Object complete;
//const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique fakejava.lang.String : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique java.lang.String : javaType extends  unique java.lang.Object complete;
const { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } unique java.lang.Character : javaType extends  unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;
const { :sourceloc "String.java",-1,-1,-1,-1 } unique java.util.Arrays : javaType extends  unique java.lang.Object complete;
//const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique fakejava.lang.Boolean : javaType extends  unique java.lang.Object complete;
const { :sourceloc "Boolean.java",-1,-1,-1,-1 } unique java.lang.Boolean : javaType extends  unique java.lang.Object complete;
var $heap : $heap_type;
var $intArrayType : javaType;
var $charArrayType : javaType;
var $boolArrayType : javaType;
var $byteArrayType : javaType;
var $longArrayType : javaType;
var $arrSizeHeap : [ref]int;
var $stringSizeHeap : [ref]int;
var $boolArrHeap : boolArrHeap_type;
var $refArrHeap : refArrHeap_type;
var $realArrHeap : realArrHeap_type;
var $intArrHeap : intArrHeap_type;
var $objIndex : int;
var java.nio.charset.Charset$java.nio.charset.StandardCharsets$UTF_8336 : ref;
var org.slf4j.Logger$org.openmrs.util.Security$log259 : ref;
//var java.lang.String$fakejava.lang.StringBuilder$value470 : Field ref;
var java.lang.String$java.lang.StringBuilder$value470 : Field ref;
//var char$lp$$rp$$fakejava.lang.String$chars471 : Field ref;
var char$lp$$rp$$java.lang.String$chars471 : Field ref;
//var boolean$fakejava.lang.Boolean$value0 : Field int;
var boolean$java.lang.Boolean$value0 : Field int;
function $arrayType(t:javaType) returns ($ret:javaType);
function $intToReal(x:int) returns ($ret:real);
function $intToBool(x:int) returns ($ret:bool) { (if x == 0 then false else true) }
function $refToBool(x:ref) returns ($ret:bool) { (if x == $null then false else true) }
function $boolToInt(x:bool) returns ($ret:int) { (if x == true then 1 else 0) }
function $cmpBool(x:bool, y:bool) returns ($ret:int);
function $cmpRef(x:ref, y:ref) returns ($ret:int);
function $cmpReal(x:real, y:real) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $cmpInt(x:int, y:int) returns ($ret:int) { (if x > y then 1 else (if x < y then -1 else 0)) }
function $bitOr(x:int, y:int) returns ($ret:int);
function $bitAnd(x:int, y:int) returns ($ret:int);
function $xorInt(x:int, y:int) returns ($ret:int);
function $shlInt(x:int, y:int) returns ($ret:int);
function $ushrInt(x:int, y:int) returns ($ret:int);
function $shrInt(x:int, y:int) returns ($ret:int);
function $mulInt(x:int, y:int) returns ($ret:int);
function $divInt(x:int, y:int) returns ($ret:int);
function $modInt(x:int, y:int) returns ($ret:int);
function $intToRef(id:int) returns ($ret:ref);
axiom (forall index : int :: $intToRef(index) != $null);
axiom (forall i1,i2 : int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));
procedure $new(obj_type:javaType) returns ($obj:ref);    ensures $heap == old($heap)[$obj,$alloc := true][$obj,$type := obj_type];    ensures $objIndex == old($objIndex) + 1;    ensures !old($heap[$obj,$alloc]);    ensures $obj != $null;    ensures $obj == $intToRef(old($objIndex));    modifies $objIndex, $heap;

procedure java.lang.Object$java.lang.Object$clone$43($this:ref) returns ($other:ref);    ensures $heap[$other,$type] == $heap[$this,$type];    ensures $other != $null;        ensures $heap[$other,$alloc] == true;

procedure int$java.lang.String$compareTo$87($this:ref, $other:ref) returns ($return:int);    

procedure org.openmrs.util.Security$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure org.openmrs.util.Security$hashMatches$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap, $stringSizeHeap;

procedure org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure org.openmrs.util.Security$encodeString$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap, $stringSizeHeap;

//procedure java.lang.String$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure org.openmrs.util.Security$encodeStringSHA1$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap, $stringSizeHeap;

procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure org.openmrs.util.Security$incorrectlyEncodeString$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap, $stringSizeHeap;

procedure org.openmrs.util.Security$getPasswordEncodeFailMessage$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

////procedure java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    

////procedure java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

////procedure java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.security.MessageDigest$getInstance$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

//procedure java.lang.String$getBytes$java.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure org.slf4j.Logger$error$java.lang.String_java.lang.Throwable($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$_java.lang.Throwable($this:ref, $in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    

procedure java.security.MessageDigest$digest$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure org.openmrs.util.Security$hexString$byte$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

////procedure java.lang.StringBuilder$append$char($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure org.openmrs.util.Security$incorrectHexString$byte$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.Integer$toHexString$int($in_parameter__0:int) returns ($return:ref, $exception:ref);    

//procedure java.lang.String$$la$init$ra$$java.lang.StringBuilder($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure org.openmrs.util.Security$getRandomToken$() returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap, $stringSizeHeap;

procedure java.util.Random$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.lang.System$currentTimeMillis$() returns ($return:int, $exception:ref);    

procedure java.lang.Long$toString$long($in_parameter__0:int) returns ($return:ref, $exception:ref);    

procedure java.util.Random$nextLong$($this:ref) returns ($return:int, $exception:ref);    

procedure org.openmrs.util.Security$encrypt$java.lang.String_byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure javax.crypto.spec.IvParameterSpec$$la$init$ra$$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure javax.crypto.Cipher$getInstance$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure javax.crypto.Cipher$init$int_java.security.Key_java.security.spec.AlgorithmParameterSpec($this:ref, $in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($exception:ref);    

procedure javax.crypto.Cipher$doFinal$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure java.util.Base64$getEncoder$() returns ($return:ref, $exception:ref);    

procedure java.util.Base64$Encoder$encode$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

//procedure java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    

procedure org.openmrs.util.Security$encrypt$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure org.openmrs.util.Security$getSavedInitVector$() returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure org.openmrs.util.Security$getSavedSecretKey$() returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure org.openmrs.util.Security$decrypt$java.lang.String_byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure java.util.Base64$getDecoder$() returns ($return:ref, $exception:ref);    

procedure java.util.Base64$Decoder$decode$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure org.openmrs.util.Security$decrypt$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure org.openmrs.api.context.Context$getRuntimeProperties$() returns ($return:ref, $exception:ref);    

procedure java.util.Properties$getProperty$java.lang.String_java.lang.String($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($return:ref, $exception:ref);    

procedure org.springframework.util.StringUtils$hasText$java.lang.String($in_parameter__0:ref) returns ($return:int, $exception:ref);    

procedure org.openmrs.util.Security$generateNewInitVector$() returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $heap;

procedure java.security.SecureRandom$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure java.security.SecureRandom$nextBytes$byte$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    

procedure org.openmrs.util.Security$generateNewSecretKey$() returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

procedure javax.crypto.KeyGenerator$getInstance$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

procedure javax.crypto.KeyGenerator$init$int($this:ref, $in_parameter__0:int) returns ($exception:ref);    

procedure javax.crypto.KeyGenerator$generateKey$($this:ref) returns ($return:ref, $exception:ref);    

procedure java.security.Key$getEncoded$($this:ref) returns ($return:ref, $exception:ref);    modifies $heap;

procedure org.openmrs.util.Security$$la$clinit$ra$$() returns ($exception:ref);    modifies org.slf4j.Logger$org.openmrs.util.Security$log259;

procedure org.slf4j.LoggerFactory$getLogger$java.lang.Class($in_parameter__0:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.nio.charset.Charset$$la$init$ra$$($this:ref) returns ($exception:ref);    
procedure java.nio.charset.Charset$$la$init$ra$$($this:ref) returns ($exception:ref);    

//procedure fakejava.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    modifies $objIndex, $heap, $stringSizeHeap;
procedure java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref);    modifies $objIndex, $heap, $stringSizeHeap;

//procedure fakejava.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.StringBuilder$append$char($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;
procedure java.lang.StringBuilder$append$char($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

//procedure fakejava.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;
procedure java.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $heap;

////procedure java.lang.StringBuilder$append$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.lang.StringBuilder$append$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;
procedure java.lang.StringBuilder$append$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

procedure java.lang.Character$charValue$($this:ref) returns ($return:int, $exception:ref);    

//procedure fakejava.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    
procedure java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.lang.StringBuilder$toCharArray$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.StringBuilder$toCharArray$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure java.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.lang.String$$la$init$ra$$byte$lp$$rp$_fakejava.nio.charset.Charset($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;
procedure java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref);    modifies $objIndex, $arrSizeHeap, $heap, $intArrHeap;

//procedure fakejava.lang.String$$la$init$ra$$fakejava.lang.StringBuilder($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $heap;
procedure java.lang.String$$la$init$ra$$java.lang.StringBuilder($this:ref, $in_parameter__0:ref) returns ($exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;
procedure java.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

//procedure fakejava.lang.String$getBytes$fakejava.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;
procedure java.lang.String$getBytes$java.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    modifies $objIndex, $arrSizeHeap, $intArrHeap, $heap;

//procedure fakejava.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref);    
procedure java.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.lang.String$toCharArray$fakejava.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    
procedure java.lang.String$toCharArray$java.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.lang.String$hashCode$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.String$hashCode$($this:ref) returns ($return:int, $exception:ref);    

procedure java.util.Arrays$hashCode$char$lp$$rp$($in_parameter__0:ref) returns ($return:int, $exception:ref);    

//procedure fakejava.lang.String$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.String$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref);    modifies $objIndex, $heap;

procedure java.lang.Object$getClass$($this:ref) returns ($return:ref, $exception:ref);    

//procedure fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;
procedure java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref);    modifies $heap;

//procedure fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;
procedure java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref);    modifies $objIndex, $heap;

//procedure fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    
procedure java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this:ref) returns ($exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref);    

procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref);    

implementation org.openmrs.util.Security$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "Security.java",-1,-1,-1,-1 } $heap[$this,$type] <: org.openmrs.util.Security;
    assume { :sourceloc "Security.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Security.java",41,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Security.java",42,-1,-1,-1 } true;
    goto block1;
  block1:
    return;
}


implementation org.openmrs.util.Security$hashMatches$java.lang.String_java.lang.String($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r8 : ref;    
var r0 : ref;    
var $r5 : ref;    
var $r3 : ref;    
var $z3 : int;    
var r1 : ref;    
var $z4 : int;    
var $z0 : int;    
var $fakelocal_0 : ref;    
var r7 : ref;    
var $z2 : int;    
var $fakelocal_1 : ref;    
var $r4 : ref;    
var $z1 : int;    
var $r6 : ref;    
var $fakelocal_2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "Security.java",65,-1,-1,-1 } true;
    if (r0 == $null) {
        assert { :sourceloc "Security.java",65,-1,-1,-1 } { :comment "thenblock" } true;
        goto block2;
    } else {
        assert { :sourceloc "Security.java",65,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Security.java",66,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "Security.java",66,-1,-1,-1 } { :comment "thenblock" } true;
        goto block3;
    } else {
        assert { :sourceloc "Security.java",66,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block2:
    assert { :sourceloc "Security.java",66,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.openmrs.api.APIException);
    r7 := $fakelocal_0;
    assert { :sourceloc "Security.java",66,-1,-1,-1 } true;
    if ($heap[$null,$type] <: $arrayType(java.lang.Object)) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $r3 := $null;
    assert { :sourceloc "Security.java",66,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$(r7, $StringConst0, $r3);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r7,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    r8 := r7;
    assert { :sourceloc "Security.java",66,-1,-1,-1 } true;
    $exception := r8;
    goto block7;
  block3:
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    call $r4, $exception := org.openmrs.util.Security$encodeString$java.lang.String(r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: org.openmrs.api.APIException) {
            $return := 0;
            return;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    call $z0, $exception := java.lang.String$equals$java.lang.Object(r0, $r4);
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    call $r5, $exception := org.openmrs.util.Security$encodeStringSHA1$java.lang.String(r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: org.openmrs.api.APIException) {
            $return := 0;
            return;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    call $z1, $exception := java.lang.String$equals$java.lang.Object(r0, $r5);
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    call $z2, $exception := sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($z0, $z1);
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    if ($z2 != 0) {
        assert { :sourceloc "Security.java",69,-1,-1,-1 } { :comment "thenblock" } true;
        goto block4;
    } else {
        assert { :sourceloc "Security.java",69,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    call $r6, $exception := org.openmrs.util.Security$incorrectlyEncodeString$java.lang.String(r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: org.openmrs.api.APIException) {
            $return := 0;
            return;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    call $z3, $exception := java.lang.String$equals$java.lang.Object(r0, $r6);
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    if ($z3 == 0) {
        assert { :sourceloc "Security.java",69,-1,-1,-1 } { :comment "thenblock" } true;
        goto block5;
    } else {
        assert { :sourceloc "Security.java",69,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block4:
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    $z4 := 1;
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    goto block6;
  block5:
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    $z4 := 0;
  block6:
    assert { :sourceloc "Security.java",69,-1,-1,-1 } true;
    $return := $z4;
    goto block7;
  block7:
    return;
}


implementation org.openmrs.util.Security$getPasswordEncodeFailMessage$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r3 : ref;    
var $r1 : ref;    
var r0 : ref;    
var $fakelocal_2 : ref;    
var $r2 : ref;    
var $fakelocal_0 : ref;    
var $r4 : ref;    
var $fakelocal_3 : ref;    
var $r5 : ref;    
var $fakelocal_1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",78,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r1 := $fakelocal_0;
    assert { :sourceloc "Security.java",78,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r1);
    assert { :sourceloc "Security.java",78,-1,-1,-1 } true;
    call $r2, $exception := java.lang.StringBuilder$append$java.lang.String($r1, $StringConst1);
    assert { :sourceloc "Security.java",78,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call $r3, $exception := java.lang.StringBuilder$append$java.lang.String($r2, r0);
    assert { :sourceloc "Security.java",78,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $r4, $exception := java.lang.StringBuilder$append$java.lang.String($r3, $StringConst2);
    assert { :sourceloc "Security.java",78,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    call $r5, $exception := java.lang.StringBuilder$toString$($r4);
    assert { :sourceloc "Security.java",78,-1,-1,-1 } true;
    $return := $r5;
    goto block8;
  block8:
    return;
}


implementation org.openmrs.util.Security$encodeString$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r12 : ref;    
var $fakelocal_2 : ref;    
var $r5 : ref;    
var $fakelocal_4 : ref;    
var r1 : ref;    
var r3 : ref;    
var $r7 : ref;    
var r0 : ref;    
var $r9 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_5 : ref;    
var r13 : ref;    
var $fakelocal_1 : ref;    
var $r8 : ref;    
var $r10 : ref;    
var $fakelocal_3 : ref;    
var r4 : ref;    
var $r6 : ref;    
var r2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",91,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 7];
    r1 := $fakelocal_0;
  block9:
    assert { :sourceloc "Security.java",95,-1,-1,-1 } true;
    call r2, $exception := java.security.MessageDigest$getInstance$java.lang.String(r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            $return := $null;
            goto block10;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",96,-1,-1,-1 } true;
    $r5 := java.nio.charset.Charset$java.nio.charset.StandardCharsets$UTF_8336;
    assert { :sourceloc "Security.java",96,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call r3, $exception := java.lang.String$getBytes$java.nio.charset.Charset(r0, $r5);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            assert { :clone } true;
            goto block10;
        } else {
            assert { :clone } true;
        }
    }
  block11:
    assert { :sourceloc "Security.java",102,-1,-1,-1 } true;
    goto block12;
  block10:
    assert { :sourceloc "Security.java",104,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r8 := $exception;
    assert { :sourceloc "Security.java",98,-1,-1,-1 } true;
    r4 := $r8;
    assert { :sourceloc "Security.java",100,-1,-1,-1 } true;
    $r9 := org.slf4j.Logger$org.openmrs.util.Security$log259;
    assert { :sourceloc "Security.java",100,-1,-1,-1 } true;
    call $r10, $exception := org.openmrs.util.Security$getPasswordEncodeFailMessage$java.lang.String(r1);
    assert { :sourceloc "Security.java",100,-1,-1,-1 } true;
    if ($r9 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $exception := org.slf4j.Logger$error$java.lang.String_java.lang.Throwable($r9, $r10, r4);
    assert { :sourceloc "Security.java",101,-1,-1,-1 } true;
    call $fakelocal_3 := $new(org.openmrs.api.APIException);
    r12 := $fakelocal_3;
    assert { :sourceloc "Security.java",101,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$_java.lang.Throwable(r12, $StringConst3, $null, r4);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r12,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    r13 := r12;
    assert { :sourceloc "Security.java",101,-1,-1,-1 } true;
    $exception := r13;
    goto block13;
  block12:
    assert { :sourceloc "Security.java",104,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    call $r6, $exception := java.security.MessageDigest$digest$byte$lp$$rp$(r2, r3);
    assert { :sourceloc "Security.java",104,-1,-1,-1 } true;
    call $r7, $exception := org.openmrs.util.Security$hexString$byte$lp$$rp$($r6);
    assert { :sourceloc "Security.java",104,-1,-1,-1 } true;
    $return := $r7;
    goto block13;
  block13:
    return;
}


implementation org.openmrs.util.Security$encodeStringSHA1$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $fakelocal_3 : ref;    
var $r7 : ref;    
var r12 : ref;    
var $fakelocal_4 : ref;    
var r2 : ref;    
var $fakelocal_5 : ref;    
var $r6 : ref;    
var r3 : ref;    
var $r10 : ref;    
var r0 : ref;    
var $r9 : ref;    
var $r8 : ref;    
var r1 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_0 : ref;    
var r4 : ref;    
var r13 : ref;    
var $fakelocal_1 : ref;    
var $r5 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",114,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 4];
    r1 := $fakelocal_0;
  block14:
    assert { :sourceloc "Security.java",118,-1,-1,-1 } true;
    call r2, $exception := java.security.MessageDigest$getInstance$java.lang.String(r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            $return := $null;
            goto block15;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",119,-1,-1,-1 } true;
    $r5 := java.nio.charset.Charset$java.nio.charset.StandardCharsets$UTF_8336;
    assert { :sourceloc "Security.java",119,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call r3, $exception := java.lang.String$getBytes$java.nio.charset.Charset(r0, $r5);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            assert { :clone } true;
            goto block15;
        } else {
            assert { :clone } true;
        }
    }
  block16:
    assert { :sourceloc "Security.java",125,-1,-1,-1 } true;
    goto block17;
  block15:
    assert { :sourceloc "Security.java",127,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r8 := $exception;
    assert { :sourceloc "Security.java",121,-1,-1,-1 } true;
    r4 := $r8;
    assert { :sourceloc "Security.java",123,-1,-1,-1 } true;
    $r9 := org.slf4j.Logger$org.openmrs.util.Security$log259;
    assert { :sourceloc "Security.java",123,-1,-1,-1 } true;
    call $r10, $exception := org.openmrs.util.Security$getPasswordEncodeFailMessage$java.lang.String(r1);
    assert { :sourceloc "Security.java",123,-1,-1,-1 } true;
    if ($r9 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $exception := org.slf4j.Logger$error$java.lang.String_java.lang.Throwable($r9, $r10, r4);
    assert { :sourceloc "Security.java",124,-1,-1,-1 } true;
    call $fakelocal_3 := $new(org.openmrs.api.APIException);
    r12 := $fakelocal_3;
    assert { :sourceloc "Security.java",124,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$_java.lang.Throwable(r12, $StringConst4, $null, r4);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r12,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    r13 := r12;
    assert { :sourceloc "Security.java",124,-1,-1,-1 } true;
    $exception := r13;
    goto block18;
  block17:
    assert { :sourceloc "Security.java",127,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    call $r6, $exception := java.security.MessageDigest$digest$byte$lp$$rp$(r2, r3);
    assert { :sourceloc "Security.java",127,-1,-1,-1 } true;
    call $r7, $exception := org.openmrs.util.Security$hexString$byte$lp$$rp$($r6);
    assert { :sourceloc "Security.java",127,-1,-1,-1 } true;
    $return := $r7;
    goto block18;
  block18:
    return;
}


implementation org.openmrs.util.Security$hexString$byte$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var b3 : int;    
var $fakelocal_11 : ref;    
var $fakelocal_13 : ref;    
var $fakelocal_23 : ref;    
var $fakelocal_2 : ref;    
var $r6 : ref;    
var $fakelocal_16 : ref;    
var $fakelocal_14 : ref;    
var $c5 : int;    
var $fakelocal_4 : ref;    
var $fakelocal_18 : ref;    
var $r5 : ref;    
var $fakelocal_20 : ref;    
var r2 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_21 : ref;    
var $fakelocal_0 : ref;    
var i2 : int;    
var $c6 : int;    
var r3 : ref;    
var $fakelocal_12 : ref;    
var s0 : int;    
var $fakelocal_1 : ref;    
var $fakelocal_15 : ref;    
var $fakelocal_7 : ref;    
var $s4 : int;    
var r0 : ref;    
var $fakelocal_8 : ref;    
var $fakelocal_22 : ref;    
var i7 : int;    
var $fakelocal_3 : ref;    
var $r4 : ref;    
var $fakelocal_17 : ref;    
var $fakelocal_6 : ref;    
var $fakelocal_19 : ref;    
var b1 : int;    
var r1 : ref;    
var $fakelocal_9 : ref;    
var $fakelocal_10 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",137,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r4 := $fakelocal_0;
    assert { :sourceloc "Security.java",137,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r4);
    assert { :sourceloc "Security.java",137,-1,-1,-1 } true;
    r1 := $r4;
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := 16];
    $r5 := $fakelocal_1;
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[$r5] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][0 := 48]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (1 < $arrSizeHeap[$r5] && 1 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][1 := 49]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (2 < $arrSizeHeap[$r5] && 2 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][2 := 50]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (3 < $arrSizeHeap[$r5] && 3 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][3 := 51]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (4 < $arrSizeHeap[$r5] && 4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_6;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][4 := 52]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (5 < $arrSizeHeap[$r5] && 5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_7;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][5 := 53]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (6 < $arrSizeHeap[$r5] && 6 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_8 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_8;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][6 := 54]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (7 < $arrSizeHeap[$r5] && 7 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_9 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_9;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][7 := 55]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (8 < $arrSizeHeap[$r5] && 8 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_10 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_10;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][8 := 56]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (9 < $arrSizeHeap[$r5] && 9 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_11 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_11;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][9 := 57]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (10 < $arrSizeHeap[$r5] && 10 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_12 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_12;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][10 := 97]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (11 < $arrSizeHeap[$r5] && 11 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_13 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_13;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][11 := 98]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (12 < $arrSizeHeap[$r5] && 12 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_14 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_14;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][12 := 99]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (13 < $arrSizeHeap[$r5] && 13 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_15 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_15;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][13 := 100]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (14 < $arrSizeHeap[$r5] && 14 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_16 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_16;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][14 := 101]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    if (15 < $arrSizeHeap[$r5] && 15 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_17 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_17;
        return;
    }
    $intArrHeap := $intArrHeap[$r5 := $intArrHeap[$r5][15 := 102]];
    assert { :sourceloc "Security.java",138,-1,-1,-1 } true;
    r2 := $r5;
    assert { :sourceloc "Security.java",141,-1,-1,-1 } true;
    r3 := r0;
    assert { :sourceloc "Security.java",141,-1,-1,-1 } true;
    if (r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_18 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_18;
        return;
    }
    i2 := $arrSizeHeap[r3];
    assert { :sourceloc "Security.java",141,-1,-1,-1 } true;
    i7 := 0;
  block19:
    assert { :sourceloc "Security.java",141,-1,-1,-1 } true;
    if (i7 >= i2) {
        assert { :sourceloc "Security.java",141,-1,-1,-1 } { :comment "thenblock" } true;
        goto block20;
    } else {
        assert { :sourceloc "Security.java",141,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Security.java",148,-1,-1,-1 } true;
    if (i7 < $arrSizeHeap[r3] && i7 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_19 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_19;
        return;
    }
    b3 := $intArrHeap[r3][i7];
    assert { :sourceloc "Security.java",142,-1,-1,-1 } true;
    $s4 := $bitAnd(b3, 240);
    assert { :sourceloc "Security.java",142,-1,-1,-1 } true;
    s0 := $shrInt($s4, 4);
    assert { :sourceloc "Security.java",143,-1,-1,-1 } true;
    b1 := $bitAnd(b3, 15);
    assert { :sourceloc "Security.java",144,-1,-1,-1 } true;
    if (s0 < $arrSizeHeap[r2] && s0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_20 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_20;
        return;
    }
    $c5 := $intArrHeap[r2][s0];
    assert { :sourceloc "Security.java",144,-1,-1,-1 } true;
    call $fakelocal_21, $exception := java.lang.StringBuilder$append$char(r1, $c5);
    assert { :sourceloc "Security.java",145,-1,-1,-1 } true;
    if (b1 < $arrSizeHeap[r2] && b1 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_22 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_22;
        return;
    }
    $c6 := $intArrHeap[r2][b1];
    assert { :sourceloc "Security.java",145,-1,-1,-1 } true;
    call $fakelocal_23, $exception := java.lang.StringBuilder$append$char(r1, $c6);
    assert { :sourceloc "Security.java",141,-1,-1,-1 } true;
    i7 := i7 + 1;
    assert { :sourceloc "Security.java",141,-1,-1,-1 } true;
    goto block19;
  block20:
    assert { :sourceloc "Security.java",148,-1,-1,-1 } true;
    call $r6, $exception := java.lang.StringBuilder$toString$(r1);
    assert { :sourceloc "Security.java",148,-1,-1,-1 } true;
    $return := $r6;
    goto block21;
  block21:
    return;
}


implementation org.openmrs.util.Security$incorrectlyEncodeString$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r8 : ref;    
var r13 : ref;    
var $fakelocal_3 : ref;    
var $r6 : ref;    
var $r9 : ref;    
var $fakelocal_2 : ref;    
var $r7 : ref;    
var r0 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_1 : ref;    
var r3 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_5 : ref;    
var r1 : ref;    
var r4 : ref;    
var r2 : ref;    
var $r5 : ref;    
var $r10 : ref;    
var r12 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: java.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",159,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 4];
    r1 := $fakelocal_0;
  block22:
    assert { :sourceloc "Security.java",163,-1,-1,-1 } true;
    call r2, $exception := java.security.MessageDigest$getInstance$java.lang.String(r1);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            $return := $null;
            goto block23;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",164,-1,-1,-1 } true;
    $r5 := java.nio.charset.Charset$java.nio.charset.StandardCharsets$UTF_8336;
    assert { :sourceloc "Security.java",164,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call r3, $exception := java.lang.String$getBytes$java.nio.charset.Charset(r0, $r5);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            assert { :clone } true;
            goto block23;
        } else {
            assert { :clone } true;
        }
    }
  block24:
    assert { :sourceloc "Security.java",170,-1,-1,-1 } true;
    goto block25;
  block23:
    assert { :sourceloc "Security.java",172,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r8 := $exception;
    assert { :sourceloc "Security.java",166,-1,-1,-1 } true;
    r4 := $r8;
    assert { :sourceloc "Security.java",168,-1,-1,-1 } true;
    $r9 := org.slf4j.Logger$org.openmrs.util.Security$log259;
    assert { :sourceloc "Security.java",168,-1,-1,-1 } true;
    call $r10, $exception := org.openmrs.util.Security$getPasswordEncodeFailMessage$java.lang.String(r1);
    assert { :sourceloc "Security.java",168,-1,-1,-1 } true;
    if ($r9 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $exception := org.slf4j.Logger$error$java.lang.String_java.lang.Throwable($r9, $r10, r4);
    assert { :sourceloc "Security.java",169,-1,-1,-1 } true;
    call $fakelocal_3 := $new(org.openmrs.api.APIException);
    r12 := $fakelocal_3;
    assert { :sourceloc "Security.java",169,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$_java.lang.Throwable(r12, $StringConst4, $null, r4);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r12,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    r13 := r12;
    assert { :sourceloc "Security.java",169,-1,-1,-1 } true;
    $exception := r13;
    goto block26;
  block25:
    assert { :sourceloc "Security.java",172,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    call $r6, $exception := java.security.MessageDigest$digest$byte$lp$$rp$(r2, r3);
    assert { :sourceloc "Security.java",172,-1,-1,-1 } true;
    call $r7, $exception := org.openmrs.util.Security$incorrectHexString$byte$lp$$rp$($r6);
    assert { :sourceloc "Security.java",172,-1,-1,-1 } true;
    $return := $r7;
    goto block26;
  block26:
    return;
}


implementation org.openmrs.util.Security$incorrectHexString$byte$lp$$rp$($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var i4 : int;    
var i0 : int;    
var r2 : ref;    
var $r4 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_4 : ref;    
var b1 : int;    
var $fakelocal_2 : ref;    
var r1 : ref;    
var $fakelocal_3 : ref;    
var $r3 : ref;    
var r0 : ref;    
var $fakelocal_5 : ref;    
var $s3 : int;    
var $i2 : int;    
var $r5 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",186,-1,-1,-1 } true;
    if (r0 == $null) {
        assert { :sourceloc "Security.java",186,-1,-1,-1 } { :comment "thenblock" } true;
        goto block27;
    } else {
        assert { :sourceloc "Security.java",186,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Security.java",187,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    $i2 := $arrSizeHeap[r0];
    assert { :sourceloc "Security.java",187,-1,-1,-1 } true;
    if ($i2 >= 1) {
        assert { :sourceloc "Security.java",187,-1,-1,-1 } { :comment "thenblock" } true;
        goto block28;
    } else {
        assert { :sourceloc "Security.java",187,-1,-1,-1 } { :comment "elseblock" } true;
    }
  block27:
    assert { :sourceloc "Security.java",187,-1,-1,-1 } true;
    $return := $StringConst5;
    goto block31;
  block28:
    assert { :sourceloc "Security.java",189,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.lang.StringBuilder);
    $r3 := $fakelocal_1;
    assert { :sourceloc "Security.java",189,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r3);
    assert { :sourceloc "Security.java",189,-1,-1,-1 } true;
    r1 := $r3;
    assert { :sourceloc "Security.java",190,-1,-1,-1 } true;
    r2 := r0;
    assert { :sourceloc "Security.java",190,-1,-1,-1 } true;
    if (r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    i0 := $arrSizeHeap[r2];
    assert { :sourceloc "Security.java",190,-1,-1,-1 } true;
    i4 := 0;
  block29:
    assert { :sourceloc "Security.java",190,-1,-1,-1 } true;
    if (i4 >= i0) {
        assert { :sourceloc "Security.java",190,-1,-1,-1 } { :comment "thenblock" } true;
        goto block30;
    } else {
        assert { :sourceloc "Security.java",190,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Security.java",193,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r2] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    b1 := $intArrHeap[r2][i4];
    assert { :sourceloc "Security.java",191,-1,-1,-1 } true;
    $s3 := $bitAnd(b1, 255);
    assert { :sourceloc "Security.java",191,-1,-1,-1 } true;
    call $r5, $exception := java.lang.Integer$toHexString$int($s3);
    assert { :sourceloc "Security.java",191,-1,-1,-1 } true;
    call $fakelocal_4, $exception := java.lang.StringBuilder$append$java.lang.String(r1, $r5);
    assert { :sourceloc "Security.java",190,-1,-1,-1 } true;
    i4 := i4 + 1;
    assert { :sourceloc "Security.java",190,-1,-1,-1 } true;
    goto block29;
  block30:
    assert { :sourceloc "Security.java",193,-1,-1,-1 } true;
    call $fakelocal_5 := $new(java.lang.String);
    $r4 := $fakelocal_5;
    assert { :sourceloc "Security.java",193,-1,-1,-1 } true;
    call $exception := java.lang.String$$la$init$ra$$java.lang.StringBuilder($r4, r1);
    assert { :sourceloc "Security.java",193,-1,-1,-1 } true;
    $return := $r4;
    goto block31;
  block31:
    return;
}


implementation org.openmrs.util.Security$getRandomToken$() returns ($return:ref, $exception:ref){
    
var $r3 : ref;    
var $fakelocal_2 : ref;    
var $r1 : ref;    
var $r2 : ref;    
var r0 : ref;    
var $fakelocal_3 : ref;    
var $fakelocal_1 : ref;    
var $r8 : ref;    
var $r7 : ref;    
var $r4 : ref;    
var $l0 : int;    
var $r5 : ref;    
var $r6 : ref;    
var $l1 : int;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",202,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.util.Random);
    $r1 := $fakelocal_0;
    assert { :sourceloc "Security.java",202,-1,-1,-1 } true;
    call $exception := java.util.Random$$la$init$ra$$($r1);
    assert { :sourceloc "Security.java",202,-1,-1,-1 } true;
    r0 := $r1;
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.lang.StringBuilder);
    $r2 := $fakelocal_1;
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r2);
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    call $l0, $exception := java.lang.System$currentTimeMillis$();
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    call $r3, $exception := java.lang.Long$toString$long($l0);
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    call $r4, $exception := java.lang.StringBuilder$append$java.lang.String($r2, $r3);
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    call $l1, $exception := java.util.Random$nextLong$(r0);
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    call $r5, $exception := java.lang.Long$toString$long($l1);
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $r6, $exception := java.lang.StringBuilder$append$java.lang.String($r4, $r5);
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    if ($r6 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    call $r7, $exception := java.lang.StringBuilder$toString$($r6);
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    call $r8, $exception := org.openmrs.util.Security$encodeString$java.lang.String($r7);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: org.openmrs.api.APIException) {
            $return := $null;
            return;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",203,-1,-1,-1 } true;
    $return := $r8;
    goto block32;
  block32:
    return;
}


implementation org.openmrs.util.Security$encrypt$java.lang.String_byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var $r12 : ref;    
var r2 : ref;    
var $fakelocal_2 : ref;    
var $r15 : ref;    
var $fakelocal_4 : ref;    
var r17 : ref;    
var $r9 : ref;    
var r23 : ref;    
var $fakelocal_1 : ref;    
var $r14 : ref;    
var $fakelocal_7 : ref;    
var r3 : ref;    
var $fakelocal_6 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_5 : ref;    
var r21 : ref;    
var r4 : ref;    
var $fakelocal_3 : ref;    
var r5 : ref;    
var r0 : ref;    
var r19 : ref;    
var r18 : ref;    
var r6 : ref;    
var r1 : ref;    
var $r10 : ref;    
var r22 : ref;    
var $r13 : ref;    
var r20 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r2 := $in_parameter__2;
    assert { :sourceloc "Security.java",219,-1,-1,-1 } true;
    call $fakelocal_0 := $new(javax.crypto.spec.IvParameterSpec);
    r19 := $fakelocal_0;
    assert { :sourceloc "Security.java",219,-1,-1,-1 } true;
    call $exception := javax.crypto.spec.IvParameterSpec$$la$init$ra$$byte$lp$$rp$(r19, r1);
    assert { :sourceloc "Security.java",219,-1,-1,-1 } true;
    r3 := r19;
    assert { :sourceloc "Security.java",220,-1,-1,-1 } true;
    call $fakelocal_1 := $new(javax.crypto.spec.SecretKeySpec);
    r20 := $fakelocal_1;
    assert { :sourceloc "Security.java",220,-1,-1,-1 } true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String(r20, r2, $StringConst6);
    assert { :sourceloc "Security.java",220,-1,-1,-1 } true;
    r4 := r20;
  block33:
    assert { :sourceloc "Security.java",225,-1,-1,-1 } true;
    call r17, $exception := javax.crypto.Cipher$getInstance$java.lang.String($StringConst7);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: javax.crypto.NoSuchPaddingException) {
            $return := $null;
            goto block34;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",226,-1,-1,-1 } true;
    if (r17 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $exception := javax.crypto.Cipher$init$int_java.security.Key_java.security.spec.AlgorithmParameterSpec(r17, 1, r4, r3);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.InvalidAlgorithmParameterException) {
            $return := $null;
            goto block34;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",227,-1,-1,-1 } true;
    $r9 := java.nio.charset.Charset$java.nio.charset.StandardCharsets$UTF_8336;
    assert { :sourceloc "Security.java",227,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    call $r10, $exception := java.lang.String$getBytes$java.nio.charset.Charset(r0, $r9);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.GeneralSecurityException) {
            assert { :clone } true;
            goto block34;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",227,-1,-1,-1 } true;
    call r5, $exception := javax.crypto.Cipher$doFinal$byte$lp$$rp$(r17, $r10);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: javax.crypto.BadPaddingException) {
            $return := $null;
            goto block34;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",228,-1,-1,-1 } true;
    call $fakelocal_4 := $new(java.lang.String);
    r21 := $fakelocal_4;
    assert { :sourceloc "Security.java",228,-1,-1,-1 } true;
    call $r12, $exception := java.util.Base64$getEncoder$();
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.GeneralSecurityException) {
            assert { :clone } true;
            goto block34;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",228,-1,-1,-1 } true;
    if ($r12 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    call $r13, $exception := java.util.Base64$Encoder$encode$byte$lp$$rp$($r12, r5);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.GeneralSecurityException) {
            assert { :clone } true;
            goto block34;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",228,-1,-1,-1 } true;
    $r14 := java.nio.charset.Charset$java.nio.charset.StandardCharsets$UTF_8336;
    assert { :sourceloc "Security.java",228,-1,-1,-1 } true;
    call $exception := java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset(r21, $r13, $r14);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.GeneralSecurityException) {
            assert { :clone } true;
            r21 := $null;
            goto block34;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",228,-1,-1,-1 } true;
    r6 := r21;
  block35:
    assert { :sourceloc "Security.java",232,-1,-1,-1 } true;
    goto block36;
  block34:
    assert { :sourceloc "Security.java",234,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r15 := $exception;
    assert { :sourceloc "Security.java",230,-1,-1,-1 } true;
    r18 := $r15;
    assert { :sourceloc "Security.java",231,-1,-1,-1 } true;
    call $fakelocal_6 := $new(org.openmrs.api.APIException);
    r22 := $fakelocal_6;
    assert { :sourceloc "Security.java",231,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$_java.lang.Throwable(r22, $StringConst8, $null, r18);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r22,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_7 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_7;
        return;
    }
    r23 := r22;
    assert { :sourceloc "Security.java",231,-1,-1,-1 } true;
    $exception := r23;
    goto block37;
  block36:
    assert { :sourceloc "Security.java",234,-1,-1,-1 } true;
    $return := r6;
    goto block37;
  block37:
    return;
}


implementation org.openmrs.util.Security$encrypt$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r2 : ref;    
var $r1 : ref;    
var $r3 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: java.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",246,-1,-1,-1 } true;
    call $r1, $exception := org.openmrs.util.Security$getSavedInitVector$();
    assert { :sourceloc "Security.java",246,-1,-1,-1 } true;
    call $r2, $exception := org.openmrs.util.Security$getSavedSecretKey$();
    assert { :sourceloc "Security.java",246,-1,-1,-1 } true;
    call $r3, $exception := org.openmrs.util.Security$encrypt$java.lang.String_byte$lp$$rp$_byte$lp$$rp$(r0, $r1, $r2);
    assert { :sourceloc "Security.java",246,-1,-1,-1 } true;
    $return := $r3;
    goto block38;
  block38:
    return;
}


implementation org.openmrs.util.Security$decrypt$java.lang.String_byte$lp$$rp$_byte$lp$$rp$($in_parameter__0:ref, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var $r13 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_5 : ref;    
var r5 : ref;    
var $fakelocal_2 : ref;    
var r4 : ref;    
var r17 : ref;    
var $fakelocal_1 : ref;    
var $r10 : ref;    
var r19 : ref;    
var $fakelocal_6 : ref;    
var r20 : ref;    
var $r9 : ref;    
var r6 : ref;    
var $fakelocal_3 : ref;    
var r21 : ref;    
var r18 : ref;    
var r1 : ref;    
var r16 : ref;    
var r2 : ref;    
var $r12 : ref;    
var r3 : ref;    
var $fakelocal_0 : ref;    
var r0 : ref;    
var r15 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return,$type] <: java.lang.String;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r2 := $in_parameter__2;
    assert { :sourceloc "Security.java",262,-1,-1,-1 } true;
    call $fakelocal_0 := $new(javax.crypto.spec.IvParameterSpec);
    r17 := $fakelocal_0;
    assert { :sourceloc "Security.java",262,-1,-1,-1 } true;
    call $exception := javax.crypto.spec.IvParameterSpec$$la$init$ra$$byte$lp$$rp$(r17, r1);
    assert { :sourceloc "Security.java",262,-1,-1,-1 } true;
    r3 := r17;
    assert { :sourceloc "Security.java",263,-1,-1,-1 } true;
    call $fakelocal_1 := $new(javax.crypto.spec.SecretKeySpec);
    r18 := $fakelocal_1;
    assert { :sourceloc "Security.java",263,-1,-1,-1 } true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String(r18, r2, $StringConst6);
    assert { :sourceloc "Security.java",263,-1,-1,-1 } true;
    r4 := r18;
  block39:
    assert { :sourceloc "Security.java",267,-1,-1,-1 } true;
    call r15, $exception := javax.crypto.Cipher$getInstance$java.lang.String($StringConst7);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: javax.crypto.NoSuchPaddingException) {
            $return := $null;
            goto block40;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",268,-1,-1,-1 } true;
    if (r15 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $exception := javax.crypto.Cipher$init$int_java.security.Key_java.security.spec.AlgorithmParameterSpec(r15, 2, r4, r3);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.InvalidAlgorithmParameterException) {
            $return := $null;
            goto block40;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",269,-1,-1,-1 } true;
    call $r9, $exception := java.util.Base64$getDecoder$();
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.GeneralSecurityException) {
            assert { :clone } true;
            goto block40;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",269,-1,-1,-1 } true;
    if ($r9 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    call $r10, $exception := java.util.Base64$Decoder$decode$java.lang.String($r9, r0);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.GeneralSecurityException) {
            assert { :clone } true;
            goto block40;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",269,-1,-1,-1 } true;
    call r6, $exception := javax.crypto.Cipher$doFinal$byte$lp$$rp$(r15, $r10);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: javax.crypto.BadPaddingException) {
            $return := $null;
            goto block40;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",270,-1,-1,-1 } true;
    call $fakelocal_4 := $new(java.lang.String);
    r19 := $fakelocal_4;
    assert { :sourceloc "Security.java",270,-1,-1,-1 } true;
    $r12 := java.nio.charset.Charset$java.nio.charset.StandardCharsets$UTF_8336;
    assert { :sourceloc "Security.java",270,-1,-1,-1 } true;
    call $exception := java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset(r19, r6, $r12);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.GeneralSecurityException) {
            assert { :clone } true;
            r19 := $null;
            goto block40;
        } else {
            assert { :clone } true;
        }
    }
    assert { :sourceloc "Security.java",270,-1,-1,-1 } true;
    r5 := r19;
  block41:
    assert { :sourceloc "Security.java",274,-1,-1,-1 } true;
    goto block42;
  block40:
    assert { :sourceloc "Security.java",276,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r13 := $exception;
    assert { :sourceloc "Security.java",272,-1,-1,-1 } true;
    r16 := $r13;
    assert { :sourceloc "Security.java",273,-1,-1,-1 } true;
    call $fakelocal_5 := $new(org.openmrs.api.APIException);
    r20 := $fakelocal_5;
    assert { :sourceloc "Security.java",273,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$_java.lang.Throwable(r20, $StringConst9, $null, r16);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r20,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_6 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_6;
        return;
    }
    r21 := r20;
    assert { :sourceloc "Security.java",273,-1,-1,-1 } true;
    $exception := r21;
    goto block43;
  block42:
    assert { :sourceloc "Security.java",276,-1,-1,-1 } true;
    $return := r5;
    goto block43;
  block43:
    return;
}


implementation org.openmrs.util.Security$decrypt$java.lang.String($in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var $r3 : ref;    
var $r1 : ref;    
var $r2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Security.java",288,-1,-1,-1 } true;
    call $r1, $exception := org.openmrs.util.Security$getSavedInitVector$();
    assert { :sourceloc "Security.java",288,-1,-1,-1 } true;
    call $r2, $exception := org.openmrs.util.Security$getSavedSecretKey$();
    assert { :sourceloc "Security.java",288,-1,-1,-1 } true;
    call $r3, $exception := org.openmrs.util.Security$decrypt$java.lang.String_byte$lp$$rp$_byte$lp$$rp$(r0, $r1, $r2);
    assert { :sourceloc "Security.java",288,-1,-1,-1 } true;
    $return := $r3;
    goto block44;
  block44:
    return;
}


implementation org.openmrs.util.Security$getSavedInitVector$() returns ($return:ref, $exception:ref){
    
var r7 : ref;    
var $r1 : ref;    
var r0 : ref;    
var $r4 : ref;    
var r6 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_3 : ref;    
var $z0 : int;    
var $r3 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var $r5 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Security.java",298,-1,-1,-1 } true;
    call $r1, $exception := org.openmrs.api.context.Context$getRuntimeProperties$();
    assert { :sourceloc "Security.java",298,-1,-1,-1 } true;
    if ($r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call r0, $exception := java.util.Properties$getProperty$java.lang.String_java.lang.String($r1, $StringConst10, $StringConst11);
    assert { :sourceloc "Security.java",301,-1,-1,-1 } true;
    call $z0, $exception := org.springframework.util.StringUtils$hasText$java.lang.String(r0);
    assert { :sourceloc "Security.java",301,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "Security.java",301,-1,-1,-1 } { :comment "thenblock" } true;
        goto block45;
    } else {
        assert { :sourceloc "Security.java",301,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Security.java",302,-1,-1,-1 } true;
    call $r4, $exception := java.util.Base64$getDecoder$();
    assert { :sourceloc "Security.java",302,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call $r5, $exception := java.util.Base64$Decoder$decode$java.lang.String($r4, r0);
    assert { :sourceloc "Security.java",302,-1,-1,-1 } true;
    $return := $r5;
    goto block46;
  block45:
    assert { :sourceloc "Security.java",305,-1,-1,-1 } true;
    call $fakelocal_2 := $new(org.openmrs.api.APIException);
    r6 := $fakelocal_2;
    assert { :sourceloc "Security.java",305,-1,-1,-1 } true;
    if ($heap[$null,$type] <: $arrayType(java.lang.Object)) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $r3 := $null;
    assert { :sourceloc "Security.java",305,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$(r6, $StringConst12, $r3);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r6,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    r7 := r6;
    assert { :sourceloc "Security.java",305,-1,-1,-1 } true;
    $exception := r7;
    goto block46;
  block46:
    return;
}


implementation org.openmrs.util.Security$generateNewInitVector$() returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var $r1 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Security.java",317,-1,-1,-1 } true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 16];
    r0 := $fakelocal_0;
    assert { :sourceloc "Security.java",318,-1,-1,-1 } true;
    call $fakelocal_1 := $new(java.security.SecureRandom);
    $r1 := $fakelocal_1;
    assert { :sourceloc "Security.java",318,-1,-1,-1 } true;
    call $exception := java.security.SecureRandom$$la$init$ra$$($r1);
    assert { :sourceloc "Security.java",318,-1,-1,-1 } true;
    call $exception := java.security.SecureRandom$nextBytes$byte$lp$$rp$($r1, r0);
    assert { :sourceloc "Security.java",320,-1,-1,-1 } true;
    $return := r0;
    goto block47;
  block47:
    return;
}


implementation org.openmrs.util.Security$getSavedSecretKey$() returns ($return:ref, $exception:ref){
    
var $r4 : ref;    
var $fakelocal_1 : ref;    
var $z0 : int;    
var $fakelocal_0 : ref;    
var $r3 : ref;    
var $fakelocal_2 : ref;    
var r0 : ref;    
var r6 : ref;    
var $fakelocal_3 : ref;    
var $r5 : ref;    
var $fakelocal_4 : ref;    
var $r1 : ref;    
var r7 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Security.java",330,-1,-1,-1 } true;
    call $r1, $exception := org.openmrs.api.context.Context$getRuntimeProperties$();
    assert { :sourceloc "Security.java",330,-1,-1,-1 } true;
    if ($r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call r0, $exception := java.util.Properties$getProperty$java.lang.String_java.lang.String($r1, $StringConst13, $StringConst14);
    assert { :sourceloc "Security.java",333,-1,-1,-1 } true;
    call $z0, $exception := org.springframework.util.StringUtils$hasText$java.lang.String(r0);
    assert { :sourceloc "Security.java",333,-1,-1,-1 } true;
    if ($z0 == 0) {
        assert { :sourceloc "Security.java",333,-1,-1,-1 } { :comment "thenblock" } true;
        goto block48;
    } else {
        assert { :sourceloc "Security.java",333,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Security.java",334,-1,-1,-1 } true;
    call $r4, $exception := java.util.Base64$getDecoder$();
    assert { :sourceloc "Security.java",334,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call $r5, $exception := java.util.Base64$Decoder$decode$java.lang.String($r4, r0);
    assert { :sourceloc "Security.java",334,-1,-1,-1 } true;
    $return := $r5;
    goto block49;
  block48:
    assert { :sourceloc "Security.java",337,-1,-1,-1 } true;
    call $fakelocal_2 := $new(org.openmrs.api.APIException);
    r6 := $fakelocal_2;
    assert { :sourceloc "Security.java",337,-1,-1,-1 } true;
    if ($heap[$null,$type] <: $arrayType(java.lang.Object)) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $r3 := $null;
    assert { :sourceloc "Security.java",337,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$(r6, $StringConst15, $r3);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r6,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    r7 := r6;
    assert { :sourceloc "Security.java",337,-1,-1,-1 } true;
    $exception := r7;
    goto block49;
  block49:
    return;
}


implementation org.openmrs.util.Security$generateNewSecretKey$() returns ($return:ref, $exception:ref){
    
var r4 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_3 : ref;    
var r7 : ref;    
var $fakelocal_2 : ref;    
var r5 : ref;    
var r0 : ref;    
var $r1 : ref;    
var r6 : ref;    
var $r2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
  block50:
    assert { :sourceloc "Security.java",351,-1,-1,-1 } true;
    call r0, $exception := javax.crypto.KeyGenerator$getInstance$java.lang.String($StringConst6);
    if ($exception != $null) {
        if ($heap[$exception,$type] <: java.security.NoSuchAlgorithmException) {
            $return := $null;
            goto block51;
        } else {
            assert { :clone } true;
        }
    }
  block52:
    assert { :sourceloc "Security.java",355,-1,-1,-1 } true;
    goto block53;
  block51:
    assert { :sourceloc "Security.java",361,-1,-1,-1 } true;
    assume $heap[$exception,$type] <: java.lang.Throwable;
    $r2 := $exception;
    assert { :sourceloc "Security.java",353,-1,-1,-1 } true;
    r4 := $r2;
    assert { :sourceloc "Security.java",354,-1,-1,-1 } true;
    call $fakelocal_0 := $new(org.openmrs.api.APIException);
    r6 := $fakelocal_0;
    assert { :sourceloc "Security.java",354,-1,-1,-1 } true;
    call $exception := org.openmrs.api.APIException$$la$init$ra$$java.lang.String_java.lang.Object$lp$$rp$_java.lang.Throwable(r6, $StringConst16, $null, r4);
    assert { :sourceloc "Security.java",-1,-1,-1,-1 } true;
    if ($heap[r6,$type] <: java.lang.Throwable) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    r7 := r6;
    assert { :sourceloc "Security.java",354,-1,-1,-1 } true;
    $exception := r7;
    goto block54;
  block53:
    assert { :sourceloc "Security.java",356,-1,-1,-1 } true;
    if (r0 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $exception := javax.crypto.KeyGenerator$init$int(r0, 128);
    assert { :sourceloc "Security.java",359,-1,-1,-1 } true;
    call r5, $exception := javax.crypto.KeyGenerator$generateKey$(r0);
    assert { :sourceloc "Security.java",361,-1,-1,-1 } true;
    if (r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    call $r1, $exception := java.security.Key$getEncoded$(r5);
    assert { :sourceloc "Security.java",361,-1,-1,-1 } true;
    $return := $r1;
    goto block54;
  block54:
    return;
}


implementation org.openmrs.util.Security$$la$clinit$ra$$() returns ($exception:ref){
    
var $r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Security.java",47,-1,-1,-1 } true;
    call $r0, $exception := org.slf4j.LoggerFactory$getLogger$java.lang.Class(CC$org$_$openmrs$_$util$_$Security);
    assert { :sourceloc "Security.java",47,-1,-1,-1 } true;
    org.slf4j.Logger$org.openmrs.util.Security$log259 := $r0;
    assert { :sourceloc "Security.java",47,-1,-1,-1 } true;
    goto block55;
  block55:
    return;
}


//implementation fakejava.nio.charset.Charset$$la$init$ra$$($this:ref) returns ($exception:ref){
implementation java.nio.charset.Charset$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Charset.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.nio.charset.Charset;
    assume { :sourceloc "Charset.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.nio.charset.Charset;
    assume { :sourceloc "Charset.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Charset.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Charset.java",3,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Charset.java",3,-1,-1,-1 } true;
    goto block56;
  block56:
    return;
}


//implementation fakejava.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref){
implementation java.lang.StringBuilder$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",15,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "StringBuilder.java",16,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_0 := 0];
//    $heap := $heap[r0,java.lang.String$fakejava.lang.StringBuilder$value470 := $fakelocal_0];
    $heap := $heap[r0,java.lang.String$java.lang.StringBuilder$value470 := $fakelocal_0];
    assert { :sourceloc "StringBuilder.java",16,-1,-1,-1 } true;
    goto block57;
  block57:
    return;
}


//implementation fakejava.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$append$java.lang.String($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r4 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_2 : ref;    
var $r6 : ref;    
var $r3 : ref;    
var $fakelocal_0 : ref;    
var r1 : ref;    
var r0 : ref;    
var $r2 : ref;    
var $r5 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.lang.StringBuilder;
    assume $heap[$return,$type] <: java.lang.StringBuilder;
    assume $heap[$in_parameter__0,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r2 := $fakelocal_0;
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r2);
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
//    $r3 := $heap[r0,java.lang.String$fakejava.lang.StringBuilder$value470];
    $r3 := $heap[r0,java.lang.String$java.lang.StringBuilder$value470];
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
    call $r4, $exception := java.lang.StringBuilder$append$java.lang.String($r2, $r3);
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
    if ($r4 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call $r5, $exception := java.lang.StringBuilder$append$java.lang.String($r4, r1);
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
    if ($r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    call $r6, $exception := java.lang.StringBuilder$toString$($r5);
    assert { :sourceloc "StringBuilder.java",19,-1,-1,-1 } true;
//    $heap := $heap[r0,java.lang.String$fakejava.lang.StringBuilder$value470 := $r6];
    $heap := $heap[r0,java.lang.String$java.lang.StringBuilder$value470 := $r6];
    assert { :sourceloc "StringBuilder.java",20,-1,-1,-1 } true;
    $return := r0;
    goto block58;
  block58:
    return;
}


//implementation fakejava.lang.StringBuilder$append$char($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$append$char($this:ref, $in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var $r7 : ref;    
var $r2 : ref;    
var c0 : int;    
var $fakelocal_3 : ref;    
var $r5 : ref;    
var r1 : ref;    
var $fakelocal_5 : ref;    
var $r3 : ref;    
var $r6 : ref;    
var $fakelocal_2 : ref;    
var $r4 : ref;    
var $r8 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $fakelocal_1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.lang.StringBuilder;
    assume $heap[$return,$type] <: java.lang.StringBuilder;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    c0 := $in_parameter__0;
    assert { :sourceloc "StringBuilder.java",24,-1,-1,-1 } true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := 1];
    $r2 := $fakelocal_0;
    assert { :sourceloc "StringBuilder.java",24,-1,-1,-1 } true;
    if (0 < $arrSizeHeap[$r2] && 0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    $intArrHeap := $intArrHeap[$r2 := $intArrHeap[$r2][0 := c0]];
    assert { :sourceloc "StringBuilder.java",24,-1,-1,-1 } true;
    r1 := $r2;
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
    call $fakelocal_2 := $new(java.lang.StringBuilder);
    $r3 := $fakelocal_2;
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r3);
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
//    $r4 := $heap[r0,java.lang.String$fakejava.lang.StringBuilder$value470];
    $r4 := $heap[r0,java.lang.String$java.lang.StringBuilder$value470];
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
    call $r5, $exception := java.lang.StringBuilder$append$java.lang.String($r3, $r4);
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
//    call $fakelocal_3 := $new(fakejava.lang.String);
    call $fakelocal_3 := $new(java.lang.String);
    $r6 := $fakelocal_3;
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
//    call $exception := fakejava.lang.String$$la$init$ra$$char$lp$$rp$($r6, r1);
    call $exception := java.lang.String$$la$init$ra$$char$lp$$rp$($r6, r1);
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
    if ($r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    call $r7, $exception := java.lang.StringBuilder$append$java.lang.Object($r5, $r6);
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
    if ($r7 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_5;
        return;
    }
    call $r8, $exception := java.lang.StringBuilder$toString$($r7);
    assert { :sourceloc "StringBuilder.java",25,-1,-1,-1 } true;
//    $heap := $heap[r0,java.lang.String$fakejava.lang.StringBuilder$value470 := $r8];
    $heap := $heap[r0,java.lang.String$java.lang.StringBuilder$value470 := $r8];
    assert { :sourceloc "StringBuilder.java",26,-1,-1,-1 } true;
    $return := r0;
    goto block59;
  block59:
    return;
}


//implementation fakejava.lang.StringBuilder$append$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$append$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var r1 : ref;    
var $r2 : ref;    
var r0 : ref;    
var $fakelocal_1 : ref;    
var $r3 : ref;    
var $fakelocal_0 : ref;    
var $c0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$return,$type] <: fakejava.lang.StringBuilder;
    assume $heap[$return,$type] <: java.lang.StringBuilder;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "StringBuilder.java",30,-1,-1,-1 } true;
    if ($heap[r1,$type] <: java.lang.Character) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ClassCastException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    $r2 := r1;
    assert { :sourceloc "StringBuilder.java",30,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_1;
        return;
    }
    call $c0, $exception := java.lang.Character$charValue$($r2);
    assert { :sourceloc "StringBuilder.java",30,-1,-1,-1 } true;
//    call $r3, $exception := fakejava.lang.StringBuilder$append$char(r0, $c0);
    call $r3, $exception := java.lang.StringBuilder$append$char(r0, $c0);
    assert { :sourceloc "StringBuilder.java",30,-1,-1,-1 } true;
    $return := $r3;
    goto block60;
  block60:
    return;
}


//implementation fakejava.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$toString$($this:ref) returns ($return:ref, $exception:ref){
    
var $r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$return,$type] <: java.lang.String;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",34,-1,-1,-1 } true;
//    $r1 := $heap[r0,java.lang.String$fakejava.lang.StringBuilder$value470];
    $r1 := $heap[r0,java.lang.String$java.lang.StringBuilder$value470];
    assert { :sourceloc "StringBuilder.java",34,-1,-1,-1 } true;
    $return := $r1;
    goto block61;
  block61:
    return;
}


//implementation fakejava.lang.StringBuilder$toCharArray$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.StringBuilder$toCharArray$($this:ref) returns ($return:ref, $exception:ref){
    
var $r1 : ref;    
var $r2 : ref;    
var r0 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.StringBuilder;
    assume { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "StringBuilder.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "StringBuilder.java",38,-1,-1,-1 } true;
//    $r1 := $heap[r0,java.lang.String$fakejava.lang.StringBuilder$value470];
    $r1 := $heap[r0,java.lang.String$java.lang.StringBuilder$value470];
    assert { :sourceloc "StringBuilder.java",38,-1,-1,-1 } true;
    if ($r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    call $r2, $exception := java.lang.String$toCharArray$($r1);
    assert { :sourceloc "StringBuilder.java",38,-1,-1,-1 } true;
    $return := $r2;
    goto block62;
  block62:
    return;
}


//implementation fakejava.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
implementation java.lang.String$$la$init$ra$$char$lp$$rp$($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",20,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "String.java",21,-1,-1,-1 } true;
//    $heap := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471 := r1];
    $heap := $heap[r0,char$lp$$rp$$java.lang.String$chars471 := r1];
    assert { :sourceloc "String.java",22,-1,-1,-1 } true;
    goto block63;
  block63:
    return;
}


//implementation fakejava.lang.String$$la$init$ra$$byte$lp$$rp$_fakejava.nio.charset.Charset($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
implementation java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset($this:ref, $in_parameter__0:ref, $in_parameter__1:ref) returns ($exception:ref){
    
var $r3 : ref;    
var $fakelocal_0 : ref;    
var $c3 : int;    
var $b2 : int;    
var $r4 : ref;    
var i4 : int;    
var $fakelocal_4 : ref;    
var r1 : ref;    
var $i0 : int;    
var $fakelocal_2 : ref;    
var $fakelocal_3 : ref;    
var r0 : ref;    
var $fakelocal_1 : ref;    
var r2 : ref;    
var $i1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$in_parameter__1,$type] <: fakejava.nio.charset.Charset;
    assume $heap[$in_parameter__1,$type] <: java.nio.charset.Charset;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r2 := $in_parameter__1;
    assert { :sourceloc "String.java",24,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "String.java",25,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $exception := $fakelocal_0;
        return;
    }
    $i0 := $arrSizeHeap[r1];
    assert { :sourceloc "String.java",25,-1,-1,-1 } true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    $r3 := $fakelocal_1;
    assert { :sourceloc "String.java",25,-1,-1,-1 } true;
//    $heap := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471 := $r3];
    $heap := $heap[r0,char$lp$$rp$$java.lang.String$chars471 := $r3];
    assert { :sourceloc "String.java",26,-1,-1,-1 } true;
    i4 := 0;
  block64:
    assert { :sourceloc "String.java",26,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $exception := $fakelocal_2;
        return;
    }
    $i1 := $arrSizeHeap[r1];
    assert { :sourceloc "String.java",26,-1,-1,-1 } true;
    if (i4 >= $i1) {
        assert { :sourceloc "String.java",26,-1,-1,-1 } { :comment "thenblock" } true;
        goto block65;
    } else {
        assert { :sourceloc "String.java",26,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",27,-1,-1,-1 } true;
//    $r4 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r4 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",27,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r1] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $exception := $fakelocal_3;
        return;
    }
    $b2 := $intArrHeap[r1][i4];
    assert { :sourceloc "String.java",27,-1,-1,-1 } true;
    $c3 := $b2;
    assert { :sourceloc "String.java",27,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[$r4] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $exception := $fakelocal_4;
        return;
    }
    $intArrHeap := $intArrHeap[$r4 := $intArrHeap[$r4][i4 := $c3]];
    assert { :sourceloc "String.java",26,-1,-1,-1 } true;
    i4 := i4 + 1;
    assert { :sourceloc "String.java",26,-1,-1,-1 } true;
    goto block64;
  block65:
    assert { :sourceloc "String.java",29,-1,-1,-1 } true;
    goto block66;
  block66:
    return;
}


//implementation fakejava.lang.String$$la$init$ra$$fakejava.lang.StringBuilder($this:ref, $in_parameter__0:ref) returns ($exception:ref){
implementation java.lang.String$$la$init$ra$$java.lang.StringBuilder($this:ref, $in_parameter__0:ref) returns ($exception:ref){
    
var r1 : ref;    
var $fakelocal_0 : ref;    
var r0 : ref;    
var $r2 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$in_parameter__0,$type] <: fakejava.lang.StringBuilder;
    assume $heap[$in_parameter__0,$type] <: java.lang.StringBuilder;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",31,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "String.java",32,-1,-1,-1 } true;
    if (r1 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.RuntimeException);
        $exception := $fakelocal_0;
        return;
    }
//    call $r2, $exception := fakejava.lang.StringBuilder$toCharArray$(r1);
    call $r2, $exception := java.lang.StringBuilder$toCharArray$(r1);
    assert { :sourceloc "String.java",32,-1,-1,-1 } true;
//    $heap := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471 := $r2];
    $heap := $heap[r0,char$lp$$rp$$java.lang.String$chars471 := $r2];
    assert { :sourceloc "String.java",33,-1,-1,-1 } true;
    goto block67;
  block67:
    return;
}


//implementation fakejava.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
implementation java.lang.String$charAt$int($this:ref, $in_parameter__0:int) returns ($return:int, $exception:ref){
    
var i0 : int;    
var $c1 : int;    
var $r1 : ref;    
var r0 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    i0 := $in_parameter__0;
    assert { :sourceloc "String.java",36,-1,-1,-1 } true;
//    $r1 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r1 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",36,-1,-1,-1 } true;
    if (i0 < $arrSizeHeap[$r1] && i0 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    $c1 := $intArrHeap[$r1][i0];
    assert { :sourceloc "String.java",36,-1,-1,-1 } true;
    $return := $c1;
    goto block68;
  block68:
    return;
}


//implementation fakejava.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$getBytes$($this:ref) returns ($return:ref, $exception:ref){
    
var $i0 : int;    
var r1 : ref;    
var $i1 : int;    
var $r2 : ref;    
var r0 : ref;    
var $r3 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_1 : ref;    
var $fakelocal_2 : ref;    
var $fakelocal_3 : ref;    
var i4 : int;    
var $r4 : ref;    
var $c2 : int;    
var $b3 : int;    
var $fakelocal_4 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",40,-1,-1,-1 } true;
//    $r2 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r2 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",40,-1,-1,-1 } true;
    if ($r2 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_0;
        return;
    }
    $i0 := $arrSizeHeap[$r2];
    assert { :sourceloc "String.java",40,-1,-1,-1 } true;
    call $fakelocal_1 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_1 := $i0];
    r1 := $fakelocal_1;
    assert { :sourceloc "String.java",41,-1,-1,-1 } true;
    i4 := 0;
  block69:
    assert { :sourceloc "String.java",41,-1,-1,-1 } true;
//    $r3 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r3 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",41,-1,-1,-1 } true;
    if ($r3 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := $null;
        $exception := $fakelocal_2;
        return;
    }
    $i1 := $arrSizeHeap[$r3];
    assert { :sourceloc "String.java",41,-1,-1,-1 } true;
    if (i4 >= $i1) {
        assert { :sourceloc "String.java",41,-1,-1,-1 } { :comment "thenblock" } true;
        goto block70;
    } else {
        assert { :sourceloc "String.java",41,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",42,-1,-1,-1 } true;
//    $r4 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r4 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",42,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[$r4] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_3;
        return;
    }
    $c2 := $intArrHeap[$r4][i4];
    assert { :sourceloc "String.java",42,-1,-1,-1 } true;
    $b3 := $c2;
    assert { :sourceloc "String.java",42,-1,-1,-1 } true;
    if (i4 < $arrSizeHeap[r1] && i4 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := $null;
        $exception := $fakelocal_4;
        return;
    }
    $intArrHeap := $intArrHeap[r1 := $intArrHeap[r1][i4 := $b3]];
    assert { :sourceloc "String.java",41,-1,-1,-1 } true;
    i4 := i4 + 1;
    assert { :sourceloc "String.java",41,-1,-1,-1 } true;
    goto block69;
  block70:
    assert { :sourceloc "String.java",44,-1,-1,-1 } true;
    $return := r1;
    goto block71;
  block71:
    return;
}


//implementation fakejava.lang.String$getBytes$fakejava.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$getBytes$java.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r2 : ref;    
var r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$in_parameter__0,$type] <: fakejava.nio.charset.Charset;
    assume $heap[$in_parameter__0,$type] <: java.nio.charset.Charset;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",48,-1,-1,-1 } true;
//    call $r2, $exception := fakejava.lang.String$getBytes$(r0);
    call $r2, $exception := java.lang.String$getBytes$(r0);
    assert { :sourceloc "String.java",48,-1,-1,-1 } true;
    $return := $r2;
    goto block72;
  block72:
    return;
}


//implementation fakejava.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$toCharArray$($this:ref) returns ($return:ref, $exception:ref){
    
var $r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",52,-1,-1,-1 } true;
//    $r1 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r1 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",52,-1,-1,-1 } true;
    $return := $r1;
    goto block73;
  block73:
    return;
}


//implementation fakejava.lang.String$toCharArray$fakejava.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
implementation java.lang.String$toCharArray$java.nio.charset.Charset($this:ref, $in_parameter__0:ref) returns ($return:ref, $exception:ref){
    
var $r2 : ref;    
var r1 : ref;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
//    assume $heap[$in_parameter__0,$type] <: fakejava.nio.charset.Charset;
    assume $heap[$in_parameter__0,$type] <: java.nio.charset.Charset;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",56,-1,-1,-1 } true;
//    $r2 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r2 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",56,-1,-1,-1 } true;
    $return := $r2;
    goto block74;
  block74:
    return;
}


//implementation fakejava.lang.String$hashCode$($this:ref) returns ($return:int, $exception:ref){
implementation java.lang.String$hashCode$($this:ref) returns ($return:int, $exception:ref){
    
var b3 : int;    
var $i1 : int;    
var $r1 : ref;    
var $i2 : int;    
var i4 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",62,-1,-1,-1 } true;
    b3 := 1;
    assert { :sourceloc "String.java",63,-1,-1,-1 } true;
    $i1 := $mulInt(31, b3);
    assert { :sourceloc "String.java",63,-1,-1,-1 } true;
//    $r1 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r1 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",63,-1,-1,-1 } true;
    call $i2, $exception := java.util.Arrays$hashCode$char$lp$$rp$($r1);
    assert { :sourceloc "String.java",63,-1,-1,-1 } true;
    i4 := $i1 + $i2;
    assert { :sourceloc "String.java",64,-1,-1,-1 } true;
    $return := i4;
    goto block75;
  block75:
    return;
}


//implementation fakejava.lang.String$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
implementation java.lang.String$equals$java.lang.Object($this:ref, $in_parameter__0:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var $i1 : int;    
var $c4 : int;    
var $r8 : ref;    
var $r9 : ref;    
var $r5 : ref;    
var r1 : ref;    
var $c3 : int;    
var i5 : int;    
var $fakelocal_1 : ref;    
var $fakelocal_2 : ref;    
var r2 : ref;    
var $r6 : ref;    
var $i2 : int;    
var $r7 : ref;    
var $r3 : ref;    
var $i0 : int;    
var $r4 : ref;    
var $fakelocal_5 : ref;    
var $fakelocal_0 : ref;    
var $fakelocal_4 : ref;    
var $fakelocal_3 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.String;
    assume { :sourceloc "String.java",-1,-1,-1,-1 } $this != $null;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "String.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__0;
    assert { :sourceloc "String.java",69,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "String.java",69,-1,-1,-1 } { :comment "thenblock" } true;
        goto block76;
    } else {
        assert { :sourceloc "String.java",69,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",70,-1,-1,-1 } true;
    $return := 1;
    goto block83;
  block76:
    assert { :sourceloc "String.java",71,-1,-1,-1 } true;
    if (r1 != $null) {
        assert { :sourceloc "String.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block77;
    } else {
        assert { :sourceloc "String.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",72,-1,-1,-1 } true;
    $return := 0;
    goto block83;
  block77:
    assert { :sourceloc "String.java",73,-1,-1,-1 } true;
    call $r3, $exception := java.lang.Object$getClass$(r0);
    assert { :sourceloc "String.java",73,-1,-1,-1 } true;
    call $r4, $exception := java.lang.Object$getClass$(r1);
    assert { :sourceloc "String.java",73,-1,-1,-1 } true;
    if ($r3 == $r4) {
        assert { :sourceloc "String.java",73,-1,-1,-1 } { :comment "thenblock" } true;
        goto block78;
    } else {
        assert { :sourceloc "String.java",73,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",74,-1,-1,-1 } true;
    $return := 0;
    goto block83;
  block78:
    assert { :sourceloc "String.java",75,-1,-1,-1 } true;
//    if ($heap[r1,$type] <: fakejava.lang.String) {
    if ($heap[r1,$type] <: java.lang.String) {
        $exception := $exception;
    } else {
        call $fakelocal_0 := $new(java.lang.ClassCastException);
        $return := 0;
        $exception := $fakelocal_0;
        return;
    }
    r2 := r1;
    assert { :sourceloc "String.java",77,-1,-1,-1 } true;
//    $r5 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r5 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",77,-1,-1,-1 } true;
    if ($r5 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_1 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_1;
        return;
    }
    $i1 := $arrSizeHeap[$r5];
    assert { :sourceloc "String.java",77,-1,-1,-1 } true;
//    $r6 := $heap[r2,char$lp$$rp$$fakejava.lang.String$chars471];
    $r6 := $heap[r2,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",77,-1,-1,-1 } true;
    if ($r6 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_2 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_2;
        return;
    }
    $i0 := $arrSizeHeap[$r6];
    assert { :sourceloc "String.java",77,-1,-1,-1 } true;
    if ($i1 == $i0) {
        assert { :sourceloc "String.java",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block79;
    } else {
        assert { :sourceloc "String.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",78,-1,-1,-1 } true;
    $return := 0;
    goto block83;
  block79:
    assert { :sourceloc "String.java",80,-1,-1,-1 } true;
    i5 := 0;
  block80:
    assert { :sourceloc "String.java",80,-1,-1,-1 } true;
//    $r7 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r7 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",80,-1,-1,-1 } true;
    if ($r7 != $null) {
        $exception := $exception;
    } else {
        call $fakelocal_3 := $new(java.lang.NullPointerException);
        $return := 0;
        $exception := $fakelocal_3;
        return;
    }
    $i2 := $arrSizeHeap[$r7];
    assert { :sourceloc "String.java",80,-1,-1,-1 } true;
    if (i5 >= $i2) {
        assert { :sourceloc "String.java",80,-1,-1,-1 } { :comment "thenblock" } true;
        goto block81;
    } else {
        assert { :sourceloc "String.java",80,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",81,-1,-1,-1 } true;
//    $r8 := $heap[r0,char$lp$$rp$$fakejava.lang.String$chars471];
    $r8 := $heap[r0,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",81,-1,-1,-1 } true;
    if (i5 < $arrSizeHeap[$r8] && i5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_4 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_4;
        return;
    }
    $c4 := $intArrHeap[$r8][i5];
    assert { :sourceloc "String.java",81,-1,-1,-1 } true;
//    $r9 := $heap[r2,char$lp$$rp$$fakejava.lang.String$chars471];
    $r9 := $heap[r2,char$lp$$rp$$java.lang.String$chars471];
    assert { :sourceloc "String.java",81,-1,-1,-1 } true;
    if (i5 < $arrSizeHeap[$r9] && i5 >= 0) {
        $exception := $exception;
    } else {
        call $fakelocal_5 := $new(java.lang.ArrayIndexOutOfBoundsException);
        $return := 0;
        $exception := $fakelocal_5;
        return;
    }
    $c3 := $intArrHeap[$r9][i5];
    assert { :sourceloc "String.java",81,-1,-1,-1 } true;
    if ($c4 == $c3) {
        assert { :sourceloc "String.java",81,-1,-1,-1 } { :comment "thenblock" } true;
        goto block82;
    } else {
        assert { :sourceloc "String.java",81,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "String.java",82,-1,-1,-1 } true;
    $return := 0;
    goto block83;
  block82:
    assert { :sourceloc "String.java",80,-1,-1,-1 } true;
    i5 := i5 + 1;
    assert { :sourceloc "String.java",80,-1,-1,-1 } true;
    goto block80;
  block81:
    assert { :sourceloc "String.java",85,-1,-1,-1 } true;
    $return := 1;
    goto block83;
  block83:
    return;
}


//implementation fakejava.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
implementation java.lang.Boolean$$la$init$ra$$boolean($this:ref, $in_parameter__0:int) returns ($exception:ref){
    
var r0 : ref;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Boolean.java",6,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Boolean.java",7,-1,-1,-1 } true;
//    $heap := $heap[r0,boolean$fakejava.lang.Boolean$value0 := z0];
    $heap := $heap[r0,boolean$java.lang.Boolean$value0 := z0];
    assert { :sourceloc "Boolean.java",8,-1,-1,-1 } true;
    goto block84;
  block84:
    return;
}


//implementation fakejava.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
implementation java.lang.Boolean$valueOf$boolean($in_parameter__0:int) returns ($return:ref, $exception:ref){
    
var z0 : int;    
var $r0 : ref;    
var $fakelocal_0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume $heap[$return,$type] <: fakejava.lang.Boolean;
    assume $heap[$return,$type] <: java.lang.Boolean;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
//    call $fakelocal_0 := $new(fakejava.lang.Boolean);
    call $fakelocal_0 := $new(java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
//    call $exception := fakejava.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    call $exception := java.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    assert { :sourceloc "Boolean.java",11,-1,-1,-1 } true;
    $return := $r0;
    goto block85;
  block85:
    return;
}


//implementation fakejava.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref){
implementation java.lang.Boolean$booleanValue$($this:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var $z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
//    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: fakejava.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $heap[$this,$type] <: java.lang.Boolean;
    assume { :sourceloc "Boolean.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Boolean.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Boolean.java",15,-1,-1,-1 } true;
//    $z0 := $heap[r0,boolean$fakejava.lang.Boolean$value0];
    $z0 := $heap[r0,boolean$java.lang.Boolean$value0];
    assert { :sourceloc "Boolean.java",15,-1,-1,-1 } true;
    $return := $z0;
    goto block86;
  block86:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this:ref) returns ($exception:ref){
    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume { :sourceloc "Safe.java",-1,-1,-1,-1 } $heap[$this,$type] <: sg.edu.nus.comp.tsunami.safe.Safe;
    assume { :sourceloc "Safe.java",-1,-1,-1,-1 } $this != $null;
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r0 := $this;
    assert { :sourceloc "Safe.java",3,-1,-1,-1 } true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert { :sourceloc "Safe.java",3,-1,-1,-1 } true;
    goto block87;
  block87:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var z1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",5,-1,-1,-1 } true;
    z1 := 0;
    assert { :sourceloc "Safe.java",6,-1,-1,-1 } true;
    if (z0 == 0) {
        assert { :sourceloc "Safe.java",6,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block88;
    } else {
        assert { :sourceloc "Safe.java",6,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 0;
  block88:
    assert { :sourceloc "Safe.java",7,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block89;
    } else {
        assert { :sourceloc "Safe.java",7,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    z1 := 1;
  block89:
    assert { :sourceloc "Safe.java",8,-1,-1,-1 } true;
    $return := z1;
    goto block90;
  block90:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var z1 : int;    
var $z2 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",12,-1,-1,-1 } true;
    $z2 := $bitAnd(z0, z1);
    assert { :sourceloc "Safe.java",12,-1,-1,-1 } true;
    $return := $z2;
    goto block91;
  block91:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $z2 : int;    
var z1 : int;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $z2 := $bitOr(z0, z1);
    assert { :sourceloc "Safe.java",16,-1,-1,-1 } true;
    $return := $z2;
    goto block92;
  block92:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l1 : int;    
var $b2 : int;    
var l0 : int;    
var z0 : int;    
var $b3 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",20,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",21,-1,-1,-1 } true;
    if ($b2 <= 0) {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "thenblock" } true;
        goto block93;
    } else {
        assert { :sourceloc "Safe.java",21,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 1;
  block93:
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",22,-1,-1,-1 } true;
    if ($b3 > 0) {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "thenblock" } true;
        goto block94;
    } else {
        assert { :sourceloc "Safe.java",22,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    z0 := 0;
  block94:
    assert { :sourceloc "Safe.java",23,-1,-1,-1 } true;
    $return := z0;
    goto block95;
  block95:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var l1 : int;    
var l0 : int;    
var $b3 : int;    
var $b2 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",27,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",28,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",28,-1,-1,-1 } true;
    if ($b2 >= 0) {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "thenblock" } true;
        goto block96;
    } else {
        assert { :sourceloc "Safe.java",28,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 1;
  block96:
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",29,-1,-1,-1 } true;
    if ($b3 < 0) {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "thenblock" } true;
        goto block97;
    } else {
        assert { :sourceloc "Safe.java",29,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    z0 := 0;
  block97:
    assert { :sourceloc "Safe.java",30,-1,-1,-1 } true;
    $return := z0;
    goto block98;
  block98:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b3 : int;    
var $b2 : int;    
var l1 : int;    
var z0 : int;    
var l0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",34,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",35,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",35,-1,-1,-1 } true;
    if ($b2 < 0) {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "thenblock" } true;
        goto block99;
    } else {
        assert { :sourceloc "Safe.java",35,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 1;
  block99:
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",36,-1,-1,-1 } true;
    if ($b3 >= 0) {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "thenblock" } true;
        goto block100;
    } else {
        assert { :sourceloc "Safe.java",36,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    z0 := 0;
  block100:
    assert { :sourceloc "Safe.java",37,-1,-1,-1 } true;
    $return := z0;
    goto block101;
  block101:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var $b3 : int;    
var z0 : int;    
var l0 : int;    
var l1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",41,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",42,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",42,-1,-1,-1 } true;
    if ($b2 > 0) {
        assert { :sourceloc "Safe.java",42,-1,-1,-1 } { :comment "thenblock" } true;
        goto block102;
    } else {
        assert { :sourceloc "Safe.java",42,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 1;
  block102:
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",43,-1,-1,-1 } true;
    if ($b3 <= 0) {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "thenblock" } true;
        goto block103;
    } else {
        assert { :sourceloc "Safe.java",43,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    z0 := 0;
  block103:
    assert { :sourceloc "Safe.java",44,-1,-1,-1 } true;
    $return := z0;
    goto block104;
  block104:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var l0 : int;    
var z0 : int;    
var l1 : int;    
var $b2 : int;    
var $b3 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",48,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",49,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",49,-1,-1,-1 } true;
    if ($b2 != 0) {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "thenblock" } true;
        goto block105;
    } else {
        assert { :sourceloc "Safe.java",49,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 1;
  block105:
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",50,-1,-1,-1 } true;
    if ($b3 == 0) {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "thenblock" } true;
        goto block106;
    } else {
        assert { :sourceloc "Safe.java",50,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    z0 := 0;
  block106:
    assert { :sourceloc "Safe.java",51,-1,-1,-1 } true;
    $return := z0;
    goto block107;
  block107:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b2 : int;    
var $b3 : int;    
var l1 : int;    
var z0 : int;    
var l0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    l1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",55,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",56,-1,-1,-1 } true;
    $b2 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",56,-1,-1,-1 } true;
    if ($b2 == 0) {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "thenblock" } true;
        goto block108;
    } else {
        assert { :sourceloc "Safe.java",56,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 1;
  block108:
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    $b3 := $cmpInt(l0, l1);
    assert { :sourceloc "Safe.java",57,-1,-1,-1 } true;
    if ($b3 != 0) {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "thenblock" } true;
        goto block109;
    } else {
        assert { :sourceloc "Safe.java",57,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    z0 := 0;
  block109:
    assert { :sourceloc "Safe.java",58,-1,-1,-1 } true;
    $return := z0;
    goto block110;
  block110:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var d1 : int;    
var $b0 : int;    
var z0 : int;    
var d0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",62,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",63,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",63,-1,-1,-1 } true;
    if ($b0 <= 0) {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "thenblock" } true;
        goto block111;
    } else {
        assert { :sourceloc "Safe.java",63,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 1;
  block111:
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",64,-1,-1,-1 } true;
    if ($b1 > 0) {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "thenblock" } true;
        goto block112;
    } else {
        assert { :sourceloc "Safe.java",64,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    z0 := 0;
  block112:
    assert { :sourceloc "Safe.java",65,-1,-1,-1 } true;
    $return := z0;
    goto block113;
  block113:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d1 : int;    
var $b1 : int;    
var z0 : int;    
var $b0 : int;    
var d0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",69,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",70,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",70,-1,-1,-1 } true;
    if ($b0 >= 0) {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "thenblock" } true;
        goto block114;
    } else {
        assert { :sourceloc "Safe.java",70,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 1;
  block114:
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",71,-1,-1,-1 } true;
    if ($b1 < 0) {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "thenblock" } true;
        goto block115;
    } else {
        assert { :sourceloc "Safe.java",71,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    z0 := 0;
  block115:
    assert { :sourceloc "Safe.java",72,-1,-1,-1 } true;
    $return := z0;
    goto block116;
  block116:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var d1 : int;    
var $b1 : int;    
var d0 : int;    
var $b0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",76,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",77,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",77,-1,-1,-1 } true;
    if ($b0 < 0) {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "thenblock" } true;
        goto block117;
    } else {
        assert { :sourceloc "Safe.java",77,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 1;
  block117:
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",78,-1,-1,-1 } true;
    if ($b1 >= 0) {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "thenblock" } true;
        goto block118;
    } else {
        assert { :sourceloc "Safe.java",78,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    z0 := 0;
  block118:
    assert { :sourceloc "Safe.java",79,-1,-1,-1 } true;
    $return := z0;
    goto block119;
  block119:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var $b1 : int;    
var $b0 : int;    
var d0 : int;    
var z0 : int;    
var d1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",83,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",84,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",84,-1,-1,-1 } true;
    if ($b0 > 0) {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "thenblock" } true;
        goto block120;
    } else {
        assert { :sourceloc "Safe.java",84,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 1;
  block120:
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",85,-1,-1,-1 } true;
    if ($b1 <= 0) {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "thenblock" } true;
        goto block121;
    } else {
        assert { :sourceloc "Safe.java",85,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    z0 := 0;
  block121:
    assert { :sourceloc "Safe.java",86,-1,-1,-1 } true;
    $return := z0;
    goto block122;
  block122:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var z0 : int;    
var $b1 : int;    
var d0 : int;    
var d1 : int;    
var $b0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",90,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",91,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",91,-1,-1,-1 } true;
    if ($b0 != 0) {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "thenblock" } true;
        goto block123;
    } else {
        assert { :sourceloc "Safe.java",91,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 1;
  block123:
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",92,-1,-1,-1 } true;
    if ($b1 == 0) {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "thenblock" } true;
        goto block124;
    } else {
        assert { :sourceloc "Safe.java",92,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    z0 := 0;
  block124:
    assert { :sourceloc "Safe.java",93,-1,-1,-1 } true;
    $return := z0;
    goto block125;
  block125:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0:int, $in_parameter__1:int) returns ($return:int, $exception:ref){
    
var d0 : int;    
var $b0 : int;    
var z0 : int;    
var $b1 : int;    
var d1 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    d1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",97,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",98,-1,-1,-1 } true;
    $b0 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",98,-1,-1,-1 } true;
    if ($b0 == 0) {
        assert { :sourceloc "Safe.java",98,-1,-1,-1 } { :comment "thenblock" } true;
        goto block126;
    } else {
        assert { :sourceloc "Safe.java",98,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 1;
  block126:
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    $b1 := $cmpInt(d0, d1);
    assert { :sourceloc "Safe.java",99,-1,-1,-1 } true;
    if ($b1 != 0) {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "thenblock" } true;
        goto block127;
    } else {
        assert { :sourceloc "Safe.java",99,-1,-1,-1 } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    z0 := 0;
  block127:
    assert { :sourceloc "Safe.java",100,-1,-1,-1 } true;
    $return := z0;
    goto block128;
  block128:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r1 : ref;    
var z0 : int;    
var r0 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",104,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",105,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block129;
    } else {
        assert { :sourceloc "Safe.java",105,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 1;
  block129:
    assert { :sourceloc "Safe.java",106,-1,-1,-1 } true;
    if (r0 == r1) {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block130;
    } else {
        assert { :sourceloc "Safe.java",106,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    z0 := 0;
  block130:
    assert { :sourceloc "Safe.java",107,-1,-1,-1 } true;
    $return := z0;
    goto block131;
  block131:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0:ref, $in_parameter__1:ref) returns ($return:int, $exception:ref){
    
var r0 : ref;    
var z0 : int;    
var r1 : ref;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assume $heap[$in_parameter__0,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__1;
    assert { :sourceloc "Safe.java",111,-1,-1,-1 } true;
    z0 := 0;
    assert { :sourceloc "Safe.java",112,-1,-1,-1 } true;
    if (r0 == r1) {
        assert { :sourceloc "Safe.java",112,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block132;
    } else {
        assert { :sourceloc "Safe.java",112,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 1;
  block132:
    assert { :sourceloc "Safe.java",113,-1,-1,-1 } true;
    if (r0 != r1) {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block133;
    } else {
        assert { :sourceloc "Safe.java",113,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    z0 := 0;
  block133:
    assert { :sourceloc "Safe.java",114,-1,-1,-1 } true;
    $return := z0;
    goto block134;
  block134:
    return;
}


implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0:int, $in_parameter__1:ref, $in_parameter__2:ref) returns ($return:ref, $exception:ref){
    
var r0 : ref;    
var r2 : ref;    
var r1 : ref;    
var z0 : int;
    assume (forall T : javaType :: $heap[$null,$type] <: T);
    assume (forall _r : ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r : ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1,$type] <: java.lang.Object;
    assume $heap[$in_parameter__2,$type] <: java.lang.Object;
    assume $heap[$return,$type] <: java.lang.Object;
    $exception := $null;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    z0 := $in_parameter__0;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r0 := $in_parameter__1;
    assert { :sourceloc "Safe.java",-1,-1,-1,-1 } true;
    r1 := $in_parameter__2;
    assert { :sourceloc "Safe.java",117,-1,-1,-1 } true;
    r2 := $null;
    assert { :sourceloc "Safe.java",118,-1,-1,-1 } true;
    if (z0 == 0) {
        assert { :sourceloc "Safe.java",118,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block135;
    } else {
        assert { :sourceloc "Safe.java",118,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r0;
  block135:
    assert { :sourceloc "Safe.java",119,-1,-1,-1 } true;
    if (z0 != 0) {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "thenblock" } true;
        goto block136;
    } else {
        assert { :sourceloc "Safe.java",119,-1,-1,-1 } { :clone } { :comment "elseblock" } true;
    }
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    r2 := r1;
  block136:
    assert { :sourceloc "Safe.java",120,-1,-1,-1 } true;
    $return := r2;
    goto block137;
  block137:
    return;
}


implementation java.lang.Object$$la$init$ra$$($this:ref) returns ($exception:ref){
    $exception := $null;
    return;
}


