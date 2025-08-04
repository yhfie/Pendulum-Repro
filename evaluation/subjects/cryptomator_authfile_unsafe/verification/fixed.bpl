type ref;

type javaType;

type Field _;

type $heap_type = <$GenericType__0>[ref,Field $GenericType__0]$GenericType__0;

type boolArrHeap_type = [ref][int]bool;

type refArrHeap_type = [ref][int]ref;

type realArrHeap_type = [ref][int]int;

type intArrHeap_type = [ref][int]int;

const unique $type: Field javaType;

const unique $alloc: Field bool;

const unique $null: ref;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Object: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.file.DirectoryStream$Filter: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.aes256.Aes256Cryptor$1: javaType extends unique java.lang.Object, java.nio.file.DirectoryStream$Filter complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.AbstractCryptor: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.aes256.AesCryptographicConfiguration: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.aes256.FileNamingConventions: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.aes256.Aes256Cryptor: javaType extends unique org.cryptomator.crypto.AbstractCryptor, org.cryptomator.crypto.aes256.AesCryptographicConfiguration, org.cryptomator.crypto.aes256.FileNamingConventions complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Comparable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Iterable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.file.Watchable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.file.Path: javaType extends java.lang.Comparable, java.lang.Iterable, java.nio.file.Watchable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.io.Serializable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Throwable: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Exception: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.RuntimeException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.file.PathMatcher: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.ClassCastException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.io.IOException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique com.fasterxml.jackson.databind.ObjectMapper: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.Random: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.SecureRandom: javaType extends unique java.util.Random complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.ArithmeticException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.spec.KeySpec: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.Key: javaType extends java.io.Serializable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.security.auth.Destroyable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.SecretKey: javaType extends java.security.Key, javax.security.auth.Destroyable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.spec.SecretKeySpec: javaType extends unique java.lang.Object, java.security.spec.KeySpec, javax.crypto.SecretKey complete;

const unique $StringConst0: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.CharSequence: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.String: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable, java.lang.CharSequence complete;

const unique $StringConst1: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.Arrays: javaType extends unique java.lang.Object complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.AutoCloseable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.io.Closeable: javaType extends java.lang.AutoCloseable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.io.Flushable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.io.OutputStream: javaType extends unique java.lang.Object, java.io.Closeable, java.io.Flushable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.Cipher: javaType extends unique java.lang.Object complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.GeneralSecurityException: javaType extends unique java.lang.Exception complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.KeyException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.InvalidKeyException: javaType extends unique java.security.KeyException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.aes256.KeyFile: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.IllegalStateException: javaType extends unique java.lang.RuntimeException complete;

const unique $StringConst2: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.io.InputStream: javaType extends unique java.lang.Object, java.io.Closeable complete;

const unique CC$org$_$cryptomator$_$crypto$_$aes256$_$KeyFile: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.reflect.AnnotatedElement: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.reflect.GenericDeclaration: javaType extends java.lang.reflect.AnnotatedElement complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.reflect.Type: javaType extends complete;

//const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Class: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.reflect.GenericDeclaration, java.lang.reflect.Type, java.lang.reflect.AnnotatedElement complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.NoSuchAlgorithmException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.exceptions.UnsupportedKeyLengthException: javaType extends complete;

const unique $StringConst3: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.exceptions.WrongPasswordException: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.security.auth.DestroyFailedException: javaType extends unique java.lang.Exception complete;

const unique $StringConst4: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.NoSuchPaddingException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.IllegalArgumentException: javaType extends unique java.lang.RuntimeException complete;

const unique $StringConst5: ref extends complete;

const unique $StringConst6: ref extends complete;

const unique $StringConst7: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.spec.AlgorithmParameterSpec: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.spec.IvParameterSpec: javaType extends unique java.lang.Object, java.security.spec.AlgorithmParameterSpec complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.security.InvalidAlgorithmParameterException: javaType extends unique java.security.GeneralSecurityException complete;

const unique $StringConst8: ref extends complete;

const unique $StringConst9: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Error: javaType extends unique java.lang.Throwable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.AssertionError: javaType extends unique java.lang.Error complete;

const unique $StringConst10: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Cloneable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.Mac: javaType extends unique java.lang.Object, java.lang.Cloneable complete;

const unique $StringConst11: ref extends complete;

const unique $StringConst12: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Appendable: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.AbstractStringBuilder: javaType extends unique java.lang.Object, java.lang.Appendable, java.lang.CharSequence complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.StringBuilder: javaType extends unique java.lang.AbstractStringBuilder, java.io.Serializable, java.lang.CharSequence complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.bouncycastle.crypto.generators.SCrypt: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.zip.Checksum: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.zip.CRC32: javaType extends unique java.lang.Object, java.util.zip.Checksum complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.CryptorIOSupport: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.apache.commons.lang3.StringUtils: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.IllegalBlockSizeException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.Collection: javaType extends java.lang.Iterable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.AbstractCollection: javaType extends unique java.lang.Object, java.util.Collection complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.List: javaType extends java.util.Collection complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.AbstractList: javaType extends unique java.util.AbstractCollection, java.util.List complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.RandomAccess: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.ArrayList: javaType extends unique java.util.AbstractList, java.util.List, java.util.RandomAccess, java.lang.Cloneable, java.io.Serializable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.NullPointerException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.IndexOutOfBoundsException: javaType extends unique java.lang.RuntimeException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.ArrayIndexOutOfBoundsException: javaType extends unique java.lang.IndexOutOfBoundsException complete;

const unique $StringConst13: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.apache.commons.lang3.ArrayUtils: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.Buffer: javaType extends unique java.lang.Object complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.ByteBuffer: javaType extends unique java.nio.Buffer, java.lang.Comparable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.charset.Charset: javaType extends unique java.lang.Object, java.lang.Comparable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.BadPaddingException: javaType extends unique java.security.GeneralSecurityException complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.apache.commons.codec.binary.BaseNCodec: javaType extends complete;

const unique $StringConst14: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Number: javaType extends unique java.lang.Object, java.io.Serializable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Long: javaType extends unique java.lang.Number, java.lang.Comparable complete;

const unique $StringConst15: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.aes256.LongFilenameMetadata: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.util.UUID: javaType extends unique java.lang.Object, java.io.Serializable, java.lang.Comparable complete;

const unique $StringConst16: ref extends complete;

const unique $StringConst17: ref extends complete;

const unique $StringConst18: ref extends complete;

const unique $StringConst19: ref extends complete;

const unique CC$org$_$cryptomator$_$crypto$_$aes256$_$LongFilenameMetadata: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.channels.Channel: javaType extends java.io.Closeable complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.channels.ReadableByteChannel: javaType extends java.nio.channels.Channel complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.channels.WritableByteChannel: javaType extends java.nio.channels.Channel complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.channels.ByteChannel: javaType extends java.nio.channels.ReadableByteChannel, java.nio.channels.WritableByteChannel complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.nio.channels.SeekableByteChannel: javaType extends java.nio.channels.ByteChannel complete;

const unique $StringConst20: ref extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.io.SeekableByteChannelInputStream: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.aes256.MacInputStream: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.apache.commons.io.output.NullOutputStream: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.apache.commons.io.IOUtils: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique sg.edu.nus.comp.tsunami.safe.Safe: javaType extends unique java.lang.Object complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.io.FilterInputStream: javaType extends unique java.io.InputStream complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.CipherInputStream: javaType extends unique java.io.FilterInputStream complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.io.SeekableByteChannelOutputStream: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique org.cryptomator.crypto.aes256.MacOutputStream: javaType extends complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.io.FilterOutputStream: javaType extends unique java.io.OutputStream complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique javax.crypto.CipherOutputStream: javaType extends unique java.io.FilterOutputStream complete;

const {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} unique java.lang.Math: javaType extends unique java.lang.Object complete;

const unique $DoubleConst0: int extends complete;

const unique $DoubleConst1: int extends complete;

const unique $StringConst21: ref extends complete;

const {:sourceloc "Boolean.java", -1, -1, -1, -1} unique java.lang.Boolean: javaType extends unique java.lang.Object complete;

var $heap: $heap_type;

var $intArrayType: javaType;

var $charArrayType: javaType;

var $boolArrayType: javaType;

var $byteArrayType: javaType;

var $longArrayType: javaType;

var $arrSizeHeap: [ref]int;

var $stringSizeHeap: [ref]int;

var $boolArrHeap: boolArrHeap_type;

var $refArrHeap: refArrHeap_type;

var $realArrHeap: realArrHeap_type;

var $intArrHeap: intArrHeap_type;

var $objIndex: int;

var org.cryptomator.crypto.aes256.Aes256Cryptor$org.cryptomator.crypto.aes256.Aes256Cryptor$1$this$0259: Field ref;

var java.nio.file.PathMatcher$org.cryptomator.crypto.aes256.FileNamingConventions$ENCRYPTED_FILE_GLOB_MATCHER463: ref;

var com.fasterxml.jackson.databind.ObjectMapper$org.cryptomator.crypto.aes256.Aes256Cryptor$objectMapper261: Field ref;

var java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260: ref;

var int$org.cryptomator.crypto.aes256.Aes256Cryptor$AES_KEY_LENGTH_IN_BITS0: int;

var javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262: Field ref;

var javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263: Field ref;

var java.nio.charset.Charset$org.apache.commons.io.Charsets$UTF_8464: ref;

var org.apache.commons.codec.binary.BaseNCodec$org.cryptomator.crypto.AbstractCryptor$ENCRYPTED_FILENAME_CODEC465: ref;

var boolean$java.lang.Boolean$value0: Field int;

function $arrayType(t: javaType) : javaType;

function $intToReal(x: int) : real;

function $intToBool(x: int) : bool;

axiom (forall x: int :: 
  { $intToBool(x): bool } 
  $intToBool(x): bool <==> (if x == 0 then false else true));

function $refToBool(x: ref) : bool;

axiom (forall x: ref :: 
  { $refToBool(x): bool } 
  $refToBool(x): bool <==> (if x == $null then false else true));

function $boolToInt(x: bool) : int;

axiom (forall x: bool :: 
  { $boolToInt(x): int } 
  $boolToInt(x): int == (if x <==> true then 1 else 0));

function $cmpBool(x: bool, y: bool) : int;

function $cmpRef(x: ref, y: ref) : int;

function $cmpReal(x: real, y: real) : int;

axiom (forall x: real, y: real :: 
  { $cmpReal(x, y): int } 
  $cmpReal(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

function $cmpInt(x: int, y: int) : int;

axiom (forall x: int, y: int :: 
  { $cmpInt(x, y): int } 
  $cmpInt(x, y): int == (if x > y then 1 else (if x < y then -1 else 0)));

function $bitOr(x: int, y: int) : int;

function $bitAnd(x: int, y: int) : int;

function $xorInt(x: int, y: int) : int;

function $shlInt(x: int, y: int) : int;

function $ushrInt(x: int, y: int) : int;

function $shrInt(x: int, y: int) : int;

function $mulInt(x: int, y: int) : int;

function $divInt(x: int, y: int) : int;

function $modInt(x: int, y: int) : int;

function $intToRef(id: int) : ref;

function $realOp32117(x: int, y: int) : int;

function $realOp32086(x: int, y: int) : int;

function $realOp32241(x: int, y: int) : int;

axiom (forall index: int :: $intToRef(index) != $null);

axiom (forall i1: int, i2: int :: i1 == i2 <==> $intToRef(i1) == $intToRef(i2));

procedure $new(obj_type: javaType) returns ($obj: ref);
  modifies $objIndex, $heap;
  ensures !old($heap[$obj, $alloc]);
  ensures $obj != $null;
  ensures $heap == old($heap)[$obj, $alloc := true][$obj, $type := obj_type];
  ensures $obj == $intToRef(old($objIndex));
  ensures $objIndex == old($objIndex) + 1;



procedure java.lang.Object$java.lang.Object$clone$43($this: ref) returns ($other: ref);
  ensures $heap[$other, $type] == $heap[$this, $type];
  ensures $other != $null;
  ensures $heap[$other, $alloc] <==> true;



procedure int$java.lang.String$compareTo$87($this: ref, $other: ref) returns ($return: int);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$1$$la$init$ra$$org.cryptomator.crypto.aes256.Aes256Cryptor($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$1$accept$java.nio.file.Path($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.nio.file.PathMatcher$matches$java.nio.file.Path($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$1$accept$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$$la$init$ra$$($this: ref) returns ($exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure org.cryptomator.crypto.AbstractCryptor$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure com.fasterxml.jackson.databind.ObjectMapper$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.security.SecureRandom$generateSeed$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.security.SecureRandom$setSeed$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.security.SecureRandom$nextBytes$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure java.util.Arrays$fill$byte$lp$$rp$_byte($in_parameter__0: ref, $in_parameter__1: int) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$$la$init$ra$$java.util.Random($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure java.util.Random$nextBytes$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$encryptMasterKey$java.io.OutputStream_java.lang.CharSequence($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$randomData$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int, 
    $in_parameter__4: int)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$aesKeyWrapCipher$javax.crypto.SecretKey_int($this: ref, $in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure javax.crypto.Cipher$wrap$java.security.Key($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$setScryptSalt$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$setScryptCostParam$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$setScryptBlockSize$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$setKeyLength$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$setPrimaryMasterKey$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$setHMacMasterKey$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure com.fasterxml.jackson.databind.ObjectMapper$writeValue$java.io.OutputStream_java.lang.Object($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$decryptMasterKey$java.io.InputStream_java.lang.CharSequence($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);
  modifies $objIndex, $heap;



procedure com.fasterxml.jackson.databind.ObjectMapper$readValue$java.io.InputStream_java.lang.Class($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure javax.crypto.Cipher$getMaxAllowedKeyLength$java.lang.String($in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$getKeyLength$($this: ref) returns ($return: int, $exception: ref);



procedure org.cryptomator.crypto.exceptions.UnsupportedKeyLengthException$$la$init$ra$$int_int($this: ref, $in_parameter__0: int, $in_parameter__1: int)
   returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$getScryptSalt$($this: ref) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$getScryptCostParam$($this: ref) returns ($return: int, $exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$getScryptBlockSize$($this: ref) returns ($return: int, $exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$getPrimaryMasterKey$($this: ref) returns ($return: ref, $exception: ref);



procedure javax.crypto.Cipher$unwrap$byte$lp$$rp$_java.lang.String_int($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: int)
   returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.aes256.KeyFile$getHMacMasterKey$($this: ref) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.exceptions.WrongPasswordException$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$swipeSensitiveDataInternal$($this: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$destroyQuietly$javax.security.auth.Destroyable($this: ref, $in_parameter__0: ref) returns ($exception: ref);
  modifies $objIndex, $heap;



procedure javax.security.auth.Destroyable$destroy$($this: ref) returns ($exception: ref);



procedure javax.crypto.Cipher$getInstance$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure javax.crypto.Cipher$init$int_java.security.Key($this: ref, $in_parameter__0: int, $in_parameter__1: ref)
   returns ($exception: ref);



procedure java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String_java.lang.Throwable($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$aesCtrCipher$javax.crypto.SecretKey_byte$lp$$rp$_int($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: int)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure javax.crypto.spec.IvParameterSpec$$la$init$ra$$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure javax.crypto.Cipher$init$int_java.security.Key_java.security.spec.AlgorithmParameterSpec($this: ref, $in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$aesEcbCipher$javax.crypto.SecretKey_int($this: ref, $in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.AssertionError$$la$init$ra$$java.lang.String_java.lang.Throwable($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$hmacSha256$javax.crypto.SecretKey($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure javax.crypto.Mac$getInstance$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure javax.crypto.Mac$init$java.security.Key($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$$la$init$ra$$java.lang.CharSequence($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.String$getBytes$($this: ref) returns ($return: ref, $exception: ref);



procedure org.bouncycastle.crypto.generators.SCrypt$generate$byte$lp$$rp$_byte$lp$$rp$_int_int_int_int($in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int, 
    $in_parameter__4: int, 
    $in_parameter__5: int)
   returns ($return: ref, $exception: ref);



procedure java.lang.CharSequence$length$($this: ref) returns ($return: int, $exception: ref);
  modifies $heap;



procedure java.lang.StringBuilder$setCharAt$int_char($this: ref, $in_parameter__0: int, $in_parameter__1: int)
   returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$crc32Sum$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure java.util.zip.CRC32$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.util.zip.CRC32$update$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.util.zip.CRC32$getValue$($this: ref) returns ($return: int, $exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap, $stringSizeHeap;



procedure org.apache.commons.lang3.StringUtils$split$java.lang.String_char($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);



procedure java.util.ArrayList$$la$init$ra$$int($this: ref, $in_parameter__0: int) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPathComponent$java.lang.String_javax.crypto.SecretKey_org.cryptomator.crypto.CryptorIOSupport($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap, $stringSizeHeap;



procedure java.util.List$add$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $heap;



procedure org.apache.commons.lang3.StringUtils$join$java.lang.Iterable_char($in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);



procedure java.lang.StringBuilder$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.StringBuilder$append$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure javax.crypto.Mac$doFinal$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.commons.lang3.ArrayUtils$subarray$byte$lp$$rp$_int_int($in_parameter__0: ref, $in_parameter__1: int, $in_parameter__2: int)
   returns ($return: ref, $exception: ref);



procedure java.nio.ByteBuffer$allocate$int($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.nio.ByteBuffer$put$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.nio.ByteBuffer$array$($this: ref) returns ($return: ref, $exception: ref);



procedure java.lang.String$getBytes$java.nio.charset.Charset($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure javax.crypto.Cipher$doFinal$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.commons.codec.binary.BaseNCodec$encodeAsString$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Long$toHexString$long($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$getMetadata$org.cryptomator.crypto.CryptorIOSupport_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure org.cryptomator.crypto.aes256.LongFilenameMetadata$getOrCreateUuidForEncryptedFilename$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.util.UUID$toString$($this: ref) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$storeMetadata$org.cryptomator.crypto.CryptorIOSupport_java.lang.String_org.cryptomator.crypto.aes256.LongFilenameMetadata($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($exception: ref);
  modifies $objIndex, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPathComponent$java.lang.String_javax.crypto.SecretKey_org.cryptomator.crypto.CryptorIOSupport($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.String$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.lang.String$endsWith$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure org.apache.commons.lang3.StringUtils$removeEnd$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure org.apache.commons.lang3.StringUtils$substringBefore$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure org.apache.commons.lang3.StringUtils$substringAfter$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure java.util.UUID$fromString$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.aes256.LongFilenameMetadata$getEncryptedFilenameForUUID$java.util.UUID($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.apache.commons.lang3.StringUtils$removeEndIgnoreCase$java.lang.String_java.lang.String($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.apache.commons.codec.binary.BaseNCodec$decode$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure org.cryptomator.crypto.CryptorIOSupport$readPathSpecificMetadata$java.lang.String($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.aes256.LongFilenameMetadata$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure com.fasterxml.jackson.databind.ObjectMapper$readValue$byte$lp$$rp$_java.lang.Class($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);



procedure com.fasterxml.jackson.databind.ObjectMapper$writeValueAsBytes$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.CryptorIOSupport$writePathSpecificMetadata$java.lang.String_byte$lp$$rp$($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$authenticateContent$java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$authenticateContent_unsafe$java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$decryptedContentLength$java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.nio.channels.SeekableByteChannel$position$long($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $heap;



procedure javax.crypto.Mac$getMacLength$($this: ref) returns ($return: int, $exception: ref);



procedure java.nio.channels.SeekableByteChannel$read$java.nio.ByteBuffer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $heap;



procedure java.io.IOException$$la$init$ra$$java.lang.String($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.io.SeekableByteChannelInputStream$$la$init$ra$$java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.MacInputStream$$la$init$ra$$java.io.InputStream_javax.crypto.Mac($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure org.apache.commons.io.output.NullOutputStream$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure java.lang.Long$longValue$($this: ref) returns ($return: int, $exception: ref);



procedure org.apache.commons.io.IOUtils$copyLarge$java.io.InputStream_java.io.OutputStream_long_long($in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int)
   returns ($return: int, $exception: ref);



procedure javax.crypto.Mac$doFinal$($this: ref) returns ($return: ref, $exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);
  modifies $objIndex, $heap;



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref);



procedure java.nio.Buffer$capacity$($this: ref) returns ($return: int, $exception: ref);



procedure java.nio.ByteBuffer$wrap$byte$lp$$rp$($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.nio.ByteBuffer$getLong$($this: ref) returns ($return: int, $exception: ref);
  modifies $heap;



procedure java.lang.Long$valueOf$long($in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.lang.IllegalStateException$$la$init$ra$$java.lang.Throwable($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$decryptedFile$java.nio.channels.SeekableByteChannel_java.io.OutputStream($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure javax.crypto.CipherInputStream$$la$init$ra$$java.io.InputStream_javax.crypto.Cipher($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$decryptRange$java.nio.channels.SeekableByteChannel_java.io.OutputStream_long_long($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.nio.ByteBuffer$putLong$int_long($this: ref, $in_parameter__0: int, $in_parameter__1: int)
   returns ($return: ref, $exception: ref);
  modifies $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$encryptFile$java.io.InputStream_java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref);
  modifies $objIndex, $arrSizeHeap, $heap;



procedure java.nio.channels.SeekableByteChannel$truncate$long($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $heap;



procedure java.nio.Buffer$position$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);



procedure java.nio.channels.SeekableByteChannel$write$java.nio.ByteBuffer($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref);
  modifies $heap;



procedure org.cryptomator.crypto.io.SeekableByteChannelOutputStream$$la$init$ra$$java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure org.cryptomator.crypto.aes256.MacOutputStream$$la$init$ra$$java.io.OutputStream_javax.crypto.Mac($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure javax.crypto.CipherOutputStream$$la$init$ra$$java.io.OutputStream_javax.crypto.Cipher($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref);



procedure org.apache.commons.io.IOUtils$copyLarge$java.io.InputStream_java.io.OutputStream($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure java.lang.Math$random$() returns ($return: int, $exception: ref);



procedure java.lang.Math$ceil$double($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure java.io.OutputStream$write$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($exception: ref);



procedure java.io.OutputStream$flush$($this: ref) returns ($exception: ref);



procedure java.nio.ByteBuffer$putLong$long($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$getPayloadFilesFilter$($this: ref) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$$la$clinit$ra$$() returns ($exception: ref);
  modifies int$org.cryptomator.crypto.aes256.Aes256Cryptor$AES_KEY_LENGTH_IN_BITS0, $objIndex, java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260, $heap;



procedure java.security.SecureRandom$getInstance$java.lang.String($in_parameter__0: ref) returns ($return: ref, $exception: ref);



procedure java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref);
  modifies $heap;



procedure java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref);
  modifies $objIndex, $heap;



procedure java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



procedure sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref);



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$1$$la$init$ra$$org.cryptomator.crypto.aes256.Aes256Cryptor($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor$1;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    $heap := $heap[r0, org.cryptomator.crypto.aes256.Aes256Cryptor$org.cryptomator.crypto.aes256.Aes256Cryptor$1$this$0259 := r1];
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    goto block1;

  block1:
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$1$accept$java.nio.file.Path($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $r2: ref;
  var $z0: int;
  var $fakelocal_0: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor$1;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.nio.file.Path;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 640, -1, -1, -1} true;
    $r2 := java.nio.file.PathMatcher$org.cryptomator.crypto.aes256.FileNamingConventions$ENCRYPTED_FILE_GLOB_MATCHER463;
    assert {:sourceloc "Aes256Cryptor.java", 640, -1, -1, -1} true;
    goto anon4_Then, anon4_Else;

  anon4_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon4_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $z0, $exception := java.nio.file.PathMatcher$matches$java.nio.file.Path($r2, r1);
    assert {:sourceloc "Aes256Cryptor.java", 640, -1, -1, -1} true;
    $return := $z0;
    goto block2;

  block2:
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$1$accept$java.lang.Object($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $z0: int;
  var $r2: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor$1;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} !($heap[r1, $type] <: java.nio.file.Path);
    call $fakelocal_0 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon8_Then:
    assume {:partition} $heap[r1, $type] <: java.nio.file.Path;
    $exception := $exception;
    goto anon3;

  anon3:
    $r2 := r1;
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    call $z0, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$1$accept$java.nio.file.Path(r0, $r2);
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    $return := $z0;
    goto block3;

  block3:
    return;

  anon9_Then:
    assume {:partition} $exception != $null;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon7;

  anon10_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var $r10: ref;
  var $i0: int;
  var $r7: ref;
  var $fakelocal_3: ref;
  var $r5: ref;
  var $r8: ref;
  var $r11: ref;
  var $fakelocal_6: ref;
  var $i1: int;
  var $fakelocal_2: ref;
  var r2: ref;
  var $fakelocal_4: ref;
  var $r4: ref;
  var $r6: ref;
  var $r9: ref;
  var $fakelocal_1: ref;
  var $fakelocal_5: ref;
  var r1: ref;
  var $r3: ref;
  var r0: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", 108, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.AbstractCryptor$$la$init$ra$$(r0);
    assert {:sourceloc "Aes256Cryptor.java", 82, -1, -1, -1} true;
    call $fakelocal_0 := $new(com.fasterxml.jackson.databind.ObjectMapper);
    $r3 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 82, -1, -1, -1} true;
    call $exception := com.fasterxml.jackson.databind.ObjectMapper$$la$init$ra$$($r3);
    assert {:sourceloc "Aes256Cryptor.java", 82, -1, -1, -1} true;
    $heap := $heap[r0, com.fasterxml.jackson.databind.ObjectMapper$org.cryptomator.crypto.aes256.Aes256Cryptor$objectMapper261 := $r3];
    assert {:sourceloc "Aes256Cryptor.java", 109, -1, -1, -1} true;
    $r5 := java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260;
    assert {:sourceloc "Aes256Cryptor.java", 109, -1, -1, -1} true;
    $r4 := java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260;
    assert {:sourceloc "Aes256Cryptor.java", 109, -1, -1, -1} true;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_1;
    return;

  anon32_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r6, $exception := java.security.SecureRandom$generateSeed$int($r4, 16);
    assert {:sourceloc "Aes256Cryptor.java", 109, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_2;
    return;

  anon33_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $exception := java.security.SecureRandom$setSeed$byte$lp$$rp$($r5, $r6);
    assert {:sourceloc "Aes256Cryptor.java", 110, -1, -1, -1} true;
    $i0 := int$org.cryptomator.crypto.aes256.Aes256Cryptor$AES_KEY_LENGTH_IN_BITS0;
    assert {:sourceloc "Aes256Cryptor.java", 110, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} 8 == 0;
    call $fakelocal_3 := $new(java.lang.ArithmeticException);
    $exception := $fakelocal_3;
    return;

  anon34_Then:
    assume {:partition} 8 != 0;
    $exception := $exception;
    goto anon9;

  anon9:
    $i1 := $divInt($i0, 8);
    assert {:sourceloc "Aes256Cryptor.java", 110, -1, -1, -1} true;
    call $fakelocal_4 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_4 := $i1];
    r1 := $fakelocal_4;
    goto block4;

  block4:
    assert {:sourceloc "Aes256Cryptor.java", 112, -1, -1, -1} true;
    $r7 := java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260;
    assert {:sourceloc "Aes256Cryptor.java", 112, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} $r7 == $null;
    assert {:sourceloc "Aes256Cryptor.java", 112, -1, -1, -1} true;
    assert {:noverify} true;
    call $exception := $new(java.lang.RuntimeException);
    goto block5;

  block5:
    assert {:sourceloc "Aes256Cryptor.java", 120, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r11 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 118, -1, -1, -1} true;
    r2 := $r11;
    assert {:sourceloc "Aes256Cryptor.java", 118, -1, -1, -1} true;
    call $exception := java.util.Arrays$fill$byte$lp$$rp$_byte(r1, 0);
    assert {:sourceloc "Aes256Cryptor.java", 119, -1, -1, -1} true;
    $exception := r2;
    goto block8;

  block8:
    return;

  anon35_Then:
    assume {:partition} $r7 != $null;
    assert {:sourceloc "Aes256Cryptor.java", 112, -1, -1, -1} true;
    goto anon12;

  anon12:
    call $exception := java.security.SecureRandom$nextBytes$byte$lp$$rp$($r7, r1);
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $exception == $null;
    goto anon16;

  anon16:
    assert {:sourceloc "Aes256Cryptor.java", 113, -1, -1, -1} true;
    call $fakelocal_5 := $new(javax.crypto.spec.SecretKeySpec);
    $r8 := $fakelocal_5;
    assert {:sourceloc "Aes256Cryptor.java", 113, -1, -1, -1} true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($r8, r1, $StringConst0);
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $exception == $null;
    goto anon20;

  anon20:
    assert {:sourceloc "Aes256Cryptor.java", 113, -1, -1, -1} true;
    $heap := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262 := $r8];
    assert {:sourceloc "Aes256Cryptor.java", 115, -1, -1, -1} true;
    $r9 := java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260;
    assert {:sourceloc "Aes256Cryptor.java", 115, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $r9 == $null;
    assert {:sourceloc "Aes256Cryptor.java", 115, -1, -1, -1} true;
    assert {:noverify} true;
    call $exception := $new(java.lang.RuntimeException);
    goto block5;

  anon40_Then:
    assume {:partition} $r9 != $null;
    assert {:sourceloc "Aes256Cryptor.java", 115, -1, -1, -1} true;
    goto anon23;

  anon23:
    call $exception := java.security.SecureRandom$nextBytes$byte$lp$$rp$($r9, r1);
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} $exception == $null;
    goto anon27;

  anon27:
    assert {:sourceloc "Aes256Cryptor.java", 116, -1, -1, -1} true;
    call $fakelocal_6 := $new(javax.crypto.spec.SecretKeySpec);
    $r10 := $fakelocal_6;
    assert {:sourceloc "Aes256Cryptor.java", 116, -1, -1, -1} true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($r10, r1, $StringConst1);
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} $exception == $null;
    goto anon31;

  anon31:
    assert {:sourceloc "Aes256Cryptor.java", 116, -1, -1, -1} true;
    $heap := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263 := $r10];
    goto block6;

  block6:
    assert {:sourceloc "Aes256Cryptor.java", 118, -1, -1, -1} true;
    call $exception := java.util.Arrays$fill$byte$lp$$rp$_byte(r1, 0);
    assert {:sourceloc "Aes256Cryptor.java", 119, -1, -1, -1} true;
    goto block7;

  block7:
    assert {:sourceloc "Aes256Cryptor.java", 120, -1, -1, -1} true;
    goto block8;

  anon43_Then:
    assume {:partition} $exception != $null;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon31;

  anon44_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    $r10 := $null;
    goto block5;

  anon41_Then:
    assume {:partition} $exception != $null;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon27;

  anon42_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block5;

  anon38_Then:
    assume {:partition} $exception != $null;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon20;

  anon39_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    $r8 := $null;
    goto block5;

  anon36_Then:
    assume {:partition} $exception != $null;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon16;

  anon37_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block5;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$$la$init$ra$$java.util.Random($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r2: ref;
  var r3: ref;
  var $fakelocal_2: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var $r6: ref;
  var $fakelocal_3: ref;
  var $fakelocal_0: ref;
  var $r7: ref;
  var $i0: int;
  var $i1: int;
  var r0: ref;
  var $r5: ref;
  var $r4: ref;
  var $fakelocal_4: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.util.Random;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 128, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.AbstractCryptor$$la$init$ra$$(r0);
    assert {:sourceloc "Aes256Cryptor.java", 82, -1, -1, -1} true;
    call $fakelocal_0 := $new(com.fasterxml.jackson.databind.ObjectMapper);
    $r4 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 82, -1, -1, -1} true;
    call $exception := com.fasterxml.jackson.databind.ObjectMapper$$la$init$ra$$($r4);
    assert {:sourceloc "Aes256Cryptor.java", 82, -1, -1, -1} true;
    $heap := $heap[r0, com.fasterxml.jackson.databind.ObjectMapper$org.cryptomator.crypto.aes256.Aes256Cryptor$objectMapper261 := $r4];
    assert {:sourceloc "Aes256Cryptor.java", 129, -1, -1, -1} true;
    $i0 := int$org.cryptomator.crypto.aes256.Aes256Cryptor$AES_KEY_LENGTH_IN_BITS0;
    assert {:sourceloc "Aes256Cryptor.java", 129, -1, -1, -1} true;
    goto anon23_Then, anon23_Else;

  anon23_Else:
    assume {:partition} 8 == 0;
    call $fakelocal_1 := $new(java.lang.ArithmeticException);
    $exception := $fakelocal_1;
    return;

  anon23_Then:
    assume {:partition} 8 != 0;
    $exception := $exception;
    goto anon3;

  anon3:
    $i1 := $divInt($i0, 8);
    assert {:sourceloc "Aes256Cryptor.java", 129, -1, -1, -1} true;
    call $fakelocal_2 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_2 := $i1];
    r2 := $fakelocal_2;
    goto block9;

  block9:
    assert {:sourceloc "Aes256Cryptor.java", 131, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "Aes256Cryptor.java", 131, -1, -1, -1} true;
    assert {:noverify} true;
    call $exception := $new(java.lang.RuntimeException);
    goto block10;

  block10:
    assert {:sourceloc "Aes256Cryptor.java", 139, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r7 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 137, -1, -1, -1} true;
    r3 := $r7;
    assert {:sourceloc "Aes256Cryptor.java", 137, -1, -1, -1} true;
    call $exception := java.util.Arrays$fill$byte$lp$$rp$_byte(r2, 0);
    assert {:sourceloc "Aes256Cryptor.java", 138, -1, -1, -1} true;
    $exception := r3;
    goto block13;

  block13:
    return;

  anon24_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "Aes256Cryptor.java", 131, -1, -1, -1} true;
    goto anon6;

  anon6:
    call $exception := java.util.Random$nextBytes$byte$lp$$rp$(r1, r2);
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} $exception == $null;
    goto anon10;

  anon10:
    assert {:sourceloc "Aes256Cryptor.java", 132, -1, -1, -1} true;
    call $fakelocal_3 := $new(javax.crypto.spec.SecretKeySpec);
    $r5 := $fakelocal_3;
    assert {:sourceloc "Aes256Cryptor.java", 132, -1, -1, -1} true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($r5, r2, $StringConst0);
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} $exception == $null;
    goto anon14;

  anon14:
    assert {:sourceloc "Aes256Cryptor.java", 132, -1, -1, -1} true;
    $heap := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262 := $r5];
    assert {:sourceloc "Aes256Cryptor.java", 134, -1, -1, -1} true;
    call $exception := java.util.Random$nextBytes$byte$lp$$rp$(r1, r2);
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $exception == $null;
    goto anon18;

  anon18:
    assert {:sourceloc "Aes256Cryptor.java", 135, -1, -1, -1} true;
    call $fakelocal_4 := $new(javax.crypto.spec.SecretKeySpec);
    $r6 := $fakelocal_4;
    assert {:sourceloc "Aes256Cryptor.java", 135, -1, -1, -1} true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($r6, r2, $StringConst1);
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $exception == $null;
    goto anon22;

  anon22:
    assert {:sourceloc "Aes256Cryptor.java", 135, -1, -1, -1} true;
    $heap := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263 := $r6];
    goto block11;

  block11:
    assert {:sourceloc "Aes256Cryptor.java", 137, -1, -1, -1} true;
    call $exception := java.util.Arrays$fill$byte$lp$$rp$_byte(r2, 0);
    assert {:sourceloc "Aes256Cryptor.java", 138, -1, -1, -1} true;
    goto block12;

  block12:
    assert {:sourceloc "Aes256Cryptor.java", 139, -1, -1, -1} true;
    goto block13;

  anon31_Then:
    assume {:partition} $exception != $null;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon22;

  anon32_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    $r6 := $null;
    goto block10;

  anon29_Then:
    assume {:partition} $exception != $null;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon18;

  anon30_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block10;

  anon27_Then:
    assume {:partition} $exception != $null;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon14;

  anon28_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    $r5 := $null;
    goto block10;

  anon25_Then:
    assume {:partition} $exception != $null;
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon10;

  anon26_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block10;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$encryptMasterKey$java.io.OutputStream_java.lang.CharSequence($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref)
{
  var $r10: ref;
  var r4: ref;
  var r6: ref;
  var $r13: ref;
  var $i0: int;
  var $i1: int;
  var r7: ref;
  var r15: ref;
  var $fakelocal_3: ref;
  var $fakelocal_1: ref;
  var $r11: ref;
  var $r9: ref;
  var r2: ref;
  var $r12: ref;
  var $fakelocal_2: ref;
  var r14: ref;
  var r5: ref;
  var $r8: ref;
  var r1: ref;
  var $fakelocal_0: ref;
  var r0: ref;
  var r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.io.OutputStream;
    assume $heap[$in_parameter__1, $type] <: java.lang.CharSequence;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    goto block14;

  block14:
    assert {:sourceloc "Aes256Cryptor.java", 148, -1, -1, -1} true;
    call r14, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$randomData$int(r0, 8);
    assert {:sourceloc "Aes256Cryptor.java", 149, -1, -1, -1} true;
    $i0 := int$org.cryptomator.crypto.aes256.Aes256Cryptor$AES_KEY_LENGTH_IN_BITS0;
    assert {:sourceloc "Aes256Cryptor.java", 149, -1, -1, -1} true;
    call r3, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int(r0, r2, r14, 16384, 8, $i0);
    assert {:sourceloc "Aes256Cryptor.java", 152, -1, -1, -1} true;
    call r4, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesKeyWrapCipher$javax.crypto.SecretKey_int(r0, r3, 3);
    assert {:sourceloc "Aes256Cryptor.java", 153, -1, -1, -1} true;
    $r8 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 153, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_0;
    return;

  anon46_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call r5, $exception := javax.crypto.Cipher$wrap$java.security.Key(r4, $r8);
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "Aes256Cryptor.java", 154, -1, -1, -1} true;
    $r9 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263];
    assert {:sourceloc "Aes256Cryptor.java", 154, -1, -1, -1} true;
    call r6, $exception := javax.crypto.Cipher$wrap$java.security.Key(r4, $r9);
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} $exception == $null;
    goto anon11;

  anon11:
    assert {:sourceloc "Aes256Cryptor.java", 157, -1, -1, -1} true;
    call $fakelocal_1 := $new(org.cryptomator.crypto.aes256.KeyFile);
    $r10 := $fakelocal_1;
    assert {:sourceloc "Aes256Cryptor.java", 157, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.KeyFile$$la$init$ra$$($r10);
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} $exception == $null;
    goto anon15;

  anon15:
    assert {:sourceloc "Aes256Cryptor.java", 157, -1, -1, -1} true;
    r7 := $r10;
    assert {:sourceloc "Aes256Cryptor.java", 158, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.KeyFile$setScryptSalt$byte$lp$$rp$(r7, r14);
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} $exception == $null;
    goto anon19;

  anon19:
    assert {:sourceloc "Aes256Cryptor.java", 159, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.KeyFile$setScryptCostParam$int(r7, 16384);
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} $exception == $null;
    goto anon23;

  anon23:
    assert {:sourceloc "Aes256Cryptor.java", 160, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.KeyFile$setScryptBlockSize$int(r7, 8);
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} $exception == $null;
    goto anon27;

  anon27:
    assert {:sourceloc "Aes256Cryptor.java", 161, -1, -1, -1} true;
    $i1 := int$org.cryptomator.crypto.aes256.Aes256Cryptor$AES_KEY_LENGTH_IN_BITS0;
    assert {:sourceloc "Aes256Cryptor.java", 161, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.KeyFile$setKeyLength$int(r7, $i1);
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} $exception == $null;
    goto anon31;

  anon31:
    assert {:sourceloc "Aes256Cryptor.java", 162, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.KeyFile$setPrimaryMasterKey$byte$lp$$rp$(r7, r5);
    goto anon61_Then, anon61_Else;

  anon61_Else:
    assume {:partition} $exception == $null;
    goto anon35;

  anon35:
    assert {:sourceloc "Aes256Cryptor.java", 163, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.KeyFile$setHMacMasterKey$byte$lp$$rp$(r7, r6);
    goto anon63_Then, anon63_Else;

  anon63_Else:
    assume {:partition} $exception == $null;
    goto anon39;

  anon39:
    assert {:sourceloc "Aes256Cryptor.java", 164, -1, -1, -1} true;
    $r11 := $heap[r0, com.fasterxml.jackson.databind.ObjectMapper$org.cryptomator.crypto.aes256.Aes256Cryptor$objectMapper261];
    assert {:sourceloc "Aes256Cryptor.java", 164, -1, -1, -1} true;
    goto anon65_Then, anon65_Else;

  anon65_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_2;
    return;

  anon65_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon42;

  anon42:
    call $exception := com.fasterxml.jackson.databind.ObjectMapper$writeValue$java.io.OutputStream_java.lang.Object($r11, r1, r7);
    goto anon66_Then, anon66_Else;

  anon66_Else:
    assume {:partition} $exception == $null;
    goto block16;

  block16:
    assert {:sourceloc "Aes256Cryptor.java", 167, -1, -1, -1} true;
    goto block17;

  block17:
    assert {:sourceloc "Aes256Cryptor.java", 168, -1, -1, -1} true;
    goto block18;

  block18:
    return;

  anon66_Then:
    assume {:partition} $exception != $null;
    goto anon67_Then, anon67_Else;

  anon67_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto block16;

  anon67_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    goto block15;

  block15:
    assert {:sourceloc "Aes256Cryptor.java", 168, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r12 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 165, -1, -1, -1} true;
    r15 := $r12;
    assert {:sourceloc "Aes256Cryptor.java", 166, -1, -1, -1} true;
    call $fakelocal_3 := $new(java.lang.IllegalStateException);
    $r13 := $fakelocal_3;
    assert {:sourceloc "Aes256Cryptor.java", 166, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r13, $StringConst2, r15);
    assert {:sourceloc "Aes256Cryptor.java", 166, -1, -1, -1} true;
    $exception := $r13;
    goto block18;

  anon63_Then:
    assume {:partition} $exception != $null;
    goto anon64_Then, anon64_Else;

  anon64_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon39;

  anon64_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    goto block15;

  anon61_Then:
    assume {:partition} $exception != $null;
    goto anon62_Then, anon62_Else;

  anon62_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon35;

  anon62_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    goto block15;

  anon59_Then:
    assume {:partition} $exception != $null;
    goto anon60_Then, anon60_Else;

  anon60_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon31;

  anon60_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    goto block15;

  anon57_Then:
    assume {:partition} $exception != $null;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon27;

  anon58_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    goto block15;

  anon55_Then:
    assume {:partition} $exception != $null;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon23;

  anon56_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    goto block15;

  anon53_Then:
    assume {:partition} $exception != $null;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon19;

  anon54_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    goto block15;

  anon51_Then:
    assume {:partition} $exception != $null;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon15;

  anon52_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    $r10 := $null;
    goto block15;

  anon49_Then:
    assume {:partition} $exception != $null;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon11;

  anon50_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    goto block15;

  anon47_Then:
    assume {:partition} $exception != $null;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon7;

  anon48_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    goto block15;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$decryptMasterKey$java.io.InputStream_java.lang.CharSequence($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($exception: ref)
{
  var r2: ref;
  var $i1: int;
  var r24: ref;
  var $fakelocal_3: ref;
  var r1: ref;
  var r0: ref;
  var $r10: ref;
  var r4: ref;
  var r26: ref;
  var $i3: int;
  var $r8: ref;
  var r22: ref;
  var $fakelocal_7: ref;
  var $r9: ref;
  var $r11: ref;
  var $r15: ref;
  var $r7: ref;
  var $r12: ref;
  var $fakelocal_0: ref;
  var $fakelocal_9: ref;
  var r3: ref;
  var $fakelocal_6: ref;
  var $i2: int;
  var i0: int;
  var $fakelocal_10: ref;
  var r25: ref;
  var r20: ref;
  var $r17: ref;
  var $i5: int;
  var $fakelocal_4: ref;
  var $fakelocal_5: ref;
  var r6: ref;
  var r5: ref;
  var $fakelocal_2: ref;
  var r23: ref;
  var $fakelocal_8: ref;
  var $i4: int;
  var $r13: ref;
  var r19: ref;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.io.InputStream;
    assume $heap[$in_parameter__1, $type] <: java.lang.CharSequence;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    goto block19;

  block19:
    assert {:sourceloc "Aes256Cryptor.java", 183, -1, -1, -1} true;
    $r7 := $heap[r0, com.fasterxml.jackson.databind.ObjectMapper$org.cryptomator.crypto.aes256.Aes256Cryptor$objectMapper261];
    assert {:sourceloc "Aes256Cryptor.java", 183, -1, -1, -1} true;
    goto anon76_Then, anon76_Else;

  anon76_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_0;
    return;

  anon76_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r8, $exception := com.fasterxml.jackson.databind.ObjectMapper$readValue$java.io.InputStream_java.lang.Class($r7, r1, CC$org$_$cryptomator$_$crypto$_$aes256$_$KeyFile);
    goto anon77_Then, anon77_Else;

  anon77_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "Aes256Cryptor.java", 183, -1, -1, -1} true;
    goto anon79_Then, anon79_Else;

  anon79_Else:
    assume {:partition} !($heap[$r8, $type] <: org.cryptomator.crypto.aes256.KeyFile);
    call $fakelocal_1 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_1;
    return;

  anon79_Then:
    assume {:partition} $heap[$r8, $type] <: org.cryptomator.crypto.aes256.KeyFile;
    $exception := $exception;
    goto anon10;

  anon10:
    r19 := $r8;
    assert {:sourceloc "Aes256Cryptor.java", 186, -1, -1, -1} true;
    call i0, $exception := javax.crypto.Cipher$getMaxAllowedKeyLength$java.lang.String($StringConst0);
    goto anon80_Then, anon80_Else;

  anon80_Else:
    assume {:partition} $exception == $null;
    goto anon14;

  anon14:
    assert {:sourceloc "Aes256Cryptor.java", 187, -1, -1, -1} true;
    goto anon82_Then, anon82_Else;

  anon82_Else:
    assume {:partition} r19 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_2;
    return;

  anon82_Then:
    assume {:partition} r19 != $null;
    $exception := $exception;
    goto anon17;

  anon17:
    call $i1, $exception := org.cryptomator.crypto.aes256.KeyFile$getKeyLength$(r19);
    goto anon83_Then, anon83_Else;

  anon83_Else:
    assume {:partition} $exception == $null;
    goto anon21;

  anon21:
    assert {:sourceloc "Aes256Cryptor.java", 187, -1, -1, -1} true;
    goto anon85_Then, anon85_Else;

  anon85_Else:
    assume {:partition} i0 < $i1;
    assert {:sourceloc "Aes256Cryptor.java", 187, -1, -1, -1} {:comment "elseblock"} true;
    goto anon24;

  anon24:
    assert {:sourceloc "Aes256Cryptor.java", 188, -1, -1, -1} true;
    call $fakelocal_3 := $new(org.cryptomator.crypto.exceptions.UnsupportedKeyLengthException);
    r22 := $fakelocal_3;
    assert {:sourceloc "Aes256Cryptor.java", 188, -1, -1, -1} true;
    call $i5, $exception := org.cryptomator.crypto.aes256.KeyFile$getKeyLength$(r19);
    goto anon86_Then, anon86_Else;

  anon86_Else:
    assume {:partition} $exception == $null;
    goto anon28;

  anon28:
    assert {:sourceloc "Aes256Cryptor.java", 188, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.exceptions.UnsupportedKeyLengthException$$la$init$ra$$int_int(r22, $i5, i0);
    goto anon88_Then, anon88_Else;

  anon88_Else:
    assume {:partition} $exception == $null;
    goto anon32;

  anon32:
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    goto anon90_Then, anon90_Else;

  anon90_Else:
    assume {:partition} !($heap[r22, $type] <: java.lang.Throwable);
    call $fakelocal_4 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_4;
    return;

  anon90_Then:
    assume {:partition} $heap[r22, $type] <: java.lang.Throwable;
    $exception := $exception;
    goto anon35;

  anon35:
    r25 := r22;
    assert {:sourceloc "Aes256Cryptor.java", 188, -1, -1, -1} true;
    $exception := r25;
    goto block25;

  block25:
    return;

  anon88_Then:
    assume {:partition} $exception != $null;
    goto anon89_Then, anon89_Else;

  anon89_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon32;

  anon89_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    r22 := $null;
    goto block20;

  block20:
    assert {:sourceloc "Aes256Cryptor.java", 205, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r17 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 202, -1, -1, -1} true;
    r20 := $r17;
    assert {:sourceloc "Aes256Cryptor.java", 203, -1, -1, -1} true;
    call $fakelocal_8 := $new(java.lang.IllegalStateException);
    r23 := $fakelocal_8;
    assert {:sourceloc "Aes256Cryptor.java", 203, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable(r23, $StringConst3, r20);
    assert {:sourceloc "Aes256Cryptor.java", 203, -1, -1, -1} true;
    $exception := r23;
    goto block25;

  anon86_Then:
    assume {:partition} $exception != $null;
    goto anon87_Then, anon87_Else;

  anon87_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon28;

  anon87_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    goto block20;

  anon85_Then:
    assume {:partition} $i1 <= i0;
    assert {:sourceloc "Aes256Cryptor.java", 187, -1, -1, -1} {:comment "thenblock"} true;
    goto block21;

  block21:
    assert {:sourceloc "Aes256Cryptor.java", 192, -1, -1, -1} true;
    call $r9, $exception := org.cryptomator.crypto.aes256.KeyFile$getScryptSalt$(r19);
    goto anon91_Then, anon91_Else;

  anon91_Else:
    assume {:partition} $exception == $null;
    goto anon39;

  anon39:
    assert {:sourceloc "Aes256Cryptor.java", 192, -1, -1, -1} true;
    call $i2, $exception := org.cryptomator.crypto.aes256.KeyFile$getScryptCostParam$(r19);
    goto anon93_Then, anon93_Else;

  anon93_Else:
    assume {:partition} $exception == $null;
    goto anon43;

  anon43:
    assert {:sourceloc "Aes256Cryptor.java", 192, -1, -1, -1} true;
    call $i3, $exception := org.cryptomator.crypto.aes256.KeyFile$getScryptBlockSize$(r19);
    goto anon95_Then, anon95_Else;

  anon95_Else:
    assume {:partition} $exception == $null;
    goto anon47;

  anon47:
    assert {:sourceloc "Aes256Cryptor.java", 192, -1, -1, -1} true;
    $i4 := int$org.cryptomator.crypto.aes256.Aes256Cryptor$AES_KEY_LENGTH_IN_BITS0;
    assert {:sourceloc "Aes256Cryptor.java", 192, -1, -1, -1} true;
    call r3, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int(r0, r2, $r9, $i2, $i3, $i4);
    assert {:sourceloc "Aes256Cryptor.java", 195, -1, -1, -1} true;
    call r4, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesKeyWrapCipher$javax.crypto.SecretKey_int(r0, r3, 4);
    assert {:sourceloc "Aes256Cryptor.java", 196, -1, -1, -1} true;
    call $r10, $exception := org.cryptomator.crypto.aes256.KeyFile$getPrimaryMasterKey$(r19);
    goto anon97_Then, anon97_Else;

  anon97_Else:
    assume {:partition} $exception == $null;
    goto anon51;

  anon51:
    assert {:sourceloc "Aes256Cryptor.java", 196, -1, -1, -1} true;
    goto anon99_Then, anon99_Else;

  anon99_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_5;
    return;

  anon99_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon54;

  anon54:
    call $r11, $exception := javax.crypto.Cipher$unwrap$byte$lp$$rp$_java.lang.String_int(r4, $r10, $StringConst0, 3);
    goto anon100_Then, anon100_Else;

  anon100_Else:
    assume {:partition} $exception == $null;
    goto anon58;

  anon58:
    assert {:sourceloc "Aes256Cryptor.java", 196, -1, -1, -1} true;
    goto anon102_Then, anon102_Else;

  anon102_Else:
    assume {:partition} !($heap[$r11, $type] <: javax.crypto.SecretKey);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_6;
    return;

  anon102_Then:
    assume {:partition} $heap[$r11, $type] <: javax.crypto.SecretKey;
    $exception := $exception;
    goto anon61;

  anon61:
    r5 := $r11;
    assert {:sourceloc "Aes256Cryptor.java", 197, -1, -1, -1} true;
    call $r12, $exception := org.cryptomator.crypto.aes256.KeyFile$getHMacMasterKey$(r19);
    goto anon103_Then, anon103_Else;

  anon103_Else:
    assume {:partition} $exception == $null;
    goto anon65;

  anon65:
    assert {:sourceloc "Aes256Cryptor.java", 197, -1, -1, -1} true;
    call $r13, $exception := javax.crypto.Cipher$unwrap$byte$lp$$rp$_java.lang.String_int(r4, $r12, $StringConst1, 3);
    goto anon105_Then, anon105_Else;

  anon105_Else:
    assume {:partition} $exception == $null;
    goto anon69;

  anon69:
    assert {:sourceloc "Aes256Cryptor.java", 197, -1, -1, -1} true;
    goto anon107_Then, anon107_Else;

  anon107_Else:
    assume {:partition} !($heap[$r13, $type] <: javax.crypto.SecretKey);
    call $fakelocal_7 := $new(java.lang.ClassCastException);
    $exception := $fakelocal_7;
    return;

  anon107_Then:
    assume {:partition} $heap[$r13, $type] <: javax.crypto.SecretKey;
    $exception := $exception;
    goto anon72;

  anon72:
    r6 := $r13;
    assert {:sourceloc "Aes256Cryptor.java", 200, -1, -1, -1} true;
    $heap := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262 := r5];
    assert {:sourceloc "Aes256Cryptor.java", 201, -1, -1, -1} true;
    $heap := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263 := r6];
    goto block23;

  block23:
    assert {:sourceloc "Aes256Cryptor.java", 206, -1, -1, -1} true;
    goto block24;

  block24:
    assert {:sourceloc "Aes256Cryptor.java", 207, -1, -1, -1} true;
    goto block25;

  anon105_Then:
    assume {:partition} $exception != $null;
    goto anon106_Then, anon106_Else;

  anon106_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon69;

  anon106_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block20;

  anon103_Then:
    assume {:partition} $exception != $null;
    goto anon104_Then, anon104_Else;

  anon104_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon65;

  anon104_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    goto block20;

  anon100_Then:
    assume {:partition} $exception != $null;
    goto anon101_Then, anon101_Else;

  anon101_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon58;

  anon101_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block20;

  anon97_Then:
    assume {:partition} $exception != $null;
    goto anon98_Then, anon98_Else;

  anon98_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon51;

  anon98_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    goto block20;

  anon95_Then:
    assume {:partition} $exception != $null;
    goto anon96_Then, anon96_Else;

  anon96_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon47;

  anon96_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    goto block20;

  anon93_Then:
    assume {:partition} $exception != $null;
    goto anon94_Then, anon94_Else;

  anon94_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon43;

  anon94_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    goto block20;

  anon91_Then:
    assume {:partition} $exception != $null;
    goto anon92_Then, anon92_Else;

  anon92_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon39;

  anon92_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    goto block20;

  anon83_Then:
    assume {:partition} $exception != $null;
    goto anon84_Then, anon84_Else;

  anon84_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon21;

  anon84_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    goto block20;

  anon80_Then:
    assume {:partition} $exception != $null;
    goto anon81_Then, anon81_Else;

  anon81_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon14;

  anon81_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block20;

  anon77_Then:
    assume {:partition} $exception != $null;
    goto anon78_Then, anon78_Else;

  anon78_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon7;

  anon78_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    assert {:clone} true;
    goto block20;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$swipeSensitiveDataInternal$($this: ref) returns ($exception: ref)
{
  var $r1: ref;
  var $r2: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", 211, -1, -1, -1} true;
    $r1 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 211, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$destroyQuietly$javax.security.auth.Destroyable(r0, $r1);
    assert {:sourceloc "Aes256Cryptor.java", 212, -1, -1, -1} true;
    $r2 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263];
    assert {:sourceloc "Aes256Cryptor.java", 212, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$destroyQuietly$javax.security.auth.Destroyable(r0, $r2);
    assert {:sourceloc "Aes256Cryptor.java", 213, -1, -1, -1} true;
    goto block26;

  block26:
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$destroyQuietly$javax.security.auth.Destroyable($this: ref, $in_parameter__0: ref) returns ($exception: ref)
{
  var r1: ref;
  var r0: ref;
  var $r3: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: javax.security.auth.Destroyable;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    goto block27;

  block27:
    assert {:sourceloc "Aes256Cryptor.java", 217, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_0;
    return;

  anon7_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $exception := javax.security.auth.Destroyable$destroy$(r1);
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $exception == $null;
    goto block29;

  block29:
    assert {:sourceloc "Aes256Cryptor.java", 220, -1, -1, -1} true;
    goto block30;

  block30:
    assert {:sourceloc "Aes256Cryptor.java", 221, -1, -1, -1} true;
    goto block31;

  block31:
    return;

  anon8_Then:
    assume {:partition} $exception != $null;
    goto anon9_Then, anon9_Else;

  anon9_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.security.auth.DestroyFailedException);
    assert {:clone} true;
    goto block29;

  anon9_Then:
    assume {:partition} $heap[$exception, $type] <: javax.security.auth.DestroyFailedException;
    goto block28;

  block28:
    assert {:sourceloc "Aes256Cryptor.java", 221, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r3 := $exception;
    goto block30;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$aesKeyWrapCipher$javax.crypto.SecretKey_int($this: ref, $in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var i0: int;
  var $fakelocal_2: ref;
  var $r5: ref;
  var r7: ref;
  var $fakelocal_1: ref;
  var $r2: ref;
  var r1: ref;
  var $r4: ref;
  var r0: ref;
  var r6: ref;
  var r8: ref;
  var $r3: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: javax.crypto.SecretKey;
    assume $heap[$return, $type] <: javax.crypto.Cipher;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    goto block32;

  block32:
    assert {:sourceloc "Aes256Cryptor.java", 225, -1, -1, -1} true;
    call r6, $exception := javax.crypto.Cipher$getInstance$java.lang.String($StringConst4);
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "Aes256Cryptor.java", 226, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} r6 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon13_Then:
    assume {:partition} r6 != $null;
    $exception := $exception;
    goto anon7;

  anon7:
    call $exception := javax.crypto.Cipher$init$int_java.security.Key(r6, i0, r1);
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} $exception == $null;
    goto block35;

  block35:
    assert {:sourceloc "Aes256Cryptor.java", 227, -1, -1, -1} true;
    $return := r6;
    goto block36;

  block36:
    return;

  anon14_Then:
    assume {:partition} $exception != $null;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto block35;

  anon15_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    $return := $null;
    goto block34;

  block34:
    assert {:sourceloc "Aes256Cryptor.java", 231, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r4 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 228, -1, -1, -1} true;
    r7 := $r4;
    assert {:sourceloc "Aes256Cryptor.java", 229, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.IllegalArgumentException);
    $r5 := $fakelocal_1;
    assert {:sourceloc "Aes256Cryptor.java", 229, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String_java.lang.Throwable($r5, $StringConst5, r7);
    assert {:sourceloc "Aes256Cryptor.java", 229, -1, -1, -1} true;
    $exception := $r5;
    goto block36;

  anon11_Then:
    assume {:partition} $exception != $null;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.NoSuchPaddingException);
    assert {:clone} true;
    goto anon4;

  anon12_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.NoSuchPaddingException;
    $return := $null;
    goto block33;

  block33:
    assert {:sourceloc "Aes256Cryptor.java", 227, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r2 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 230, -1, -1, -1} true;
    r8 := $r2;
    assert {:sourceloc "Aes256Cryptor.java", 231, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.IllegalStateException);
    $r3 := $fakelocal_2;
    assert {:sourceloc "Aes256Cryptor.java", 231, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r3, $StringConst6, r8);
    assert {:sourceloc "Aes256Cryptor.java", 231, -1, -1, -1} true;
    $exception := $r3;
    goto block36;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$aesCtrCipher$javax.crypto.SecretKey_byte$lp$$rp$_int($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: int)
   returns ($return: ref, $exception: ref)
{
  var r8: ref;
  var $r7: ref;
  var $r6: ref;
  var r2: ref;
  var $fakelocal_2: ref;
  var r10: ref;
  var $r3: ref;
  var $r5: ref;
  var $r4: ref;
  var r9: ref;
  var $fakelocal_3: ref;
  var i0: int;
  var r1: ref;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: javax.crypto.SecretKey;
    assume $heap[$return, $type] <: javax.crypto.Cipher;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__2;
    goto block37;

  block37:
    assert {:sourceloc "Aes256Cryptor.java", 237, -1, -1, -1} true;
    call r8, $exception := javax.crypto.Cipher$getInstance$java.lang.String($StringConst7);
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "Aes256Cryptor.java", 238, -1, -1, -1} true;
    call $fakelocal_0 := $new(javax.crypto.spec.IvParameterSpec);
    $r3 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 238, -1, -1, -1} true;
    call $exception := javax.crypto.spec.IvParameterSpec$$la$init$ra$$byte$lp$$rp$($r3, r2);
    goto anon17_Then, anon17_Else;

  anon17_Else:
    assume {:partition} $exception == $null;
    goto anon8;

  anon8:
    assert {:sourceloc "Aes256Cryptor.java", 238, -1, -1, -1} true;
    goto anon19_Then, anon19_Else;

  anon19_Else:
    assume {:partition} r8 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon19_Then:
    assume {:partition} r8 != $null;
    $exception := $exception;
    goto anon11;

  anon11:
    call $exception := javax.crypto.Cipher$init$int_java.security.Key_java.security.spec.AlgorithmParameterSpec(r8, i0, r1, $r3);
    goto anon20_Then, anon20_Else;

  anon20_Else:
    assume {:partition} $exception == $null;
    goto block40;

  block40:
    assert {:sourceloc "Aes256Cryptor.java", 239, -1, -1, -1} true;
    $return := r8;
    goto block41;

  block41:
    return;

  anon20_Then:
    assume {:partition} $exception != $null;
    goto anon21_Then, anon21_Else;

  anon21_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidAlgorithmParameterException);
    assert {:clone} true;
    goto block40;

  anon21_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidAlgorithmParameterException;
    $return := $null;
    goto block38;

  block38:
    assert {:sourceloc "Aes256Cryptor.java", 239, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r4 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 242, -1, -1, -1} true;
    r10 := $r4;
    assert {:sourceloc "Aes256Cryptor.java", 243, -1, -1, -1} true;
    call $fakelocal_3 := $new(java.lang.IllegalStateException);
    $r5 := $fakelocal_3;
    assert {:sourceloc "Aes256Cryptor.java", 243, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r5, $StringConst8, r10);
    assert {:sourceloc "Aes256Cryptor.java", 243, -1, -1, -1} true;
    $exception := $r5;
    goto block41;

  anon17_Then:
    assume {:partition} $exception != $null;
    goto anon18_Then, anon18_Else;

  anon18_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto anon8;

  anon18_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    assert {:clone} true;
    $r3 := $null;
    goto block39;

  block39:
    assert {:sourceloc "Aes256Cryptor.java", 243, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r6 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 240, -1, -1, -1} true;
    r9 := $r6;
    assert {:sourceloc "Aes256Cryptor.java", 241, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.IllegalArgumentException);
    $r7 := $fakelocal_2;
    assert {:sourceloc "Aes256Cryptor.java", 241, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String_java.lang.Throwable($r7, $StringConst5, r9);
    assert {:sourceloc "Aes256Cryptor.java", 241, -1, -1, -1} true;
    $exception := $r7;
    goto block41;

  anon15_Then:
    assume {:partition} $exception != $null;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.NoSuchPaddingException);
    assert {:clone} true;
    goto anon4;

  anon16_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.NoSuchPaddingException;
    $return := $null;
    goto block38;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$aesEcbCipher$javax.crypto.SecretKey_int($this: ref, $in_parameter__0: ref, $in_parameter__1: int)
   returns ($return: ref, $exception: ref)
{
  var i0: int;
  var r7: ref;
  var $r4: ref;
  var $r3: ref;
  var $r5: ref;
  var r6: ref;
  var $r2: ref;
  var $fakelocal_2: ref;
  var r0: ref;
  var $fakelocal_0: ref;
  var r1: ref;
  var $fakelocal_1: ref;
  var r8: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: javax.crypto.SecretKey;
    assume $heap[$return, $type] <: javax.crypto.Cipher;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__1;
    goto block42;

  block42:
    assert {:sourceloc "Aes256Cryptor.java", 249, -1, -1, -1} true;
    call r6, $exception := javax.crypto.Cipher$getInstance$java.lang.String($StringConst9);
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "Aes256Cryptor.java", 250, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} r6 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon13_Then:
    assume {:partition} r6 != $null;
    $exception := $exception;
    goto anon7;

  anon7:
    call $exception := javax.crypto.Cipher$init$int_java.security.Key(r6, i0, r1);
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} $exception == $null;
    goto block45;

  block45:
    assert {:sourceloc "Aes256Cryptor.java", 251, -1, -1, -1} true;
    $return := r6;
    goto block46;

  block46:
    return;

  anon14_Then:
    assume {:partition} $exception != $null;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto block45;

  anon15_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    $return := $null;
    goto block44;

  block44:
    assert {:sourceloc "Aes256Cryptor.java", 255, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r4 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 252, -1, -1, -1} true;
    r7 := $r4;
    assert {:sourceloc "Aes256Cryptor.java", 253, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.IllegalArgumentException);
    $r5 := $fakelocal_1;
    assert {:sourceloc "Aes256Cryptor.java", 253, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String_java.lang.Throwable($r5, $StringConst5, r7);
    assert {:sourceloc "Aes256Cryptor.java", 253, -1, -1, -1} true;
    $exception := $r5;
    goto block46;

  anon11_Then:
    assume {:partition} $exception != $null;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.NoSuchPaddingException);
    assert {:clone} true;
    goto anon4;

  anon12_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.NoSuchPaddingException;
    $return := $null;
    goto block43;

  block43:
    assert {:sourceloc "Aes256Cryptor.java", 251, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r2 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 254, -1, -1, -1} true;
    r8 := $r2;
    assert {:sourceloc "Aes256Cryptor.java", 255, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.AssertionError);
    $r3 := $fakelocal_2;
    assert {:sourceloc "Aes256Cryptor.java", 255, -1, -1, -1} true;
    call $exception := java.lang.AssertionError$$la$init$ra$$java.lang.String_java.lang.Throwable($r3, $StringConst10, r8);
    assert {:sourceloc "Aes256Cryptor.java", 255, -1, -1, -1} true;
    $exception := $r3;
    goto block46;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$hmacSha256$javax.crypto.SecretKey($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r5: ref;
  var r0: ref;
  var r7: ref;
  var $r4: ref;
  var r1: ref;
  var $fakelocal_1: ref;
  var $r3: ref;
  var r6: ref;
  var $fakelocal_2: ref;
  var $r2: ref;
  var $fakelocal_0: ref;
  var r8: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: javax.crypto.Mac;
    assume $heap[$in_parameter__0, $type] <: javax.crypto.SecretKey;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    goto block47;

  block47:
    assert {:sourceloc "Aes256Cryptor.java", 262, -1, -1, -1} true;
    call r6, $exception := javax.crypto.Mac$getInstance$java.lang.String($StringConst1);
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "Aes256Cryptor.java", 263, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} r6 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon13_Then:
    assume {:partition} r6 != $null;
    $exception := $exception;
    goto anon7;

  anon7:
    call $exception := javax.crypto.Mac$init$java.security.Key(r6, r1);
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} $exception == $null;
    goto block50;

  block50:
    assert {:sourceloc "Aes256Cryptor.java", 264, -1, -1, -1} true;
    $return := r6;
    goto block51;

  block51:
    return;

  anon14_Then:
    assume {:partition} $exception != $null;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.InvalidKeyException);
    assert {:clone} true;
    goto block50;

  anon15_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.InvalidKeyException;
    $return := $null;
    goto block49;

  block49:
    assert {:sourceloc "Aes256Cryptor.java", 266, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r4 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 267, -1, -1, -1} true;
    r8 := $r4;
    assert {:sourceloc "Aes256Cryptor.java", 268, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.lang.IllegalArgumentException);
    $r5 := $fakelocal_2;
    assert {:sourceloc "Aes256Cryptor.java", 268, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String_java.lang.Throwable($r5, $StringConst12, r8);
    assert {:sourceloc "Aes256Cryptor.java", 268, -1, -1, -1} true;
    $exception := $r5;
    goto block51;

  anon11_Then:
    assume {:partition} $exception != $null;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon4;

  anon12_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    $return := $null;
    goto block48;

  block48:
    assert {:sourceloc "Aes256Cryptor.java", 264, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r2 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 265, -1, -1, -1} true;
    r7 := $r2;
    assert {:sourceloc "Aes256Cryptor.java", 266, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.AssertionError);
    $r3 := $fakelocal_1;
    assert {:sourceloc "Aes256Cryptor.java", 266, -1, -1, -1} true;
    call $exception := java.lang.AssertionError$$la$init$ra$$java.lang.String_java.lang.Throwable($r3, $StringConst11, r7);
    assert {:sourceloc "Aes256Cryptor.java", 266, -1, -1, -1} true;
    $exception := $r3;
    goto block51;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$randomData$int($this: ref, $in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $r5: ref;
  var $fakelocal_1: ref;
  var $fakelocal_0: ref;
  var $r2: ref;
  var $r4: ref;
  var r0: ref;
  var i0: int;
  var $r3: ref;
  var $fakelocal_3: ref;
  var r1: ref;
  var $fakelocal_2: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 273, -1, -1, -1} true;
    call $fakelocal_0 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_0 := i0];
    r1 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 274, -1, -1, -1} true;
    $r3 := java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260;
    assert {:sourceloc "Aes256Cryptor.java", 274, -1, -1, -1} true;
    $r2 := java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260;
    assert {:sourceloc "Aes256Cryptor.java", 274, -1, -1, -1} true;
    goto anon10_Then, anon10_Else;

  anon10_Else:
    assume {:partition} $r2 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon10_Then:
    assume {:partition} $r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r4, $exception := java.security.SecureRandom$generateSeed$int($r2, 16);
    assert {:sourceloc "Aes256Cryptor.java", 274, -1, -1, -1} true;
    goto anon11_Then, anon11_Else;

  anon11_Else:
    assume {:partition} $r3 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon11_Then:
    assume {:partition} $r3 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $exception := java.security.SecureRandom$setSeed$byte$lp$$rp$($r3, $r4);
    assert {:sourceloc "Aes256Cryptor.java", 275, -1, -1, -1} true;
    $r5 := java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260;
    assert {:sourceloc "Aes256Cryptor.java", 275, -1, -1, -1} true;
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon12_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $exception := java.security.SecureRandom$nextBytes$byte$lp$$rp$($r5, r1);
    assert {:sourceloc "Aes256Cryptor.java", 276, -1, -1, -1} true;
    $return := r1;
    goto block52;

  block52:
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int, 
    $in_parameter__4: int)
   returns ($return: ref, $exception: ref)
{
  var $r11: ref;
  var i7: int;
  var $r9: ref;
  var i0: int;
  var r5: ref;
  var $i3: int;
  var $fakelocal_0: ref;
  var r2: ref;
  var i2: int;
  var i1: int;
  var $fakelocal_2: ref;
  var $i5: int;
  var r7: ref;
  var r1: ref;
  var $r10: ref;
  var $i4: int;
  var r4: ref;
  var r0: ref;
  var $r8: ref;
  var r6: ref;
  var i6: int;
  var $fakelocal_3: ref;
  var r3: ref;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: javax.crypto.SecretKey;
    assume $heap[$in_parameter__0, $type] <: java.lang.CharSequence;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    i0 := $in_parameter__2;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    i1 := $in_parameter__3;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    i2 := $in_parameter__4;
    assert {:sourceloc "Aes256Cryptor.java", 281, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.StringBuilder);
    $r8 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 281, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$java.lang.CharSequence($r8, r1);
    assert {:sourceloc "Aes256Cryptor.java", 281, -1, -1, -1} true;
    r3 := $r8;
    assert {:sourceloc "Aes256Cryptor.java", 282, -1, -1, -1} true;
    call $r9, $exception := java.lang.StringBuilder$toString$(r3);
    assert {:sourceloc "Aes256Cryptor.java", 282, -1, -1, -1} true;
    goto anon24_Then, anon24_Else;

  anon24_Else:
    assume {:partition} $r9 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon24_Then:
    assume {:partition} $r9 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call r4, $exception := java.lang.String$getBytes$($r9);
    goto block53;

  block53:
    assert {:sourceloc "Aes256Cryptor.java", 284, -1, -1, -1} true;
    goto anon25_Then, anon25_Else;

  anon25_Else:
    assume {:partition} 8 == 0;
    assert {:sourceloc "Aes256Cryptor.java", 284, -1, -1, -1} true;
    assert {:noverify} true;
    $return := $null;
    call $exception := $new(java.lang.ArithmeticException);
    goto block54;

  block54:
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r11 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 288, -1, -1, -1} true;
    r7 := $r11;
    goto block58;

  block58:
    assert {:sourceloc "Aes256Cryptor.java", 288, -1, -1, -1} true;
    call $exception := java.util.Arrays$fill$byte$lp$$rp$_byte(r4, 0);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    i7 := 0;
    goto block59;

  block59:
    call $exception, i7, $i5 := org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int_loop_block59($exception, i7, $i5, r1, r3);
    goto block59_last;

  anon32_Else:
    assume {:partition} $i5 > i7;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon23;

  anon23:
    assert {:sourceloc "Aes256Cryptor.java", 290, -1, -1, -1} {:clone} true;
    call $exception := java.lang.StringBuilder$setCharAt$int_char(r3, i7, 0);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    i7 := i7 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    goto anon23_dummy;

  anon32_Then:
    assume {:partition} i7 >= $i5;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block60;

  block60:
    assert {:sourceloc "Aes256Cryptor.java", 292, -1, -1, -1} true;
    $exception := r7;
    goto block61;

  block61:
    return;

  anon25_Then:
    assume {:partition} 8 != 0;
    assert {:sourceloc "Aes256Cryptor.java", 284, -1, -1, -1} true;
    goto anon6;

  anon6:
    $i3 := $divInt(i2, 8);
    assert {:sourceloc "Aes256Cryptor.java", 284, -1, -1, -1} true;
    call r5, $exception := org.bouncycastle.crypto.generators.SCrypt$generate$byte$lp$$rp$_byte$lp$$rp$_int_int_int_int(r4, r2, i0, i1, 1, $i3);
    goto anon26_Then, anon26_Else;

  anon26_Else:
    assume {:partition} $exception == $null;
    goto anon10;

  anon10:
    assert {:sourceloc "Aes256Cryptor.java", 285, -1, -1, -1} true;
    call $fakelocal_2 := $new(javax.crypto.spec.SecretKeySpec);
    $r10 := $fakelocal_2;
    assert {:sourceloc "Aes256Cryptor.java", 285, -1, -1, -1} true;
    call $exception := javax.crypto.spec.SecretKeySpec$$la$init$ra$$byte$lp$$rp$_java.lang.String($r10, r5, $StringConst0);
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} $exception == $null;
    goto anon14;

  anon14:
    assert {:sourceloc "Aes256Cryptor.java", 285, -1, -1, -1} true;
    r6 := $r10;
    goto block55;

  block55:
    assert {:sourceloc "Aes256Cryptor.java", 288, -1, -1, -1} true;
    call $exception := java.util.Arrays$fill$byte$lp$$rp$_byte(r4, 0);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    i6 := 0;
    goto block56;

  block56:
    call $return, $exception, $i4, i6, $fakelocal_3 := org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int_loop_block56($return, $exception, r1, $i4, i6, $fakelocal_3, r3);
    goto block56_last;

  anon30_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon30_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon17;

  anon17:
    call $i4, $exception := java.lang.CharSequence$length$(r1);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $i4 > i6;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon20;

  anon20:
    assert {:sourceloc "Aes256Cryptor.java", 290, -1, -1, -1} {:clone} true;
    call $exception := java.lang.StringBuilder$setCharAt$int_char(r3, i6, 0);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    i6 := i6 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    goto anon20_dummy;

  anon31_Then:
    assume {:partition} i6 >= $i4;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block57;

  block57:
    assert {:sourceloc "Aes256Cryptor.java", 285, -1, -1, -1} true;
    $return := r6;
    goto block61;

  anon28_Then:
    assume {:partition} $exception != $null;
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon14;

  anon29_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    $r10 := $null;
    goto block54;

  anon26_Then:
    assume {:partition} $exception != $null;
    goto anon27_Then, anon27_Else;

  anon27_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.Throwable);
    assert {:clone} true;
    goto anon10;

  anon27_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.Throwable;
    assert {:clone} true;
    goto block54;

  anon23_dummy:
    assume false;
    return;

  block59_last:
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    call $i5, $exception := java.lang.CharSequence$length$(r1);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    goto anon32_Then, anon32_Else;

  anon20_dummy:
    assume false;
    return;

  block56_last:
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    goto anon30_Then, anon30_Else;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$crc32Sum$byte$lp$$rp$($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var $r3: ref;
  var $l0: int;
  var r0: ref;
  var $fakelocal_0: ref;
  var r2: ref;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 296, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.util.zip.CRC32);
    $r3 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 296, -1, -1, -1} true;
    call $exception := java.util.zip.CRC32$$la$init$ra$$($r3);
    assert {:sourceloc "Aes256Cryptor.java", 296, -1, -1, -1} true;
    r2 := $r3;
    assert {:sourceloc "Aes256Cryptor.java", 297, -1, -1, -1} true;
    call $exception := java.util.zip.CRC32$update$byte$lp$$rp$(r2, r1);
    assert {:sourceloc "Aes256Cryptor.java", 298, -1, -1, -1} true;
    call $l0, $exception := java.util.zip.CRC32$getValue$(r2);
    assert {:sourceloc "Aes256Cryptor.java", 298, -1, -1, -1} true;
    $return := $l0;
    goto block62;

  block62:
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: ref)
   returns ($return: ref, $exception: ref)
{
  var $fakelocal_2: ref;
  var $i3: int;
  var r0: ref;
  var $r7: ref;
  var $fakelocal_7: ref;
  var $r10: ref;
  var r17: ref;
  var r5: ref;
  var r6: ref;
  var $r11: ref;
  var r3: ref;
  var $fakelocal_5: ref;
  var $fakelocal_1: ref;
  var $r13: ref;
  var $r9: ref;
  var r16: ref;
  var $fakelocal_3: ref;
  var c1: int;
  var c0: int;
  var $r14: ref;
  var $fakelocal_0: ref;
  var $fakelocal_8: ref;
  var r2: ref;
  var $r12: ref;
  var i2: int;
  var $fakelocal_4: int;
  var $fakelocal_6: ref;
  var i4: int;
  var r1: ref;
  var r4: ref;
  var $r15: ref;
  var $r8: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__3, $type] <: org.cryptomator.crypto.CryptorIOSupport;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    c0 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    c1 := $in_parameter__2;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__3;
    goto block63;

  block63:
    assert {:sourceloc "Aes256Cryptor.java", 304, -1, -1, -1} true;
    call r16, $exception := org.apache.commons.lang3.StringUtils$split$java.lang.String_char(r1, c1);
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "Aes256Cryptor.java", 305, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.util.ArrayList);
    $r7 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 305, -1, -1, -1} true;
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} r16 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon40_Then:
    assume {:partition} r16 != $null;
    $exception := $exception;
    goto anon7;

  anon7:
    $i3 := $arrSizeHeap[r16];
    assert {:sourceloc "Aes256Cryptor.java", 305, -1, -1, -1} true;
    call $exception := java.util.ArrayList$$la$init$ra$$int($r7, $i3);
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} $exception == $null;
    goto anon11;

  anon11:
    assert {:sourceloc "Aes256Cryptor.java", 305, -1, -1, -1} true;
    r3 := $r7;
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    r4 := r16;
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon43_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon14;

  anon14:
    i2 := $arrSizeHeap[r4];
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    i4 := 0;
    goto block65;

  block65:
    call $return, $exception, r5, r6, $r9, $fakelocal_3, $fakelocal_4, i4 := org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport_loop_block65($return, $exception, r0, r5, r6, r3, $r9, $fakelocal_3, r2, i2, $fakelocal_4, i4, r4);
    goto block65_last;

  anon44_Else:
    assume {:partition} i2 > i4;
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "Aes256Cryptor.java", 310, -1, -1, -1} {:clone} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r4] && i4 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon45_Then:
    assume {:partition} i4 < $arrSizeHeap[r4] && i4 >= 0;
    $exception := $exception;
    goto anon20;

  anon20:
    r5 := $refArrHeap[r4][i4];
    assert {:sourceloc "Aes256Cryptor.java", 307, -1, -1, -1} true;
    $r9 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 307, -1, -1, -1} true;
    call r6, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPathComponent$java.lang.String_javax.crypto.SecretKey_org.cryptomator.crypto.CryptorIOSupport(r0, r5, $r9, r2);
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} $exception == $null;
    goto anon24;

  anon24:
    assert {:sourceloc "Aes256Cryptor.java", 308, -1, -1, -1} true;
    call $fakelocal_4, $exception := java.util.List$add$java.lang.Object(r3, r6);
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} $exception == $null;
    goto anon28;

  anon28:
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    goto anon28_dummy;

  anon48_Then:
    assume {:partition} $exception != $null;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon28;

  anon49_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block64;

  block64:
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r10 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 311, -1, -1, -1} true;
    r17 := $r10;
    assert {:sourceloc "Aes256Cryptor.java", 312, -1, -1, -1} true;
    call $fakelocal_5 := $new(java.lang.IllegalStateException);
    $r11 := $fakelocal_5;
    assert {:sourceloc "Aes256Cryptor.java", 312, -1, -1, -1} true;
    call $fakelocal_6 := $new(java.lang.StringBuilder);
    $r12 := $fakelocal_6;
    assert {:sourceloc "Aes256Cryptor.java", 312, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r12);
    assert {:sourceloc "Aes256Cryptor.java", 312, -1, -1, -1} true;
    call $r13, $exception := java.lang.StringBuilder$append$java.lang.String($r12, $StringConst13);
    assert {:sourceloc "Aes256Cryptor.java", 312, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} $r13 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon52_Then:
    assume {:partition} $r13 != $null;
    $exception := $exception;
    goto anon34;

  anon34:
    call $r14, $exception := java.lang.StringBuilder$append$java.lang.String($r13, r1);
    assert {:sourceloc "Aes256Cryptor.java", 312, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} $r14 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_8;
    return;

  anon53_Then:
    assume {:partition} $r14 != $null;
    $exception := $exception;
    goto anon37;

  anon37:
    call $r15, $exception := java.lang.StringBuilder$toString$($r14);
    assert {:sourceloc "Aes256Cryptor.java", 312, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r11, $r15, r17);
    assert {:sourceloc "Aes256Cryptor.java", 312, -1, -1, -1} true;
    $exception := $r11;
    goto block68;

  block68:
    return;

  anon46_Then:
    assume {:partition} $exception != $null;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon24;

  anon47_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    goto block64;

  anon44_Then:
    assume {:partition} i4 >= i2;
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} {:comment "thenblock"} true;
    goto block66;

  block66:
    assert {:sourceloc "Aes256Cryptor.java", 310, -1, -1, -1} {:clone} true;
    call $r8, $exception := org.apache.commons.lang3.StringUtils$join$java.lang.Iterable_char(r3, c0);
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $exception == $null;
    goto block67;

  block67:
    assert {:sourceloc "Aes256Cryptor.java", 310, -1, -1, -1} {:clone} true;
    $return := $r8;
    goto block68;

  anon50_Then:
    assume {:partition} $exception != $null;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto block67;

  anon51_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block64;

  anon41_Then:
    assume {:partition} $exception != $null;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon11;

  anon42_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    $r7 := $null;
    goto block64;

  anon38_Then:
    assume {:partition} $exception != $null;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon4;

  anon39_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block64;

  anon28_dummy:
    assume false;
    return;

  block65_last:
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPathComponent$java.lang.String_javax.crypto.SecretKey_org.cryptomator.crypto.CryptorIOSupport($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var $r28: ref;
  var $r31: ref;
  var $r21: ref;
  var $fakelocal_3: ref;
  var $r44: ref;
  var $fakelocal_10: ref;
  var r12: ref;
  var r3: ref;
  var $r33: ref;
  var r8: ref;
  var r4: ref;
  var $fakelocal_1: ref;
  var $fakelocal_11: ref;
  var $r20: ref;
  var $r43: ref;
  var $fakelocal_17: ref;
  var $r37: ref;
  var $i0: int;
  var $fakelocal_15: ref;
  var $r30: ref;
  var $fakelocal_19: ref;
  var $fakelocal_21: ref;
  var r11: ref;
  var $fakelocal_0: ref;
  var $r26: ref;
  var $fakelocal_16: ref;
  var r5: ref;
  var $r42: ref;
  var $fakelocal_8: ref;
  var $r41: ref;
  var $r16: ref;
  var $r23: ref;
  var $r36: ref;
  var r13: ref;
  var $fakelocal_23: ref;
  var $fakelocal_24: ref;
  var $r25: ref;
  var $l3: int;
  var $r34: ref;
  var $fakelocal_20: ref;
  var $r17: ref;
  var $r40: ref;
  var $fakelocal_22: ref;
  var $r22: ref;
  var r6: ref;
  var $fakelocal_2: ref;
  var $r39: ref;
  var $i1: int;
  var $fakelocal_4: ref;
  var $fakelocal_13: ref;
  var $fakelocal_18: ref;
  var $fakelocal_14: ref;
  var r7: ref;
  var $r35: ref;
  var $r15: ref;
  var $r24: ref;
  var $fakelocal_9: ref;
  var $fakelocal_6: ref;
  var $fakelocal_12: ref;
  var $r27: ref;
  var r1: ref;
  var r0: ref;
  var $i2: int;
  var $r38: ref;
  var r2: ref;
  var r14: ref;
  var $r32: ref;
  var r10: ref;
  var $r19: ref;
  var r9: ref;
  var $fakelocal_7: ref;
  var $fakelocal_5: ref;
  var $r29: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__2, $type] <: org.cryptomator.crypto.CryptorIOSupport;
    assume $heap[$return, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: javax.crypto.SecretKey;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__2;
    assert {:sourceloc "Aes256Cryptor.java", 332, -1, -1, -1} true;
    $r15 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263];
    assert {:sourceloc "Aes256Cryptor.java", 332, -1, -1, -1} true;
    call $r16, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$hmacSha256$javax.crypto.SecretKey(r0, $r15);
    assert {:sourceloc "Aes256Cryptor.java", 332, -1, -1, -1} true;
    goto anon77_Then, anon77_Else;

  anon77_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon77_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r17, $exception := java.lang.String$getBytes$(r1);
    assert {:sourceloc "Aes256Cryptor.java", 332, -1, -1, -1} true;
    goto anon78_Then, anon78_Else;

  anon78_Else:
    assume {:partition} $r16 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon78_Then:
    assume {:partition} $r16 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call r4, $exception := javax.crypto.Mac$doFinal$byte$lp$$rp$($r16, $r17);
    goto anon79_Then, anon79_Else;

  anon79_Else:
    assume {:partition} $exception == $null;
    goto anon10;

  anon10:
    assert {:sourceloc "Aes256Cryptor.java", 333, -1, -1, -1} true;
    call r5, $exception := org.apache.commons.lang3.ArrayUtils$subarray$byte$lp$$rp$_int_int(r4, 0, 10);
    assert {:sourceloc "Aes256Cryptor.java", 334, -1, -1, -1} true;
    call r6, $exception := java.nio.ByteBuffer$allocate$int(16);
    assert {:sourceloc "Aes256Cryptor.java", 335, -1, -1, -1} true;
    goto anon81_Then, anon81_Else;

  anon81_Else:
    assume {:partition} r6 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon81_Then:
    assume {:partition} r6 != $null;
    $exception := $exception;
    goto anon13;

  anon13:
    call $fakelocal_3, $exception := java.nio.ByteBuffer$put$byte$lp$$rp$(r6, r5);
    assert {:sourceloc "Aes256Cryptor.java", 336, -1, -1, -1} true;
    call $r19, $exception := java.nio.ByteBuffer$array$(r6);
    assert {:sourceloc "Aes256Cryptor.java", 336, -1, -1, -1} true;
    call r7, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesCtrCipher$javax.crypto.SecretKey_byte$lp$$rp$_int(r0, r2, $r19, 1);
    assert {:sourceloc "Aes256Cryptor.java", 337, -1, -1, -1} true;
    $r20 := java.nio.charset.Charset$org.apache.commons.io.Charsets$UTF_8464;
    assert {:sourceloc "Aes256Cryptor.java", 337, -1, -1, -1} true;
    call r8, $exception := java.lang.String$getBytes$java.nio.charset.Charset(r1, $r20);
    assert {:sourceloc "Aes256Cryptor.java", 338, -1, -1, -1} true;
    goto anon82_Then, anon82_Else;

  anon82_Else:
    assume {:partition} r7 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon82_Then:
    assume {:partition} r7 != $null;
    $exception := $exception;
    goto anon16;

  anon16:
    call r9, $exception := javax.crypto.Cipher$doFinal$byte$lp$$rp$(r7, r8);
    goto anon83_Then, anon83_Else;

  anon83_Else:
    assume {:partition} $exception == $null;
    goto anon20;

  anon20:
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    call $fakelocal_5 := $new(java.lang.StringBuilder);
    $r21 := $fakelocal_5;
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r21);
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    $r22 := org.apache.commons.codec.binary.BaseNCodec$org.cryptomator.crypto.AbstractCryptor$ENCRYPTED_FILENAME_CODEC465;
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    goto anon85_Then, anon85_Else;

  anon85_Else:
    assume {:partition} $r22 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_6;
    return;

  anon85_Then:
    assume {:partition} $r22 != $null;
    $exception := $exception;
    goto anon23;

  anon23:
    call $r23, $exception := org.apache.commons.codec.binary.BaseNCodec$encodeAsString$byte$lp$$rp$($r22, r5);
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    call $r24, $exception := java.lang.StringBuilder$append$java.lang.String($r21, $r23);
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    goto anon86_Then, anon86_Else;

  anon86_Else:
    assume {:partition} $r24 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon86_Then:
    assume {:partition} $r24 != $null;
    $exception := $exception;
    goto anon26;

  anon26:
    call $r25, $exception := java.lang.StringBuilder$append$java.lang.String($r24, $StringConst14);
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    $r26 := org.apache.commons.codec.binary.BaseNCodec$org.cryptomator.crypto.AbstractCryptor$ENCRYPTED_FILENAME_CODEC465;
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    goto anon87_Then, anon87_Else;

  anon87_Else:
    assume {:partition} $r26 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_8;
    return;

  anon87_Then:
    assume {:partition} $r26 != $null;
    $exception := $exception;
    goto anon29;

  anon29:
    call $r27, $exception := org.apache.commons.codec.binary.BaseNCodec$encodeAsString$byte$lp$$rp$($r26, r9);
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    goto anon88_Then, anon88_Else;

  anon88_Else:
    assume {:partition} $r25 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_9;
    return;

  anon88_Then:
    assume {:partition} $r25 != $null;
    $exception := $exception;
    goto anon32;

  anon32:
    call $r28, $exception := java.lang.StringBuilder$append$java.lang.String($r25, $r27);
    assert {:sourceloc "Aes256Cryptor.java", 339, -1, -1, -1} true;
    goto anon89_Then, anon89_Else;

  anon89_Else:
    assume {:partition} $r28 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_10;
    return;

  anon89_Then:
    assume {:partition} $r28 != $null;
    $exception := $exception;
    goto anon35;

  anon35:
    call r10, $exception := java.lang.StringBuilder$toString$($r28);
    assert {:sourceloc "Aes256Cryptor.java", 341, -1, -1, -1} true;
    $i0 := $stringSizeHeap[r10];
    assert {:sourceloc "Aes256Cryptor.java", 341, -1, -1, -1} true;
    call $fakelocal_11 := $new(java.lang.String);
    $stringSizeHeap := $stringSizeHeap[$fakelocal_11 := 4];
    $r29 := $fakelocal_11;
    assert {:sourceloc "Aes256Cryptor.java", 341, -1, -1, -1} true;
    $i1 := $stringSizeHeap[$r29];
    assert {:sourceloc "Aes256Cryptor.java", 341, -1, -1, -1} true;
    $i2 := $i0 + $i1;
    assert {:sourceloc "Aes256Cryptor.java", 341, -1, -1, -1} true;
    goto anon90_Then, anon90_Else;

  anon90_Else:
    assume {:partition} 250 < $i2;
    assert {:sourceloc "Aes256Cryptor.java", 341, -1, -1, -1} {:comment "elseblock"} true;
    goto anon38;

  anon38:
    assert {:sourceloc "Aes256Cryptor.java", 342, -1, -1, -1} true;
    call $r34, $exception := java.lang.String$getBytes$(r10);
    assert {:sourceloc "Aes256Cryptor.java", 342, -1, -1, -1} true;
    call $l3, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$crc32Sum$byte$lp$$rp$(r0, $r34);
    assert {:sourceloc "Aes256Cryptor.java", 342, -1, -1, -1} true;
    call r11, $exception := java.lang.Long$toHexString$long($l3);
    assert {:sourceloc "Aes256Cryptor.java", 343, -1, -1, -1} true;
    call $fakelocal_12 := $new(java.lang.StringBuilder);
    $r35 := $fakelocal_12;
    assert {:sourceloc "Aes256Cryptor.java", 343, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r35);
    assert {:sourceloc "Aes256Cryptor.java", 343, -1, -1, -1} true;
    call $r36, $exception := java.lang.StringBuilder$append$java.lang.String($r35, r11);
    assert {:sourceloc "Aes256Cryptor.java", 343, -1, -1, -1} true;
    goto anon91_Then, anon91_Else;

  anon91_Else:
    assume {:partition} $r36 == $null;
    call $fakelocal_13 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_13;
    return;

  anon91_Then:
    assume {:partition} $r36 != $null;
    $exception := $exception;
    goto anon41;

  anon41:
    call $r37, $exception := java.lang.StringBuilder$append$java.lang.String($r36, $StringConst15);
    assert {:sourceloc "Aes256Cryptor.java", 343, -1, -1, -1} true;
    goto anon92_Then, anon92_Else;

  anon92_Else:
    assume {:partition} $r37 == $null;
    call $fakelocal_14 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_14;
    return;

  anon92_Then:
    assume {:partition} $r37 != $null;
    $exception := $exception;
    goto anon44;

  anon44:
    call r12, $exception := java.lang.StringBuilder$toString$($r37);
    assert {:sourceloc "Aes256Cryptor.java", 344, -1, -1, -1} true;
    call r13, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$getMetadata$org.cryptomator.crypto.CryptorIOSupport_java.lang.String(r0, r3, r12);
    goto anon93_Then, anon93_Else;

  anon93_Else:
    assume {:partition} $exception == $null;
    goto anon48;

  anon48:
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    call $fakelocal_15 := $new(java.lang.StringBuilder);
    $r38 := $fakelocal_15;
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r38);
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    call $r39, $exception := java.lang.StringBuilder$append$java.lang.String($r38, r11);
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    goto anon95_Then, anon95_Else;

  anon95_Else:
    assume {:partition} $r39 == $null;
    call $fakelocal_16 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_16;
    return;

  anon95_Then:
    assume {:partition} $r39 != $null;
    $exception := $exception;
    goto anon51;

  anon51:
    call $r40, $exception := java.lang.StringBuilder$append$java.lang.String($r39, $StringConst14);
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    goto anon96_Then, anon96_Else;

  anon96_Else:
    assume {:partition} r13 == $null;
    call $fakelocal_17 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_17;
    return;

  anon96_Then:
    assume {:partition} r13 != $null;
    $exception := $exception;
    goto anon54;

  anon54:
    call $r41, $exception := org.cryptomator.crypto.aes256.LongFilenameMetadata$getOrCreateUuidForEncryptedFilename$java.lang.String(r13, r10);
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    goto anon97_Then, anon97_Else;

  anon97_Else:
    assume {:partition} $r41 == $null;
    call $fakelocal_18 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_18;
    return;

  anon97_Then:
    assume {:partition} $r41 != $null;
    $exception := $exception;
    goto anon57;

  anon57:
    call $r42, $exception := java.util.UUID$toString$($r41);
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    goto anon98_Then, anon98_Else;

  anon98_Else:
    assume {:partition} $r40 == $null;
    call $fakelocal_19 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_19;
    return;

  anon98_Then:
    assume {:partition} $r40 != $null;
    $exception := $exception;
    goto anon60;

  anon60:
    call $r43, $exception := java.lang.StringBuilder$append$java.lang.String($r40, $r42);
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    goto anon99_Then, anon99_Else;

  anon99_Else:
    assume {:partition} $r43 == $null;
    call $fakelocal_20 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_20;
    return;

  anon99_Then:
    assume {:partition} $r43 != $null;
    $exception := $exception;
    goto anon63;

  anon63:
    call $r44, $exception := java.lang.StringBuilder$append$java.lang.String($r43, $StringConst16);
    assert {:sourceloc "Aes256Cryptor.java", 345, -1, -1, -1} true;
    goto anon100_Then, anon100_Else;

  anon100_Else:
    assume {:partition} $r44 == $null;
    call $fakelocal_21 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_21;
    return;

  anon100_Then:
    assume {:partition} $r44 != $null;
    $exception := $exception;
    goto anon66;

  anon66:
    call r14, $exception := java.lang.StringBuilder$toString$($r44);
    assert {:sourceloc "Aes256Cryptor.java", 346, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$storeMetadata$org.cryptomator.crypto.CryptorIOSupport_java.lang.String_org.cryptomator.crypto.aes256.LongFilenameMetadata(r0, r3, r12, r13);
    goto anon101_Then, anon101_Else;

  anon101_Else:
    assume {:partition} $exception == $null;
    goto anon70;

  anon70:
    assert {:sourceloc "Aes256Cryptor.java", 347, -1, -1, -1} true;
    $return := r14;
    goto block70;

  block70:
    return;

  anon101_Then:
    assume {:partition} $exception != $null;
    goto anon102_Then, anon102_Else;

  anon102_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon70;

  anon102_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon93_Then:
    assume {:partition} $exception != $null;
    goto anon94_Then, anon94_Else;

  anon94_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon48;

  anon94_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon90_Then:
    assume {:partition} $i2 <= 250;
    assert {:sourceloc "Aes256Cryptor.java", 341, -1, -1, -1} {:comment "thenblock"} true;
    goto block69;

  block69:
    assert {:sourceloc "Aes256Cryptor.java", 349, -1, -1, -1} true;
    call $fakelocal_22 := $new(java.lang.StringBuilder);
    $r30 := $fakelocal_22;
    assert {:sourceloc "Aes256Cryptor.java", 349, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r30);
    assert {:sourceloc "Aes256Cryptor.java", 349, -1, -1, -1} true;
    call $r31, $exception := java.lang.StringBuilder$append$java.lang.String($r30, r10);
    assert {:sourceloc "Aes256Cryptor.java", 349, -1, -1, -1} true;
    goto anon103_Then, anon103_Else;

  anon103_Else:
    assume {:partition} $r31 == $null;
    call $fakelocal_23 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_23;
    return;

  anon103_Then:
    assume {:partition} $r31 != $null;
    $exception := $exception;
    goto anon73;

  anon73:
    call $r32, $exception := java.lang.StringBuilder$append$java.lang.String($r31, $StringConst17);
    assert {:sourceloc "Aes256Cryptor.java", 349, -1, -1, -1} true;
    goto anon104_Then, anon104_Else;

  anon104_Else:
    assume {:partition} $r32 == $null;
    call $fakelocal_24 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_24;
    return;

  anon104_Then:
    assume {:partition} $r32 != $null;
    $exception := $exception;
    goto anon76;

  anon76:
    call $r33, $exception := java.lang.StringBuilder$toString$($r32);
    assert {:sourceloc "Aes256Cryptor.java", 349, -1, -1, -1} true;
    $return := $r33;
    goto block70;

  anon83_Then:
    assume {:partition} $exception != $null;
    goto anon84_Then, anon84_Else;

  anon84_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.BadPaddingException);
    assert {:clone} true;
    goto anon20;

  anon84_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.BadPaddingException;
    $return := $null;
    return;

  anon79_Then:
    assume {:partition} $exception != $null;
    goto anon80_Then, anon80_Else;

  anon80_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalStateException);
    assert {:clone} true;
    goto anon10;

  anon80_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalStateException;
    $return := $null;
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: int, 
    $in_parameter__2: int, 
    $in_parameter__3: ref)
   returns ($return: ref, $exception: ref)
{
  var $fakelocal_2: ref;
  var $fakelocal_3: ref;
  var $r10: ref;
  var $fakelocal_8: ref;
  var $r15: ref;
  var r0: ref;
  var i4: int;
  var $r14: ref;
  var $fakelocal_6: ref;
  var r17: ref;
  var r4: ref;
  var $r9: ref;
  var $fakelocal_7: ref;
  var $fakelocal_1: ref;
  var c0: int;
  var $fakelocal_9: ref;
  var r6: ref;
  var $fakelocal_5: int;
  var r3: ref;
  var $r16: ref;
  var $r8: ref;
  var r5: ref;
  var $r11: ref;
  var $fakelocal_4: ref;
  var c1: int;
  var $i3: int;
  var $r12: ref;
  var r2: ref;
  var r1: ref;
  var $r13: ref;
  var i2: int;
  var r18: ref;
  var $fakelocal_0: ref;
  var $r7: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__3, $type] <: org.cryptomator.crypto.CryptorIOSupport;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    c0 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    c1 := $in_parameter__2;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__3;
    goto block71;

  block71:
    assert {:sourceloc "Aes256Cryptor.java", 356, -1, -1, -1} true;
    call r17, $exception := org.apache.commons.lang3.StringUtils$split$java.lang.String_char(r1, c0);
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "Aes256Cryptor.java", 357, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.util.ArrayList);
    $r7 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 357, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} r17 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_1;
    return;

  anon44_Then:
    assume {:partition} r17 != $null;
    $exception := $exception;
    goto anon7;

  anon7:
    $i3 := $arrSizeHeap[r17];
    assert {:sourceloc "Aes256Cryptor.java", 357, -1, -1, -1} true;
    call $exception := java.util.ArrayList$$la$init$ra$$int($r7, $i3);
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} $exception == $null;
    goto anon11;

  anon11:
    assert {:sourceloc "Aes256Cryptor.java", 357, -1, -1, -1} true;
    r3 := $r7;
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    r4 := r17;
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_2 := $new(java.lang.NullPointerException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon47_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon14;

  anon14:
    i2 := $arrSizeHeap[r4];
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    i4 := 0;
    goto block73;

  block73:
    call $return, $exception, $fakelocal_3, $r10, i4, $r9, r6, $fakelocal_5, r5, $fakelocal_4 := org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport_loop_block73($return, $exception, $fakelocal_3, $r10, r0, i4, r4, $r9, r6, $fakelocal_5, r3, r5, $fakelocal_4, r2, i2);
    goto block73_last;

  anon48_Else:
    assume {:partition} i2 > i4;
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "Aes256Cryptor.java", 362, -1, -1, -1} {:clone} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} !(i4 < $arrSizeHeap[r4] && i4 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon49_Then:
    assume {:partition} i4 < $arrSizeHeap[r4] && i4 >= 0;
    $exception := $exception;
    goto anon20;

  anon20:
    r5 := $refArrHeap[r4][i4];
    assert {:sourceloc "Aes256Cryptor.java", 359, -1, -1, -1} true;
    $r9 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 359, -1, -1, -1} true;
    call r6, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPathComponent$java.lang.String_javax.crypto.SecretKey_org.cryptomator.crypto.CryptorIOSupport(r0, r5, $r9, r2);
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $exception == $null;
    goto anon24;

  anon24:
    assert {:sourceloc "Aes256Cryptor.java", 360, -1, -1, -1} true;
    call $fakelocal_4 := $new(java.lang.String);
    $r10 := $fakelocal_4;
    assert {:sourceloc "Aes256Cryptor.java", 360, -1, -1, -1} true;
    call $exception := java.lang.String$$la$init$ra$$java.lang.String($r10, r6);
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} $exception == $null;
    goto anon28;

  anon28:
    assert {:sourceloc "Aes256Cryptor.java", 360, -1, -1, -1} true;
    call $fakelocal_5, $exception := java.util.List$add$java.lang.Object(r3, $r10);
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} $exception == $null;
    goto anon32;

  anon32:
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    i4 := i4 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    goto anon32_dummy;

  anon54_Then:
    assume {:partition} $exception != $null;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon32;

  anon55_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block72;

  block72:
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r11 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 363, -1, -1, -1} true;
    r18 := $r11;
    assert {:sourceloc "Aes256Cryptor.java", 364, -1, -1, -1} true;
    call $fakelocal_6 := $new(java.lang.IllegalStateException);
    $r12 := $fakelocal_6;
    assert {:sourceloc "Aes256Cryptor.java", 364, -1, -1, -1} true;
    call $fakelocal_7 := $new(java.lang.StringBuilder);
    $r13 := $fakelocal_7;
    assert {:sourceloc "Aes256Cryptor.java", 364, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r13);
    assert {:sourceloc "Aes256Cryptor.java", 364, -1, -1, -1} true;
    call $r14, $exception := java.lang.StringBuilder$append$java.lang.String($r13, $StringConst18);
    assert {:sourceloc "Aes256Cryptor.java", 364, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} $r14 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_8;
    return;

  anon58_Then:
    assume {:partition} $r14 != $null;
    $exception := $exception;
    goto anon38;

  anon38:
    call $r15, $exception := java.lang.StringBuilder$append$java.lang.String($r14, r1);
    assert {:sourceloc "Aes256Cryptor.java", 364, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_9;
    return;

  anon59_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon41;

  anon41:
    call $r16, $exception := java.lang.StringBuilder$toString$($r15);
    assert {:sourceloc "Aes256Cryptor.java", 364, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r12, $r16, r18);
    assert {:sourceloc "Aes256Cryptor.java", 364, -1, -1, -1} true;
    $exception := $r12;
    goto block76;

  block76:
    return;

  anon52_Then:
    assume {:partition} $exception != $null;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon28;

  anon53_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    $r10 := $null;
    goto block72;

  anon50_Then:
    assume {:partition} $exception != $null;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon24;

  anon51_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    goto block72;

  anon48_Then:
    assume {:partition} i4 >= i2;
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} {:comment "thenblock"} true;
    goto block74;

  block74:
    assert {:sourceloc "Aes256Cryptor.java", 362, -1, -1, -1} {:clone} true;
    call $r8, $exception := org.apache.commons.lang3.StringUtils$join$java.lang.Iterable_char(r3, c1);
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} $exception == $null;
    goto block75;

  block75:
    assert {:sourceloc "Aes256Cryptor.java", 362, -1, -1, -1} {:clone} true;
    $return := $r8;
    goto block76;

  anon56_Then:
    assume {:partition} $exception != $null;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto block75;

  anon57_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block72;

  anon45_Then:
    assume {:partition} $exception != $null;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon11;

  anon46_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    $r7 := $null;
    goto block72;

  anon42_Then:
    assume {:partition} $exception != $null;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon4;

  anon43_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block72;

  anon32_dummy:
    assume false;
    return;

  block73_last:
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPathComponent$java.lang.String_javax.crypto.SecretKey_org.cryptomator.crypto.CryptorIOSupport($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var $r6: ref;
  var $fakelocal_11: ref;
  var $fakelocal_0: ref;
  var $z0: int;
  var $r5: ref;
  var r3: ref;
  var $fakelocal_4: ref;
  var $fakelocal_12: ref;
  var r25: ref;
  var $fakelocal_10: ref;
  var $r14: ref;
  var $fakelocal_1: ref;
  var $fakelocal_8: ref;
  var $r10: ref;
  var $fakelocal_6: ref;
  var $fakelocal_9: ref;
  var $r16: ref;
  var r24: ref;
  var $r11: ref;
  var r29: ref;
  var $fakelocal_2: ref;
  var r30: ref;
  var $r8: ref;
  var r28: ref;
  var r22: ref;
  var r0: ref;
  var $fakelocal_5: ref;
  var r23: ref;
  var r26: ref;
  var $fakelocal_7: ref;
  var r27: ref;
  var $fakelocal_3: ref;
  var $fakelocal_14: ref;
  var $r17: ref;
  var $r20: ref;
  var r2: ref;
  var $r18: ref;
  var r21: ref;
  var r31: ref;
  var $r9: ref;
  var $r13: ref;
  var r1: ref;
  var $r19: ref;
  var $r7: ref;
  var $r15: ref;
  var r4: ref;
  var $z1: int;
  var $fakelocal_13: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__2, $type] <: org.cryptomator.crypto.CryptorIOSupport;
    assume $heap[$in_parameter__0, $type] <: java.lang.String;
    assume $heap[$in_parameter__1, $type] <: javax.crypto.SecretKey;
    assume $heap[$return, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__2;
    assert {:sourceloc "Aes256Cryptor.java", 373, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon45_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $z0, $exception := java.lang.String$endsWith$java.lang.String(r1, $StringConst16);
    assert {:sourceloc "Aes256Cryptor.java", 373, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} $z0 != 0;
    assert {:sourceloc "Aes256Cryptor.java", 373, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Aes256Cryptor.java", 374, -1, -1, -1} true;
    call r21, $exception := org.apache.commons.lang3.StringUtils$removeEnd$java.lang.String_java.lang.String(r1, $StringConst16);
    assert {:sourceloc "Aes256Cryptor.java", 375, -1, -1, -1} true;
    call r22, $exception := org.apache.commons.lang3.StringUtils$substringBefore$java.lang.String_java.lang.String(r21, $StringConst14);
    assert {:sourceloc "Aes256Cryptor.java", 376, -1, -1, -1} true;
    call r23, $exception := org.apache.commons.lang3.StringUtils$substringAfter$java.lang.String_java.lang.String(r21, $StringConst14);
    assert {:sourceloc "Aes256Cryptor.java", 377, -1, -1, -1} true;
    call $fakelocal_1 := $new(java.lang.StringBuilder);
    $r17 := $fakelocal_1;
    assert {:sourceloc "Aes256Cryptor.java", 377, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r17);
    assert {:sourceloc "Aes256Cryptor.java", 377, -1, -1, -1} true;
    call $r18, $exception := java.lang.StringBuilder$append$java.lang.String($r17, r22);
    assert {:sourceloc "Aes256Cryptor.java", 377, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} $r18 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon47_Then:
    assume {:partition} $r18 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $r19, $exception := java.lang.StringBuilder$append$java.lang.String($r18, $StringConst15);
    assert {:sourceloc "Aes256Cryptor.java", 377, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} $r19 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon48_Then:
    assume {:partition} $r19 != $null;
    $exception := $exception;
    goto anon12;

  anon12:
    call r24, $exception := java.lang.StringBuilder$toString$($r19);
    assert {:sourceloc "Aes256Cryptor.java", 378, -1, -1, -1} true;
    call r25, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$getMetadata$org.cryptomator.crypto.CryptorIOSupport_java.lang.String(r0, r3, r24);
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} $exception == $null;
    goto anon16;

  anon16:
    assert {:sourceloc "Aes256Cryptor.java", 379, -1, -1, -1} true;
    call $r20, $exception := java.util.UUID$fromString$java.lang.String(r23);
    assert {:sourceloc "Aes256Cryptor.java", 379, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} r25 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon51_Then:
    assume {:partition} r25 != $null;
    $exception := $exception;
    goto anon19;

  anon19:
    call r26, $exception := org.cryptomator.crypto.aes256.LongFilenameMetadata$getEncryptedFilenameForUUID$java.util.UUID(r25, $r20);
    assert {:sourceloc "Aes256Cryptor.java", 380, -1, -1, -1} true;
    goto block78;

  block78:
    assert {:sourceloc "Aes256Cryptor.java", 386, -1, -1, -1} true;
    call r27, $exception := org.apache.commons.lang3.StringUtils$substringBefore$java.lang.String_java.lang.String(r26, $StringConst14);
    assert {:sourceloc "Aes256Cryptor.java", 387, -1, -1, -1} true;
    call r28, $exception := org.apache.commons.lang3.StringUtils$substringAfter$java.lang.String_java.lang.String(r26, $StringConst14);
    assert {:sourceloc "Aes256Cryptor.java", 388, -1, -1, -1} true;
    call r29, $exception := java.nio.ByteBuffer$allocate$int(16);
    assert {:sourceloc "Aes256Cryptor.java", 389, -1, -1, -1} true;
    $r10 := org.apache.commons.codec.binary.BaseNCodec$org.cryptomator.crypto.AbstractCryptor$ENCRYPTED_FILENAME_CODEC465;
    assert {:sourceloc "Aes256Cryptor.java", 389, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} $r10 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_9;
    return;

  anon55_Then:
    assume {:partition} $r10 != $null;
    $exception := $exception;
    goto anon31;

  anon31:
    call $r11, $exception := org.apache.commons.codec.binary.BaseNCodec$decode$java.lang.String($r10, r27);
    assert {:sourceloc "Aes256Cryptor.java", 389, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} r29 == $null;
    call $fakelocal_10 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_10;
    return;

  anon56_Then:
    assume {:partition} r29 != $null;
    $exception := $exception;
    goto anon34;

  anon34:
    call $fakelocal_11, $exception := java.nio.ByteBuffer$put$byte$lp$$rp$(r29, $r11);
    assert {:sourceloc "Aes256Cryptor.java", 391, -1, -1, -1} true;
    call $r13, $exception := java.nio.ByteBuffer$array$(r29);
    assert {:sourceloc "Aes256Cryptor.java", 391, -1, -1, -1} true;
    call r30, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesCtrCipher$javax.crypto.SecretKey_byte$lp$$rp$_int(r0, r2, $r13, 2);
    assert {:sourceloc "Aes256Cryptor.java", 392, -1, -1, -1} true;
    $r14 := org.apache.commons.codec.binary.BaseNCodec$org.cryptomator.crypto.AbstractCryptor$ENCRYPTED_FILENAME_CODEC465;
    assert {:sourceloc "Aes256Cryptor.java", 392, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} $r14 == $null;
    call $fakelocal_12 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_12;
    return;

  anon57_Then:
    assume {:partition} $r14 != $null;
    $exception := $exception;
    goto anon37;

  anon37:
    call r31, $exception := org.apache.commons.codec.binary.BaseNCodec$decode$java.lang.String($r14, r28);
    assert {:sourceloc "Aes256Cryptor.java", 393, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} r30 == $null;
    call $fakelocal_13 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_13;
    return;

  anon58_Then:
    assume {:partition} r30 != $null;
    $exception := $exception;
    goto anon40;

  anon40:
    call r4, $exception := javax.crypto.Cipher$doFinal$byte$lp$$rp$(r30, r31);
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} $exception == $null;
    goto anon44;

  anon44:
    assert {:sourceloc "Aes256Cryptor.java", 394, -1, -1, -1} true;
    call $fakelocal_14 := $new(java.lang.String);
    $r15 := $fakelocal_14;
    assert {:sourceloc "Aes256Cryptor.java", 394, -1, -1, -1} true;
    $r16 := java.nio.charset.Charset$org.apache.commons.io.Charsets$UTF_8464;
    assert {:sourceloc "Aes256Cryptor.java", 394, -1, -1, -1} true;
    call $exception := java.lang.String$$la$init$ra$$byte$lp$$rp$_java.nio.charset.Charset($r15, r4, $r16);
    assert {:sourceloc "Aes256Cryptor.java", 394, -1, -1, -1} true;
    $return := $r15;
    goto block80;

  block80:
    return;

  anon59_Then:
    assume {:partition} $exception != $null;
    goto anon60_Then, anon60_Else;

  anon60_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.BadPaddingException);
    assert {:clone} true;
    goto anon44;

  anon60_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.BadPaddingException;
    $return := $null;
    return;

  anon49_Then:
    assume {:partition} $exception != $null;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon16;

  anon50_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon46_Then:
    assume {:partition} $z0 == 0;
    assert {:sourceloc "Aes256Cryptor.java", 373, -1, -1, -1} {:comment "thenblock"} true;
    goto block77;

  block77:
    assert {:sourceloc "Aes256Cryptor.java", 373, -1, -1, -1} true;
    call $z1, $exception := java.lang.String$endsWith$java.lang.String(r1, $StringConst17);
    assert {:sourceloc "Aes256Cryptor.java", 373, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} $z1 != 0;
    assert {:sourceloc "Aes256Cryptor.java", 373, -1, -1, -1} {:comment "elseblock"} true;
    goto anon22;

  anon22:
    assert {:sourceloc "Aes256Cryptor.java", 381, -1, -1, -1} true;
    call r26, $exception := org.apache.commons.lang3.StringUtils$removeEndIgnoreCase$java.lang.String_java.lang.String(r1, $StringConst17);
    assert {:sourceloc "Aes256Cryptor.java", 381, -1, -1, -1} true;
    goto block78;

  anon52_Then:
    assume {:partition} $z1 == 0;
    assert {:sourceloc "Aes256Cryptor.java", 373, -1, -1, -1} {:comment "thenblock"} true;
    goto block79;

  block79:
    assert {:sourceloc "Aes256Cryptor.java", 383, -1, -1, -1} true;
    call $fakelocal_5 := $new(java.lang.IllegalArgumentException);
    $r5 := $fakelocal_5;
    assert {:sourceloc "Aes256Cryptor.java", 383, -1, -1, -1} true;
    call $fakelocal_6 := $new(java.lang.StringBuilder);
    $r6 := $fakelocal_6;
    assert {:sourceloc "Aes256Cryptor.java", 383, -1, -1, -1} true;
    call $exception := java.lang.StringBuilder$$la$init$ra$$($r6);
    assert {:sourceloc "Aes256Cryptor.java", 383, -1, -1, -1} true;
    call $r7, $exception := java.lang.StringBuilder$append$java.lang.String($r6, $StringConst19);
    assert {:sourceloc "Aes256Cryptor.java", 383, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} $r7 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon53_Then:
    assume {:partition} $r7 != $null;
    $exception := $exception;
    goto anon25;

  anon25:
    call $r8, $exception := java.lang.StringBuilder$append$java.lang.String($r7, r1);
    assert {:sourceloc "Aes256Cryptor.java", 383, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} $r8 == $null;
    call $fakelocal_8 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_8;
    return;

  anon54_Then:
    assume {:partition} $r8 != $null;
    $exception := $exception;
    goto anon28;

  anon28:
    call $r9, $exception := java.lang.StringBuilder$toString$($r8);
    assert {:sourceloc "Aes256Cryptor.java", 383, -1, -1, -1} true;
    call $exception := java.lang.IllegalArgumentException$$la$init$ra$$java.lang.String($r5, $r9);
    assert {:sourceloc "Aes256Cryptor.java", 383, -1, -1, -1} true;
    $exception := $r5;
    goto block80;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$getMetadata$org.cryptomator.crypto.CryptorIOSupport_java.lang.String($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var $fakelocal_3: ref;
  var $r6: ref;
  var $r4: ref;
  var $r5: ref;
  var $r7: ref;
  var $fakelocal_0: ref;
  var $fakelocal_2: ref;
  var r3: ref;
  var r0: ref;
  var r1: ref;
  var r2: ref;
  var $fakelocal_1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    assume $heap[$return, $type] <: org.cryptomator.crypto.aes256.LongFilenameMetadata;
    assume $heap[$in_parameter__0, $type] <: org.cryptomator.crypto.CryptorIOSupport;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", 398, -1, -1, -1} true;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon13_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call r3, $exception := org.cryptomator.crypto.CryptorIOSupport$readPathSpecificMetadata$java.lang.String(r1, r2);
    assert {:sourceloc "Aes256Cryptor.java", 399, -1, -1, -1} true;
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} r3 == $null;
    assert {:sourceloc "Aes256Cryptor.java", 399, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Aes256Cryptor.java", 400, -1, -1, -1} true;
    call $fakelocal_1 := $new(org.cryptomator.crypto.aes256.LongFilenameMetadata);
    $r7 := $fakelocal_1;
    assert {:sourceloc "Aes256Cryptor.java", 400, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.LongFilenameMetadata$$la$init$ra$$($r7);
    assert {:sourceloc "Aes256Cryptor.java", 400, -1, -1, -1} true;
    $return := $r7;
    goto block82;

  block82:
    return;

  anon14_Then:
    assume {:partition} r3 != $null;
    assert {:sourceloc "Aes256Cryptor.java", 399, -1, -1, -1} {:comment "thenblock"} true;
    goto block81;

  block81:
    assert {:sourceloc "Aes256Cryptor.java", 402, -1, -1, -1} true;
    $r4 := $heap[r0, com.fasterxml.jackson.databind.ObjectMapper$org.cryptomator.crypto.aes256.Aes256Cryptor$objectMapper261];
    assert {:sourceloc "Aes256Cryptor.java", 402, -1, -1, -1} true;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon15_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon9;

  anon9:
    call $r5, $exception := com.fasterxml.jackson.databind.ObjectMapper$readValue$byte$lp$$rp$_java.lang.Class($r4, r3, CC$org$_$cryptomator$_$crypto$_$aes256$_$LongFilenameMetadata);
    assert {:sourceloc "Aes256Cryptor.java", 402, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} !($heap[$r5, $type] <: org.cryptomator.crypto.aes256.LongFilenameMetadata);
    call $fakelocal_3 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon16_Then:
    assume {:partition} $heap[$r5, $type] <: org.cryptomator.crypto.aes256.LongFilenameMetadata;
    $exception := $exception;
    goto anon12;

  anon12:
    $r6 := $r5;
    assert {:sourceloc "Aes256Cryptor.java", 402, -1, -1, -1} true;
    $return := $r6;
    goto block82;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$storeMetadata$org.cryptomator.crypto.CryptorIOSupport_java.lang.String_org.cryptomator.crypto.aes256.LongFilenameMetadata($this: ref, $in_parameter__0: ref, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($exception: ref)
{
  var $fakelocal_1: ref;
  var r2: ref;
  var $r4: ref;
  var r0: ref;
  var r3: ref;
  var r1: ref;
  var $r5: ref;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__2, $type]
   <: org.cryptomator.crypto.aes256.LongFilenameMetadata;
    assume $heap[$in_parameter__0, $type] <: org.cryptomator.crypto.CryptorIOSupport;
    assume $heap[$in_parameter__1, $type] <: java.lang.String;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r3 := $in_parameter__2;
    assert {:sourceloc "Aes256Cryptor.java", 407, -1, -1, -1} true;
    $r4 := $heap[r0, com.fasterxml.jackson.databind.ObjectMapper$org.cryptomator.crypto.aes256.Aes256Cryptor$objectMapper261];
    assert {:sourceloc "Aes256Cryptor.java", 407, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $r4 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_0;
    return;

  anon7_Then:
    assume {:partition} $r4 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $r5, $exception := com.fasterxml.jackson.databind.ObjectMapper$writeValueAsBytes$java.lang.Object($r4, r3);
    assert {:sourceloc "Aes256Cryptor.java", 407, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.RuntimeException);
    $exception := $fakelocal_1;
    return;

  anon8_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon6;

  anon6:
    call $exception := org.cryptomator.crypto.CryptorIOSupport$writePathSpecificMetadata$java.lang.String_byte$lp$$rp$(r1, r2, $r5);
    assert {:sourceloc "Aes256Cryptor.java", 408, -1, -1, -1} true;
    goto block83;

  block83:
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$authenticateContent$java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r1: ref;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.nio.channels.SeekableByteChannel;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 412, -1, -1, -1} true;
    $return := 0;
    goto block84;

  block84:
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$authenticateContent_unsafe$java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref) returns ($return: int, $exception: ref)
{
  var r3: ref;
  var $z0: int;
  var r1: ref;
  var $fakelocal_3: ref;
  var $fakelocal_8: ref;
  var r6: ref;
  var r21: ref;
  var $fakelocal_7: ref;
  var $i1: int;
  var $fakelocal_2: ref;
  var $fakelocal_9: ref;
  var $i2: int;
  var $r14: ref;
  var $fakelocal_11: int;
  var r4: ref;
  var $l3: int;
  var r17: ref;
  var i0: int;
  var r5: ref;
  var $fakelocal_1: ref;
  var r22: ref;
  var r2: ref;
  var $fakelocal_0: ref;
  var $r7: ref;
  var r16: ref;
  var r20: ref;
  var $fakelocal_5: ref;
  var r19: ref;
  var r18: ref;
  var $fakelocal_12: ref;
  var r0: ref;
  var $fakelocal_4: ref;
  var $fakelocal_6: ref;
  var $r15: ref;
  var $fakelocal_10: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.nio.channels.SeekableByteChannel;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 441, -1, -1, -1} true;
    call r2, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$decryptedContentLength$java.nio.channels.SeekableByteChannel(r0, r1);
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "Aes256Cryptor.java", 444, -1, -1, -1} true;
    $r7 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263];
    assert {:sourceloc "Aes256Cryptor.java", 444, -1, -1, -1} true;
    call r3, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$hmacSha256$javax.crypto.SecretKey(r0, $r7);
    assert {:sourceloc "Aes256Cryptor.java", 447, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon46_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon7;

  anon7:
    call $fakelocal_1, $exception := java.nio.channels.SeekableByteChannel$position$long(r1, 16);
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} $exception == $null;
    goto anon11;

  anon11:
    assert {:sourceloc "Aes256Cryptor.java", 448, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} r3 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon49_Then:
    assume {:partition} r3 != $null;
    $exception := $exception;
    goto anon14;

  anon14:
    call $i1, $exception := javax.crypto.Mac$getMacLength$(r3);
    assert {:sourceloc "Aes256Cryptor.java", 448, -1, -1, -1} true;
    call r4, $exception := java.nio.ByteBuffer$allocate$int($i1);
    assert {:sourceloc "Aes256Cryptor.java", 449, -1, -1, -1} true;
    call i0, $exception := java.nio.channels.SeekableByteChannel$read$java.nio.ByteBuffer(r1, r4);
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $exception == $null;
    goto anon18;

  anon18:
    assert {:sourceloc "Aes256Cryptor.java", 452, -1, -1, -1} true;
    call $i2, $exception := javax.crypto.Mac$getMacLength$(r3);
    assert {:sourceloc "Aes256Cryptor.java", 452, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} i0 == $i2;
    assert {:sourceloc "Aes256Cryptor.java", 452, -1, -1, -1} {:comment "elseblock"} true;
    goto anon21;

  anon21:
    assert {:sourceloc "Aes256Cryptor.java", 453, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} r2 == $null;
    assert {:sourceloc "Aes256Cryptor.java", 453, -1, -1, -1} {:comment "elseblock"} true;
    goto block85;

  block85:
    assert {:sourceloc "Aes256Cryptor.java", 453, -1, -1, -1} true;
    call $fakelocal_3 := $new(java.io.IOException);
    r16 := $fakelocal_3;
    assert {:sourceloc "Aes256Cryptor.java", 453, -1, -1, -1} true;
    call $exception := java.io.IOException$$la$init$ra$$java.lang.String(r16, $StringConst20);
    assert {:sourceloc "Aes256Cryptor.java", 453, -1, -1, -1} true;
    $exception := r16;
    goto block87;

  block87:
    return;

  anon53_Then:
    assume {:partition} r2 != $null;
    assert {:sourceloc "Aes256Cryptor.java", 453, -1, -1, -1} {:comment "thenblock"} true;
    goto block86;

  block86:
    assert {:sourceloc "Aes256Cryptor.java", 457, -1, -1, -1} true;
    call $fakelocal_4, $exception := java.nio.channels.SeekableByteChannel$position$long(r1, 64);
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} $exception == $null;
    goto anon27;

  anon27:
    assert {:sourceloc "Aes256Cryptor.java", 458, -1, -1, -1} true;
    call $fakelocal_5 := $new(org.cryptomator.crypto.io.SeekableByteChannelInputStream);
    r17 := $fakelocal_5;
    assert {:sourceloc "Aes256Cryptor.java", 458, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.io.SeekableByteChannelInputStream$$la$init$ra$$java.nio.channels.SeekableByteChannel(r17, r1);
    assert {:sourceloc "Aes256Cryptor.java", 458, -1, -1, -1} true;
    r5 := r17;
    assert {:sourceloc "Aes256Cryptor.java", 459, -1, -1, -1} true;
    call $fakelocal_6 := $new(org.cryptomator.crypto.aes256.MacInputStream);
    r18 := $fakelocal_6;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} !($heap[r5, $type] <: java.io.InputStream);
    call $fakelocal_7 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon56_Then:
    assume {:partition} $heap[r5, $type] <: java.io.InputStream;
    $exception := $exception;
    goto anon30;

  anon30:
    r20 := r5;
    assert {:sourceloc "Aes256Cryptor.java", 459, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.MacInputStream$$la$init$ra$$java.io.InputStream_javax.crypto.Mac(r18, r20, r3);
    assert {:sourceloc "Aes256Cryptor.java", 459, -1, -1, -1} true;
    r6 := r18;
    assert {:sourceloc "Aes256Cryptor.java", 460, -1, -1, -1} true;
    call $fakelocal_8 := $new(org.apache.commons.io.output.NullOutputStream);
    r19 := $fakelocal_8;
    assert {:sourceloc "Aes256Cryptor.java", 460, -1, -1, -1} true;
    call $exception := org.apache.commons.io.output.NullOutputStream$$la$init$ra$$(r19);
    assert {:sourceloc "Aes256Cryptor.java", 460, -1, -1, -1} true;
    call $l3, $exception := java.lang.Long$longValue$(r2);
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} !($heap[r6, $type] <: java.io.InputStream);
    call $fakelocal_9 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon57_Then:
    assume {:partition} $heap[r6, $type] <: java.io.InputStream;
    $exception := $exception;
    goto anon33;

  anon33:
    r21 := r6;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} !($heap[r19, $type] <: java.io.OutputStream);
    call $fakelocal_10 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_10;
    return;

  anon58_Then:
    assume {:partition} $heap[r19, $type] <: java.io.OutputStream;
    $exception := $exception;
    goto anon36;

  anon36:
    r22 := r19;
    assert {:sourceloc "Aes256Cryptor.java", 460, -1, -1, -1} true;
    call $fakelocal_11, $exception := org.apache.commons.io.IOUtils$copyLarge$java.io.InputStream_java.io.OutputStream_long_long(r21, r22, 0, $l3);
    assert {:sourceloc "Aes256Cryptor.java", 462, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_12 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_12;
    return;

  anon59_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon39;

  anon39:
    call $r14, $exception := java.nio.ByteBuffer$array$(r4);
    assert {:sourceloc "Aes256Cryptor.java", 462, -1, -1, -1} true;
    call $r15, $exception := javax.crypto.Mac$doFinal$(r3);
    goto anon60_Then, anon60_Else;

  anon60_Else:
    assume {:partition} $exception == $null;
    goto anon43;

  anon43:
    assert {:sourceloc "Aes256Cryptor.java", 462, -1, -1, -1} true;
    call $z0, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$($r14, $r15);
    assert {:sourceloc "Aes256Cryptor.java", 462, -1, -1, -1} true;
    $return := $z0;
    goto block87;

  anon60_Then:
    assume {:partition} $exception != $null;
    goto anon61_Then, anon61_Else;

  anon61_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalStateException);
    assert {:clone} true;
    goto anon43;

  anon61_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalStateException;
    $return := 0;
    return;

  anon54_Then:
    assume {:partition} $exception != $null;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon27;

  anon55_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    return;

  anon52_Then:
    assume {:partition} i0 != $i2;
    assert {:sourceloc "Aes256Cryptor.java", 452, -1, -1, -1} {:comment "thenblock"} true;
    goto block85;

  anon50_Then:
    assume {:partition} $exception != $null;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon18;

  anon51_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    return;

  anon47_Then:
    assume {:partition} $exception != $null;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon11;

  anon48_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    return;

  anon44_Then:
    assume {:partition} $exception != $null;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon4;

  anon45_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := 0;
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var $r11: ref;
  var $r4: ref;
  var $fakelocal_3: ref;
  var $b2: int;
  var z3: int;
  var r1: ref;
  var $fakelocal_2: ref;
  var z0: int;
  var i6: int;
  var $r6: ref;
  var $fakelocal_1: ref;
  var $r7: ref;
  var $r15: ref;
  var $l4: int;
  var $fakelocal_6: ref;
  var $z1: int;
  var $l5: int;
  var $r14: ref;
  var $r12: ref;
  var $r2: ref;
  var $fakelocal_5: ref;
  var $r3: ref;
  var $fakelocal_8: ref;
  var $b3: int;
  var r0: ref;
  var $r10: ref;
  var $fakelocal_9: ref;
  var $r8: ref;
  var $fakelocal_7: ref;
  var i0: int;
  var $i1: int;
  var $r5: ref;
  var $r13: ref;
  var $r9: ref;
  var $fakelocal_4: ref;
  var z2: int;
  var $fakelocal_0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", 466, -1, -1, -1} true;
    z2 := 0;
    assert {:sourceloc "Aes256Cryptor.java", 467, -1, -1, -1} true;
    z3 := 0;
    assert {:sourceloc "Aes256Cryptor.java", 468, -1, -1, -1} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Aes256Cryptor.java", 468, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Aes256Cryptor.java", 469, -1, -1, -1} true;
    $return := 1;
    goto block94;

  block94:
    return;

  anon45_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Aes256Cryptor.java", 468, -1, -1, -1} {:comment "thenblock"} true;
    goto block88;

  block88:
    assert {:sourceloc "Aes256Cryptor.java", 470, -1, -1, -1} true;
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} r0 != $null;
    assert {:sourceloc "Aes256Cryptor.java", 470, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Aes256Cryptor.java", 471, -1, -1, -1} true;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} r1 == $null;
    assert {:sourceloc "Aes256Cryptor.java", 471, -1, -1, -1} {:comment "elseblock"} true;
    goto block89;

  block89:
    assert {:sourceloc "Aes256Cryptor.java", 471, -1, -1, -1} true;
    $return := 0;
    goto block94;

  anon47_Then:
    assume {:partition} r1 != $null;
    assert {:sourceloc "Aes256Cryptor.java", 471, -1, -1, -1} {:comment "thenblock"} true;
    goto block90;

  block90:
    assert {:sourceloc "Aes256Cryptor.java", 473, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} r0 == $null;
    call $fakelocal_0 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_0;
    return;

  anon48_Then:
    assume {:partition} r0 != $null;
    $exception := $exception;
    goto anon11;

  anon11:
    i0 := $arrSizeHeap[r0];
    assert {:sourceloc "Aes256Cryptor.java", 474, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_1 := $new(java.lang.NullPointerException);
    $return := 0;
    $exception := $fakelocal_1;
    return;

  anon49_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon14;

  anon14:
    $i1 := $arrSizeHeap[r1];
    assert {:sourceloc "Aes256Cryptor.java", 474, -1, -1, -1} true;
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $i1 != i0;
    assert {:sourceloc "Aes256Cryptor.java", 474, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "Aes256Cryptor.java", 475, -1, -1, -1} true;
    $return := 0;
    goto block94;

  anon50_Then:
    assume {:partition} $i1 == i0;
    assert {:sourceloc "Aes256Cryptor.java", 474, -1, -1, -1} {:comment "thenblock"} true;
    goto block91;

  block91:
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} true;
    i6 := 0;
    goto block92;

  block92:
    call $return, $exception, $r11, $fakelocal_3, $b2, z3, $fakelocal_2, z0, i6, $r6, $r7, $r15, $l4, $fakelocal_6, $l5, $r14, $r12, $fakelocal_5, $b3, $r10, $r8, $fakelocal_7, $r13, $r9, $fakelocal_4, z2 := org.cryptomator.crypto.aes256.Aes256Cryptor$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$_loop_block92($return, $exception, $r11, $fakelocal_3, $b2, z3, r1, $fakelocal_2, z0, i6, $r6, $r7, $r15, $l4, $fakelocal_6, $l5, $r14, $r12, $fakelocal_5, $b3, r0, $r10, $r8, $fakelocal_7, i0, $r13, $r9, $fakelocal_4, z2);
    goto block92_last;

  anon51_Else:
    assume {:partition} i0 > i6;
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  anon20:
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(i6 < $arrSizeHeap[r0] && i6 >= 0);
    call $fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_2;
    return;

  anon52_Then:
    assume {:partition} i6 < $arrSizeHeap[r0] && i6 >= 0;
    $exception := $exception;
    goto anon23;

  anon23:
    $b2 := $intArrHeap[r0][i6];
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    $l5 := $b2;
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(i6 < $arrSizeHeap[r1] && i6 >= 0);
    call $fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    $return := 0;
    $exception := $fakelocal_3;
    return;

  anon53_Then:
    assume {:partition} i6 < $arrSizeHeap[r1] && i6 >= 0;
    $exception := $exception;
    goto anon26;

  anon26:
    $b3 := $intArrHeap[r1][i6];
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    $l4 := $b3;
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    call z0, $exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($l5, $l4);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call $r6, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call $r7, $exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call $r8, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r6, $r7);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call $r9, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call $r10, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r8, $r9);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} !($heap[$r10, $type] <: java.lang.Boolean);
    call $fakelocal_4 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_4;
    return;

  anon54_Then:
    assume {:partition} $heap[$r10, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon29;

  anon29:
    $r11 := $r10;
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} $r11 == $null;
    call $fakelocal_5 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_5;
    return;

  anon55_Then:
    assume {:partition} $r11 != $null;
    $exception := $exception;
    goto anon32;

  anon32:
    call z2, $exception := java.lang.Boolean$booleanValue$($r11);
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    call $r12, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    call $r13, $exception := java.lang.Boolean$valueOf$boolean(z3);
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    call $r14, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z0, $r12, $r13);
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} !($heap[$r14, $type] <: java.lang.Boolean);
    call $fakelocal_6 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_6;
    return;

  anon56_Then:
    assume {:partition} $heap[$r14, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon35;

  anon35:
    $r15 := $r14;
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} $r15 == $null;
    call $fakelocal_7 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_7;
    return;

  anon57_Then:
    assume {:partition} $r15 != $null;
    $exception := $exception;
    goto anon38;

  anon38:
    call z3, $exception := java.lang.Boolean$booleanValue$($r15);
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} true;
    i6 := i6 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} true;
    goto anon38_dummy;

  anon51_Then:
    assume {:partition} i6 >= i0;
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} {:comment "thenblock"} true;
    goto block93;

  block93:
    assert {:sourceloc "Aes256Cryptor.java", 487, -1, -1, -1} true;
    call $r2, $exception := java.lang.Boolean$valueOf$boolean(z2);
    assert {:sourceloc "Aes256Cryptor.java", 487, -1, -1, -1} true;
    call $r3, $exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "Aes256Cryptor.java", 487, -1, -1, -1} true;
    call $r4, $exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(z3, $r2, $r3);
    assert {:sourceloc "Aes256Cryptor.java", 487, -1, -1, -1} true;
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} !($heap[$r4, $type] <: java.lang.Boolean);
    call $fakelocal_8 := $new(java.lang.ClassCastException);
    $return := 0;
    $exception := $fakelocal_8;
    return;

  anon58_Then:
    assume {:partition} $heap[$r4, $type] <: java.lang.Boolean;
    $exception := $exception;
    goto anon41;

  anon41:
    $r5 := $r4;
    assert {:sourceloc "Aes256Cryptor.java", 487, -1, -1, -1} true;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} $r5 == $null;
    call $fakelocal_9 := $new(java.lang.RuntimeException);
    $return := 0;
    $exception := $fakelocal_9;
    return;

  anon59_Then:
    assume {:partition} $r5 != $null;
    $exception := $exception;
    goto anon44;

  anon44:
    call $z1, $exception := java.lang.Boolean$booleanValue$($r5);
    assert {:sourceloc "Aes256Cryptor.java", 487, -1, -1, -1} true;
    $return := $z1;
    goto block94;

  anon46_Then:
    assume {:partition} r0 == $null;
    assert {:sourceloc "Aes256Cryptor.java", 470, -1, -1, -1} {:comment "thenblock"} true;
    goto block89;

  anon38_dummy:
    assume false;
    return;

  block92_last:
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$decryptedContentLength$java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref) returns ($return: ref, $exception: ref)
{
  var $r6: ref;
  var r2: ref;
  var r11: ref;
  var r1: ref;
  var r12: ref;
  var $r7: ref;
  var i0: int;
  var r0: ref;
  var $r10: ref;
  var $fakelocal_4: ref;
  var r3: ref;
  var r4: ref;
  var $r8: ref;
  var $fakelocal_5: ref;
  var $fakelocal_0: ref;
  var $fakelocal_1: ref;
  var $fakelocal_2: ref;
  var $fakelocal_3: ref;
  var $l2: int;
  var $i1: int;
  var $r9: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.Long;
    assume $heap[$in_parameter__0, $type] <: java.nio.channels.SeekableByteChannel;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", 493, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon43_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $fakelocal_1, $exception := java.nio.channels.SeekableByteChannel$position$long(r1, 48);
    goto anon44_Then, anon44_Else;

  anon44_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "Aes256Cryptor.java", 496, -1, -1, -1} true;
    call r2, $exception := java.nio.ByteBuffer$allocate$int(16);
    assert {:sourceloc "Aes256Cryptor.java", 497, -1, -1, -1} true;
    call i0, $exception := java.nio.channels.SeekableByteChannel$read$java.nio.ByteBuffer(r1, r2);
    goto anon46_Then, anon46_Else;

  anon46_Else:
    assume {:partition} $exception == $null;
    goto anon11;

  anon11:
    assert {:sourceloc "Aes256Cryptor.java", 500, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon48_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon14;

  anon14:
    call $i1, $exception := java.nio.Buffer$capacity$(r2);
    assert {:sourceloc "Aes256Cryptor.java", 500, -1, -1, -1} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} i0 != $i1;
    assert {:sourceloc "Aes256Cryptor.java", 500, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon17:
    assert {:sourceloc "Aes256Cryptor.java", 501, -1, -1, -1} true;
    $return := $null;
    goto block98;

  block98:
    return;

  anon49_Then:
    assume {:partition} i0 == $i1;
    assert {:sourceloc "Aes256Cryptor.java", 500, -1, -1, -1} {:comment "thenblock"} true;
    goto block95;

  block95:
    assert {:sourceloc "Aes256Cryptor.java", 506, -1, -1, -1} true;
    $r6 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 506, -1, -1, -1} true;
    call r11, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesEcbCipher$javax.crypto.SecretKey_int(r0, $r6, 2);
    assert {:sourceloc "Aes256Cryptor.java", 507, -1, -1, -1} true;
    call $r7, $exception := java.nio.ByteBuffer$array$(r2);
    goto anon50_Then, anon50_Else;

  anon50_Else:
    assume {:partition} $exception == $null;
    goto anon21;

  anon21:
    assert {:sourceloc "Aes256Cryptor.java", 507, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} r11 == $null;
    call $fakelocal_3 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon52_Then:
    assume {:partition} r11 != $null;
    $exception := $exception;
    goto anon24;

  anon24:
    call r3, $exception := javax.crypto.Cipher$doFinal$byte$lp$$rp$(r11, $r7);
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} $exception == $null;
    goto anon28;

  anon28:
    assert {:sourceloc "Aes256Cryptor.java", 508, -1, -1, -1} true;
    call r4, $exception := java.nio.ByteBuffer$wrap$byte$lp$$rp$(r3);
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} $exception == $null;
    goto anon32;

  anon32:
    assert {:sourceloc "Aes256Cryptor.java", 509, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon57_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon35;

  anon35:
    call $l2, $exception := java.nio.ByteBuffer$getLong$(r4);
    goto anon58_Then, anon58_Else;

  anon58_Else:
    assume {:partition} $exception == $null;
    goto anon39;

  anon39:
    assert {:sourceloc "Aes256Cryptor.java", 509, -1, -1, -1} true;
    call $r8, $exception := java.lang.Long$valueOf$long($l2);
    goto anon60_Then, anon60_Else;

  anon60_Else:
    assume {:partition} $exception == $null;
    goto block97;

  block97:
    assert {:sourceloc "Aes256Cryptor.java", 509, -1, -1, -1} true;
    $return := $r8;
    goto block98;

  anon60_Then:
    assume {:partition} $exception != $null;
    goto anon61_Then, anon61_Else;

  anon61_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto block97;

  anon61_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block96;

  block96:
    assert {:sourceloc "Aes256Cryptor.java", 501, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r9 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 510, -1, -1, -1} true;
    r12 := $r9;
    assert {:sourceloc "Aes256Cryptor.java", 511, -1, -1, -1} true;
    call $fakelocal_5 := $new(java.lang.IllegalStateException);
    $r10 := $fakelocal_5;
    assert {:sourceloc "Aes256Cryptor.java", 511, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.Throwable($r10, r12);
    assert {:sourceloc "Aes256Cryptor.java", 511, -1, -1, -1} true;
    $exception := $r10;
    goto block98;

  anon58_Then:
    assume {:partition} $exception != $null;
    goto anon59_Then, anon59_Else;

  anon59_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon39;

  anon59_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block96;

  anon55_Then:
    assume {:partition} $exception != $null;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon32;

  anon56_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block96;

  anon53_Then:
    assume {:partition} $exception != $null;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.BadPaddingException);
    assert {:clone} true;
    goto anon28;

  anon54_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.BadPaddingException;
    $return := $null;
    goto block96;

  anon50_Then:
    assume {:partition} $exception != $null;
    goto anon51_Then, anon51_Else;

  anon51_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon21;

  anon51_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block96;

  anon46_Then:
    assume {:partition} $exception != $null;
    goto anon47_Then, anon47_Else;

  anon47_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon11;

  anon47_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon44_Then:
    assume {:partition} $exception != $null;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon7;

  anon45_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$decryptedFile$java.nio.channels.SeekableByteChannel_java.io.OutputStream($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var $fakelocal_6: ref;
  var $fakelocal_7: ref;
  var $fakelocal_3: ref;
  var r4: ref;
  var r7: ref;
  var $r15: ref;
  var r19: ref;
  var r2: ref;
  var i0: int;
  var $fakelocal_4: ref;
  var $fakelocal_1: ref;
  var r1: ref;
  var $fakelocal_5: ref;
  var $r11: ref;
  var r16: ref;
  var $fakelocal_2: ref;
  var r0: ref;
  var $r12: ref;
  var r6: ref;
  var r17: ref;
  var r3: ref;
  var $l1: int;
  var r5: ref;
  var $l2: int;
  var $fakelocal_0: ref;
  var r18: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.nio.channels.SeekableByteChannel;
    assume $heap[$return, $type] <: java.lang.Long;
    assume $heap[$in_parameter__1, $type] <: java.io.OutputStream;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", 518, -1, -1, -1} true;
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon31_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $fakelocal_1, $exception := java.nio.channels.SeekableByteChannel$position$long(r1, 0);
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "Aes256Cryptor.java", 519, -1, -1, -1} true;
    call r3, $exception := java.nio.ByteBuffer$allocate$int(16);
    assert {:sourceloc "Aes256Cryptor.java", 520, -1, -1, -1} true;
    call i0, $exception := java.nio.channels.SeekableByteChannel$read$java.nio.ByteBuffer(r1, r3);
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} $exception == $null;
    goto anon11;

  anon11:
    assert {:sourceloc "Aes256Cryptor.java", 523, -1, -1, -1} true;
    call r4, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$decryptedContentLength$java.nio.channels.SeekableByteChannel(r0, r1);
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $exception == $null;
    goto anon15;

  anon15:
    assert {:sourceloc "Aes256Cryptor.java", 526, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} i0 == 16;
    assert {:sourceloc "Aes256Cryptor.java", 526, -1, -1, -1} {:comment "elseblock"} true;
    goto anon18;

  anon18:
    assert {:sourceloc "Aes256Cryptor.java", 527, -1, -1, -1} true;
    goto anon39_Then, anon39_Else;

  anon39_Else:
    assume {:partition} r4 == $null;
    assert {:sourceloc "Aes256Cryptor.java", 527, -1, -1, -1} {:comment "elseblock"} true;
    goto block99;

  block99:
    assert {:sourceloc "Aes256Cryptor.java", 527, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.io.IOException);
    r16 := $fakelocal_2;
    assert {:sourceloc "Aes256Cryptor.java", 527, -1, -1, -1} true;
    call $exception := java.io.IOException$$la$init$ra$$java.lang.String(r16, $StringConst20);
    assert {:sourceloc "Aes256Cryptor.java", 527, -1, -1, -1} true;
    $exception := r16;
    goto block101;

  block101:
    return;

  anon39_Then:
    assume {:partition} r4 != $null;
    assert {:sourceloc "Aes256Cryptor.java", 527, -1, -1, -1} {:comment "thenblock"} true;
    goto block100;

  block100:
    assert {:sourceloc "Aes256Cryptor.java", 531, -1, -1, -1} true;
    call $fakelocal_3, $exception := java.nio.channels.SeekableByteChannel$position$long(r1, 64);
    goto anon40_Then, anon40_Else;

  anon40_Else:
    assume {:partition} $exception == $null;
    goto anon24;

  anon24:
    assert {:sourceloc "Aes256Cryptor.java", 534, -1, -1, -1} true;
    $r11 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 534, -1, -1, -1} true;
    goto anon42_Then, anon42_Else;

  anon42_Else:
    assume {:partition} r3 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon42_Then:
    assume {:partition} r3 != $null;
    $exception := $exception;
    goto anon27;

  anon27:
    call $r12, $exception := java.nio.ByteBuffer$array$(r3);
    assert {:sourceloc "Aes256Cryptor.java", 534, -1, -1, -1} true;
    call r5, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesCtrCipher$javax.crypto.SecretKey_byte$lp$$rp$_int(r0, $r11, $r12, 2);
    assert {:sourceloc "Aes256Cryptor.java", 537, -1, -1, -1} true;
    call $fakelocal_5 := $new(org.cryptomator.crypto.io.SeekableByteChannelInputStream);
    r17 := $fakelocal_5;
    assert {:sourceloc "Aes256Cryptor.java", 537, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.io.SeekableByteChannelInputStream$$la$init$ra$$java.nio.channels.SeekableByteChannel(r17, r1);
    assert {:sourceloc "Aes256Cryptor.java", 537, -1, -1, -1} true;
    r6 := r17;
    assert {:sourceloc "Aes256Cryptor.java", 538, -1, -1, -1} true;
    call $fakelocal_6 := $new(javax.crypto.CipherInputStream);
    r18 := $fakelocal_6;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    goto anon43_Then, anon43_Else;

  anon43_Else:
    assume {:partition} !($heap[r6, $type] <: java.io.InputStream);
    call $fakelocal_7 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_7;
    return;

  anon43_Then:
    assume {:partition} $heap[r6, $type] <: java.io.InputStream;
    $exception := $exception;
    goto anon30;

  anon30:
    r19 := r6;
    assert {:sourceloc "Aes256Cryptor.java", 538, -1, -1, -1} true;
    call $exception := javax.crypto.CipherInputStream$$la$init$ra$$java.io.InputStream_javax.crypto.Cipher(r18, r19, r5);
    assert {:sourceloc "Aes256Cryptor.java", 538, -1, -1, -1} true;
    r7 := r18;
    assert {:sourceloc "Aes256Cryptor.java", 539, -1, -1, -1} true;
    call $l1, $exception := java.lang.Long$longValue$(r4);
    assert {:sourceloc "Aes256Cryptor.java", 539, -1, -1, -1} true;
    call $l2, $exception := org.apache.commons.io.IOUtils$copyLarge$java.io.InputStream_java.io.OutputStream_long_long(r7, r2, 0, $l1);
    assert {:sourceloc "Aes256Cryptor.java", 539, -1, -1, -1} true;
    call $r15, $exception := java.lang.Long$valueOf$long($l2);
    assert {:sourceloc "Aes256Cryptor.java", 539, -1, -1, -1} true;
    $return := $r15;
    goto block101;

  anon40_Then:
    assume {:partition} $exception != $null;
    goto anon41_Then, anon41_Else;

  anon41_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon24;

  anon41_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon38_Then:
    assume {:partition} i0 != 16;
    assert {:sourceloc "Aes256Cryptor.java", 526, -1, -1, -1} {:comment "thenblock"} true;
    goto block99;

  anon36_Then:
    assume {:partition} $exception != $null;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon15;

  anon37_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon34_Then:
    assume {:partition} $exception != $null;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon11;

  anon35_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon32_Then:
    assume {:partition} $exception != $null;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon7;

  anon33_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$decryptRange$java.nio.channels.SeekableByteChannel_java.io.OutputStream_long_long($this: ref, 
    $in_parameter__0: ref, 
    $in_parameter__1: ref, 
    $in_parameter__2: int, 
    $in_parameter__3: int)
   returns ($return: ref, $exception: ref)
{
  var $fakelocal_4: ref;
  var $fakelocal_8: ref;
  var l1: int;
  var $fakelocal_5: ref;
  var r1: ref;
  var $l7: int;
  var $fakelocal_2: ref;
  var l0: int;
  var l3: int;
  var $fakelocal_7: ref;
  var $r14: ref;
  var r19: ref;
  var r16: ref;
  var r5: ref;
  var $fakelocal_0: ref;
  var r2: ref;
  var r17: ref;
  var $fakelocal_3: ref;
  var $fakelocal_9: ref;
  var $r10: ref;
  var $l6: int;
  var r4: ref;
  var i2: int;
  var r3: ref;
  var $r11: ref;
  var l4: int;
  var r6: ref;
  var r0: ref;
  var l5: int;
  var r18: ref;
  var $fakelocal_1: ref;
  var $fakelocal_6: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$in_parameter__0, $type] <: java.nio.channels.SeekableByteChannel;
    assume $heap[$return, $type] <: java.lang.Long;
    assume $heap[$in_parameter__1, $type] <: java.io.OutputStream;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__2;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__3;
    assert {:sourceloc "Aes256Cryptor.java", 545, -1, -1, -1} true;
    goto anon28_Then, anon28_Else;

  anon28_Else:
    assume {:partition} r1 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon28_Then:
    assume {:partition} r1 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $fakelocal_1, $exception := java.nio.channels.SeekableByteChannel$position$long(r1, 0);
    goto anon29_Then, anon29_Else;

  anon29_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "Aes256Cryptor.java", 546, -1, -1, -1} true;
    call r3, $exception := java.nio.ByteBuffer$allocate$int(16);
    assert {:sourceloc "Aes256Cryptor.java", 547, -1, -1, -1} true;
    call i2, $exception := java.nio.channels.SeekableByteChannel$read$java.nio.ByteBuffer(r1, r3);
    goto anon31_Then, anon31_Else;

  anon31_Else:
    assume {:partition} $exception == $null;
    goto anon11;

  anon11:
    assert {:sourceloc "Aes256Cryptor.java", 550, -1, -1, -1} true;
    goto anon33_Then, anon33_Else;

  anon33_Else:
    assume {:partition} i2 != 16;
    assert {:sourceloc "Aes256Cryptor.java", 550, -1, -1, -1} {:comment "elseblock"} true;
    goto anon14;

  anon14:
    assert {:sourceloc "Aes256Cryptor.java", 551, -1, -1, -1} true;
    call $fakelocal_2 := $new(java.io.IOException);
    r16 := $fakelocal_2;
    assert {:sourceloc "Aes256Cryptor.java", 551, -1, -1, -1} true;
    call $exception := java.io.IOException$$la$init$ra$$java.lang.String(r16, $StringConst20);
    assert {:sourceloc "Aes256Cryptor.java", 551, -1, -1, -1} true;
    $exception := r16;
    goto block103;

  block103:
    return;

  anon33_Then:
    assume {:partition} i2 == 16;
    assert {:sourceloc "Aes256Cryptor.java", 550, -1, -1, -1} {:comment "thenblock"} true;
    goto block102;

  block102:
    assert {:sourceloc "Aes256Cryptor.java", 555, -1, -1, -1} true;
    goto anon34_Then, anon34_Else;

  anon34_Else:
    assume {:partition} 16 == 0;
    call $fakelocal_3 := $new(java.lang.ArithmeticException);
    $return := $null;
    $exception := $fakelocal_3;
    return;

  anon34_Then:
    assume {:partition} 16 != 0;
    $exception := $exception;
    goto anon17;

  anon17:
    l3 := $divInt(l0, 16);
    assert {:sourceloc "Aes256Cryptor.java", 556, -1, -1, -1} true;
    l4 := $mulInt(l3, 16);
    assert {:sourceloc "Aes256Cryptor.java", 557, -1, -1, -1} true;
    l5 := l0 - l4;
    assert {:sourceloc "Aes256Cryptor.java", 558, -1, -1, -1} true;
    goto anon35_Then, anon35_Else;

  anon35_Else:
    assume {:partition} r3 == $null;
    call $fakelocal_4 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_4;
    return;

  anon35_Then:
    assume {:partition} r3 != $null;
    $exception := $exception;
    goto anon20;

  anon20:
    call $fakelocal_5, $exception := java.nio.ByteBuffer$putLong$int_long(r3, 8, l3);
    assert {:sourceloc "Aes256Cryptor.java", 561, -1, -1, -1} true;
    $l6 := 64 + l4;
    assert {:sourceloc "Aes256Cryptor.java", 561, -1, -1, -1} true;
    call $fakelocal_6, $exception := java.nio.channels.SeekableByteChannel$position$long(r1, $l6);
    goto anon36_Then, anon36_Else;

  anon36_Else:
    assume {:partition} $exception == $null;
    goto anon24;

  anon24:
    assert {:sourceloc "Aes256Cryptor.java", 564, -1, -1, -1} true;
    $r10 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 564, -1, -1, -1} true;
    call $r11, $exception := java.nio.ByteBuffer$array$(r3);
    assert {:sourceloc "Aes256Cryptor.java", 564, -1, -1, -1} true;
    call r4, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesCtrCipher$javax.crypto.SecretKey_byte$lp$$rp$_int(r0, $r10, $r11, 2);
    assert {:sourceloc "Aes256Cryptor.java", 567, -1, -1, -1} true;
    call $fakelocal_7 := $new(org.cryptomator.crypto.io.SeekableByteChannelInputStream);
    r17 := $fakelocal_7;
    assert {:sourceloc "Aes256Cryptor.java", 567, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.io.SeekableByteChannelInputStream$$la$init$ra$$java.nio.channels.SeekableByteChannel(r17, r1);
    assert {:sourceloc "Aes256Cryptor.java", 567, -1, -1, -1} true;
    r5 := r17;
    assert {:sourceloc "Aes256Cryptor.java", 568, -1, -1, -1} true;
    call $fakelocal_8 := $new(javax.crypto.CipherInputStream);
    r18 := $fakelocal_8;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    goto anon38_Then, anon38_Else;

  anon38_Else:
    assume {:partition} !($heap[r5, $type] <: java.io.InputStream);
    call $fakelocal_9 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_9;
    return;

  anon38_Then:
    assume {:partition} $heap[r5, $type] <: java.io.InputStream;
    $exception := $exception;
    goto anon27;

  anon27:
    r19 := r5;
    assert {:sourceloc "Aes256Cryptor.java", 568, -1, -1, -1} true;
    call $exception := javax.crypto.CipherInputStream$$la$init$ra$$java.io.InputStream_javax.crypto.Cipher(r18, r19, r4);
    assert {:sourceloc "Aes256Cryptor.java", 568, -1, -1, -1} true;
    r6 := r18;
    assert {:sourceloc "Aes256Cryptor.java", 569, -1, -1, -1} true;
    call $l7, $exception := org.apache.commons.io.IOUtils$copyLarge$java.io.InputStream_java.io.OutputStream_long_long(r6, r2, l5, l1);
    assert {:sourceloc "Aes256Cryptor.java", 569, -1, -1, -1} true;
    call $r14, $exception := java.lang.Long$valueOf$long($l7);
    assert {:sourceloc "Aes256Cryptor.java", 569, -1, -1, -1} true;
    $return := $r14;
    goto block103;

  anon36_Then:
    assume {:partition} $exception != $null;
    goto anon37_Then, anon37_Else;

  anon37_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon24;

  anon37_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon31_Then:
    assume {:partition} $exception != $null;
    goto anon32_Then, anon32_Else;

  anon32_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon11;

  anon32_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon29_Then:
    assume {:partition} $exception != $null;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon7;

  anon30_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$encryptFile$java.io.InputStream_java.nio.channels.SeekableByteChannel($this: ref, $in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: ref, $exception: ref)
{
  var r13: ref;
  var $fakelocal_20: ref;
  var r4: ref;
  var $fakelocal_30: int;
  var $l5: int;
  var r39: ref;
  var $fakelocal_12: ref;
  var $fakelocal_6: ref;
  var $fakelocal_22: ref;
  var $fakelocal_19: ref;
  var $fakelocal_1: ref;
  var $fakelocal_25: ref;
  var $fakelocal_14: ref;
  var $fakelocal_7: int;
  var $r26: ref;
  var r9: ref;
  var $r16: ref;
  var $fakelocal_16: ref;
  var $fakelocal_2: ref;
  var $i2: int;
  var r12: ref;
  var $fakelocal_21: ref;
  var $fakelocal_13: ref;
  var r40: ref;
  var $fakelocal_26: ref;
  var $d4: int;
  var $r21: ref;
  var r44: ref;
  var $fakelocal_0: ref;
  var $r19: ref;
  var $fakelocal_5: int;
  var $r20: ref;
  var $fakelocal_24: ref;
  var r42: ref;
  var r41: ref;
  var r8: ref;
  var $fakelocal_10: ref;
  var $fakelocal_11: ref;
  var $fakelocal_28: int;
  var r0: ref;
  var r6: ref;
  var r1: ref;
  var $d5: int;
  var $l6: int;
  var r2: ref;
  var $r36: ref;
  var r38: ref;
  var i10: int;
  var $fakelocal_15: ref;
  var $fakelocal_29: ref;
  var $d3: int;
  var r14: ref;
  var r7: ref;
  var $r30: ref;
  var r11: ref;
  var $fakelocal_23: ref;
  var $r29: ref;
  var r10: ref;
  var $fakelocal_4: ref;
  var $fakelocal_17: ref;
  var i0: int;
  var r3: ref;
  var $fakelocal_9: ref;
  var $fakelocal_3: ref;
  var $d0: int;
  var r45: ref;
  var $fakelocal_18: ref;
  var $fakelocal_8: int;
  var $d2: int;
  var r43: ref;
  var $fakelocal_27: ref;
  var $l7: int;
  var $d1: int;
  var r5: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.lang.Long;
    assume $heap[$in_parameter__0, $type] <: java.io.InputStream;
    assume $heap[$in_parameter__1, $type] <: java.nio.channels.SeekableByteChannel;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__0;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r2 := $in_parameter__1;
    assert {:sourceloc "Aes256Cryptor.java", 575, -1, -1, -1} true;
    goto anon100_Then, anon100_Else;

  anon100_Else:
    assume {:partition} r2 == $null;
    call $fakelocal_0 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_0;
    return;

  anon100_Then:
    assume {:partition} r2 != $null;
    $exception := $exception;
    goto anon3;

  anon3:
    call $fakelocal_1, $exception := java.nio.channels.SeekableByteChannel$truncate$long(r2, 0);
    goto anon101_Then, anon101_Else;

  anon101_Else:
    assume {:partition} $exception == $null;
    goto anon7;

  anon7:
    assert {:sourceloc "Aes256Cryptor.java", 578, -1, -1, -1} true;
    call $r16, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$randomData$int(r0, 16);
    assert {:sourceloc "Aes256Cryptor.java", 578, -1, -1, -1} true;
    call r3, $exception := java.nio.ByteBuffer$wrap$byte$lp$$rp$($r16);
    assert {:sourceloc "Aes256Cryptor.java", 579, -1, -1, -1} true;
    goto anon103_Then, anon103_Else;

  anon103_Else:
    assume {:partition} r3 == $null;
    call $fakelocal_2 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_2;
    return;

  anon103_Then:
    assume {:partition} r3 != $null;
    $exception := $exception;
    goto anon10;

  anon10:
    call $fakelocal_3, $exception := java.nio.ByteBuffer$putLong$int_long(r3, 8, 0);
    assert {:sourceloc "Aes256Cryptor.java", 580, -1, -1, -1} true;
    call $fakelocal_4, $exception := java.nio.Buffer$position$int(r3, 0);
    assert {:sourceloc "Aes256Cryptor.java", 581, -1, -1, -1} true;
    call $fakelocal_5, $exception := java.nio.channels.SeekableByteChannel$write$java.nio.ByteBuffer(r2, r3);
    goto anon104_Then, anon104_Else;

  anon104_Else:
    assume {:partition} $exception == $null;
    goto anon14;

  anon14:
    assert {:sourceloc "Aes256Cryptor.java", 584, -1, -1, -1} true;
    $r19 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$hMacMasterKey263];
    assert {:sourceloc "Aes256Cryptor.java", 584, -1, -1, -1} true;
    call r4, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$hmacSha256$javax.crypto.SecretKey(r0, $r19);
    assert {:sourceloc "Aes256Cryptor.java", 585, -1, -1, -1} true;
    $r20 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 585, -1, -1, -1} true;
    call $r21, $exception := java.nio.ByteBuffer$array$(r3);
    assert {:sourceloc "Aes256Cryptor.java", 585, -1, -1, -1} true;
    call r5, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesCtrCipher$javax.crypto.SecretKey_byte$lp$$rp$_int(r0, $r20, $r21, 1);
    assert {:sourceloc "Aes256Cryptor.java", 588, -1, -1, -1} true;
    goto anon106_Then, anon106_Else;

  anon106_Else:
    assume {:partition} r4 == $null;
    call $fakelocal_6 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_6;
    return;

  anon106_Then:
    assume {:partition} r4 != $null;
    $exception := $exception;
    goto anon17;

  anon17:
    call $i2, $exception := javax.crypto.Mac$getMacLength$(r4);
    assert {:sourceloc "Aes256Cryptor.java", 588, -1, -1, -1} true;
    call r6, $exception := java.nio.ByteBuffer$allocate$int($i2);
    assert {:sourceloc "Aes256Cryptor.java", 589, -1, -1, -1} true;
    call $fakelocal_7, $exception := java.nio.channels.SeekableByteChannel$write$java.nio.ByteBuffer(r2, r6);
    goto anon107_Then, anon107_Else;

  anon107_Else:
    assume {:partition} $exception == $null;
    goto anon21;

  anon21:
    assert {:sourceloc "Aes256Cryptor.java", 592, -1, -1, -1} true;
    call r7, $exception := java.nio.ByteBuffer$allocate$int(16);
    assert {:sourceloc "Aes256Cryptor.java", 593, -1, -1, -1} true;
    call $fakelocal_8, $exception := java.nio.channels.SeekableByteChannel$write$java.nio.ByteBuffer(r2, r7);
    goto anon109_Then, anon109_Else;

  anon109_Else:
    assume {:partition} $exception == $null;
    goto anon25;

  anon25:
    assert {:sourceloc "Aes256Cryptor.java", 596, -1, -1, -1} true;
    call $fakelocal_9 := $new(org.cryptomator.crypto.io.SeekableByteChannelOutputStream);
    r40 := $fakelocal_9;
    assert {:sourceloc "Aes256Cryptor.java", 596, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.io.SeekableByteChannelOutputStream$$la$init$ra$$java.nio.channels.SeekableByteChannel(r40, r2);
    assert {:sourceloc "Aes256Cryptor.java", 596, -1, -1, -1} true;
    r8 := r40;
    assert {:sourceloc "Aes256Cryptor.java", 597, -1, -1, -1} true;
    call $fakelocal_10 := $new(org.cryptomator.crypto.aes256.MacOutputStream);
    r41 := $fakelocal_10;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    goto anon111_Then, anon111_Else;

  anon111_Else:
    assume {:partition} !($heap[r8, $type] <: java.io.OutputStream);
    call $fakelocal_11 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_11;
    return;

  anon111_Then:
    assume {:partition} $heap[r8, $type] <: java.io.OutputStream;
    $exception := $exception;
    goto anon28;

  anon28:
    r44 := r8;
    assert {:sourceloc "Aes256Cryptor.java", 597, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.MacOutputStream$$la$init$ra$$java.io.OutputStream_javax.crypto.Mac(r41, r44, r4);
    assert {:sourceloc "Aes256Cryptor.java", 597, -1, -1, -1} true;
    r9 := r41;
    assert {:sourceloc "Aes256Cryptor.java", 598, -1, -1, -1} true;
    call $fakelocal_12 := $new(javax.crypto.CipherOutputStream);
    r42 := $fakelocal_12;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    goto anon112_Then, anon112_Else;

  anon112_Else:
    assume {:partition} !($heap[r9, $type] <: java.io.OutputStream);
    call $fakelocal_13 := $new(java.lang.ClassCastException);
    $return := $null;
    $exception := $fakelocal_13;
    return;

  anon112_Then:
    assume {:partition} $heap[r9, $type] <: java.io.OutputStream;
    $exception := $exception;
    goto anon31;

  anon31:
    r45 := r9;
    assert {:sourceloc "Aes256Cryptor.java", 598, -1, -1, -1} true;
    call $exception := javax.crypto.CipherOutputStream$$la$init$ra$$java.io.OutputStream_javax.crypto.Cipher(r42, r45, r5);
    assert {:sourceloc "Aes256Cryptor.java", 598, -1, -1, -1} true;
    r10 := r42;
    assert {:sourceloc "Aes256Cryptor.java", 599, -1, -1, -1} true;
    call $l5, $exception := org.apache.commons.io.IOUtils$copyLarge$java.io.InputStream_java.io.OutputStream(r1, r10);
    assert {:sourceloc "Aes256Cryptor.java", 599, -1, -1, -1} true;
    call r11, $exception := java.lang.Long$valueOf$long($l5);
    assert {:sourceloc "Aes256Cryptor.java", 602, -1, -1, -1} true;
    goto anon113_Then, anon113_Else;

  anon113_Else:
    assume {:partition} r6 == $null;
    call $fakelocal_14 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_14;
    return;

  anon113_Then:
    assume {:partition} r6 != $null;
    $exception := $exception;
    goto anon34;

  anon34:
    call $fakelocal_15, $exception := java.nio.Buffer$position$int(r6, 0);
    assert {:sourceloc "Aes256Cryptor.java", 603, -1, -1, -1} true;
    call $r26, $exception := javax.crypto.Mac$doFinal$(r4);
    goto anon114_Then, anon114_Else;

  anon114_Else:
    assume {:partition} $exception == $null;
    goto anon38;

  anon38:
    assert {:sourceloc "Aes256Cryptor.java", 603, -1, -1, -1} true;
    call $fakelocal_16, $exception := java.nio.ByteBuffer$put$byte$lp$$rp$(r6, $r26);
    assert {:sourceloc "Aes256Cryptor.java", 606, -1, -1, -1} true;
    call $d0, $exception := java.lang.Math$random$();
    assert {:sourceloc "Aes256Cryptor.java", 606, -1, -1, -1} true;
    $d1 := $realOp32117($d0, $DoubleConst0);
    assert {:sourceloc "Aes256Cryptor.java", 606, -1, -1, -1} true;
    goto anon116_Then, anon116_Else;

  anon116_Else:
    assume {:partition} r11 == $null;
    call $fakelocal_17 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_17;
    return;

  anon116_Then:
    assume {:partition} r11 != $null;
    $exception := $exception;
    goto anon41;

  anon41:
    call $l6, $exception := java.lang.Long$longValue$(r11);
    assert {:sourceloc "Aes256Cryptor.java", 606, -1, -1, -1} true;
    $d2 := $l6;
    assert {:sourceloc "Aes256Cryptor.java", 606, -1, -1, -1} true;
    $d3 := $realOp32086($d1, $d2);
    assert {:sourceloc "Aes256Cryptor.java", 606, -1, -1, -1} true;
    $d4 := $realOp32241($d3, $DoubleConst1);
    assert {:sourceloc "Aes256Cryptor.java", 606, -1, -1, -1} true;
    call $d5, $exception := java.lang.Math$ceil$double($d4);
    assert {:sourceloc "Aes256Cryptor.java", 606, -1, -1, -1} true;
    i0 := $d5;
    assert {:sourceloc "Aes256Cryptor.java", 607, -1, -1, -1} true;
    call $fakelocal_18 := $new($intArrayType);
    $arrSizeHeap := $arrSizeHeap[$fakelocal_18 := 16];
    r12 := $fakelocal_18;
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} true;
    i10 := 0;
    goto block104;

  block104:
    call $return, $exception, i10 := org.cryptomator.crypto.aes256.Aes256Cryptor$encryptFile$java.io.InputStream_java.nio.channels.SeekableByteChannel_loop_block104($return, $exception, r12, i10, r10, i0);
    goto block104_last;

  anon117_Else:
    assume {:partition} i0 > i10;
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} {:comment "elseblock"} true;
    goto anon44;

  anon44:
    assert {:sourceloc "Aes256Cryptor.java", 609, -1, -1, -1} true;
    call $exception := java.io.OutputStream$write$byte$lp$$rp$(r10, r12);
    goto anon118_Then, anon118_Else;

  anon118_Else:
    assume {:partition} $exception == $null;
    goto anon48;

  anon48:
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} true;
    i10 := i10 + 16;
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} true;
    goto anon48_dummy;

  anon118_Then:
    assume {:partition} $exception != $null;
    goto anon119_Then, anon119_Else;

  anon119_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon48;

  anon119_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon117_Then:
    assume {:partition} i10 >= i0;
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} {:comment "thenblock"} true;
    goto block105;

  block105:
    assert {:sourceloc "Aes256Cryptor.java", 611, -1, -1, -1} true;
    call $exception := java.io.OutputStream$flush$(r10);
    goto anon120_Then, anon120_Else;

  anon120_Else:
    assume {:partition} $exception == $null;
    goto block106;

  block106:
    assert {:sourceloc "Aes256Cryptor.java", 615, -1, -1, -1} true;
    call r38, $exception := java.nio.ByteBuffer$allocate$int(8);
    goto anon122_Then, anon122_Else;

  anon122_Else:
    assume {:partition} $exception == $null;
    goto anon55;

  anon55:
    assert {:sourceloc "Aes256Cryptor.java", 616, -1, -1, -1} true;
    call $l7, $exception := java.lang.Long$longValue$(r11);
    goto anon124_Then, anon124_Else;

  anon124_Else:
    assume {:partition} $exception == $null;
    goto anon59;

  anon59:
    assert {:sourceloc "Aes256Cryptor.java", 616, -1, -1, -1} true;
    goto anon126_Then, anon126_Else;

  anon126_Else:
    assume {:partition} r38 == $null;
    call $fakelocal_19 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_19;
    return;

  anon126_Then:
    assume {:partition} r38 != $null;
    $exception := $exception;
    goto anon62;

  anon62:
    call $fakelocal_20, $exception := java.nio.ByteBuffer$putLong$long(r38, $l7);
    goto anon127_Then, anon127_Else;

  anon127_Else:
    assume {:partition} $exception == $null;
    goto anon66;

  anon66:
    assert {:sourceloc "Aes256Cryptor.java", 617, -1, -1, -1} true;
    $r29 := $heap[r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 617, -1, -1, -1} true;
    call r13, $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$aesEcbCipher$javax.crypto.SecretKey_int(r0, $r29, 1);
    assert {:sourceloc "Aes256Cryptor.java", 618, -1, -1, -1} true;
    call $r30, $exception := java.nio.ByteBuffer$array$(r38);
    goto anon129_Then, anon129_Else;

  anon129_Else:
    assume {:partition} $exception == $null;
    goto anon70;

  anon70:
    assert {:sourceloc "Aes256Cryptor.java", 618, -1, -1, -1} true;
    goto anon131_Then, anon131_Else;

  anon131_Else:
    assume {:partition} r13 == $null;
    call $fakelocal_21 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_21;
    return;

  anon131_Then:
    assume {:partition} r13 != $null;
    $exception := $exception;
    goto anon73;

  anon73:
    call r14, $exception := javax.crypto.Cipher$doFinal$byte$lp$$rp$(r13, $r30);
    goto anon132_Then, anon132_Else;

  anon132_Else:
    assume {:partition} $exception == $null;
    goto anon77;

  anon77:
    assert {:sourceloc "Aes256Cryptor.java", 619, -1, -1, -1} true;
    goto anon134_Then, anon134_Else;

  anon134_Else:
    assume {:partition} r7 == $null;
    call $fakelocal_22 := $new(java.lang.RuntimeException);
    $return := $null;
    $exception := $fakelocal_22;
    return;

  anon134_Then:
    assume {:partition} r7 != $null;
    $exception := $exception;
    goto anon80;

  anon80:
    call $fakelocal_23, $exception := java.nio.Buffer$position$int(r7, 0);
    goto anon135_Then, anon135_Else;

  anon135_Else:
    assume {:partition} $exception == $null;
    goto anon84;

  anon84:
    assert {:sourceloc "Aes256Cryptor.java", 620, -1, -1, -1} true;
    call $fakelocal_24, $exception := java.nio.ByteBuffer$put$byte$lp$$rp$(r7, r14);
    goto anon137_Then, anon137_Else;

  anon137_Else:
    assume {:partition} $exception == $null;
    goto block108;

  block108:
    assert {:sourceloc "Aes256Cryptor.java", 623, -1, -1, -1} true;
    goto block109;

  block109:
    assert {:sourceloc "Aes256Cryptor.java", 626, -1, -1, -1} true;
    call $fakelocal_26, $exception := java.nio.channels.SeekableByteChannel$position$long(r2, 16);
    goto anon139_Then, anon139_Else;

  anon139_Else:
    assume {:partition} $exception == $null;
    goto anon91;

  anon91:
    assert {:sourceloc "Aes256Cryptor.java", 627, -1, -1, -1} true;
    call $fakelocal_27, $exception := java.nio.Buffer$position$int(r6, 0);
    assert {:sourceloc "Aes256Cryptor.java", 628, -1, -1, -1} true;
    call $fakelocal_28, $exception := java.nio.channels.SeekableByteChannel$write$java.nio.ByteBuffer(r2, r6);
    goto anon141_Then, anon141_Else;

  anon141_Else:
    assume {:partition} $exception == $null;
    goto anon95;

  anon95:
    assert {:sourceloc "Aes256Cryptor.java", 629, -1, -1, -1} true;
    call $fakelocal_29, $exception := java.nio.Buffer$position$int(r7, 0);
    assert {:sourceloc "Aes256Cryptor.java", 630, -1, -1, -1} true;
    call $fakelocal_30, $exception := java.nio.channels.SeekableByteChannel$write$java.nio.ByteBuffer(r2, r7);
    goto anon143_Then, anon143_Else;

  anon143_Else:
    assume {:partition} $exception == $null;
    goto anon99;

  anon99:
    assert {:sourceloc "Aes256Cryptor.java", 632, -1, -1, -1} true;
    $return := r11;
    goto block110;

  block110:
    return;

  anon143_Then:
    assume {:partition} $exception != $null;
    goto anon144_Then, anon144_Else;

  anon144_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon99;

  anon144_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon141_Then:
    assume {:partition} $exception != $null;
    goto anon142_Then, anon142_Else;

  anon142_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon95;

  anon142_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon139_Then:
    assume {:partition} $exception != $null;
    goto anon140_Then, anon140_Else;

  anon140_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon91;

  anon140_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon137_Then:
    assume {:partition} $exception != $null;
    goto anon138_Then, anon138_Else;

  anon138_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto block108;

  anon138_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block107;

  block107:
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r36 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 621, -1, -1, -1} true;
    r39 := $r36;
    assert {:sourceloc "Aes256Cryptor.java", 622, -1, -1, -1} true;
    call $fakelocal_25 := $new(java.lang.IllegalStateException);
    r43 := $fakelocal_25;
    assert {:sourceloc "Aes256Cryptor.java", 622, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.Throwable(r43, r39);
    assert {:sourceloc "Aes256Cryptor.java", 622, -1, -1, -1} true;
    $exception := r43;
    goto block110;

  anon135_Then:
    assume {:partition} $exception != $null;
    goto anon136_Then, anon136_Else;

  anon136_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon84;

  anon136_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block107;

  anon132_Then:
    assume {:partition} $exception != $null;
    goto anon133_Then, anon133_Else;

  anon133_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.BadPaddingException);
    assert {:clone} true;
    goto anon77;

  anon133_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.BadPaddingException;
    $return := $null;
    goto block107;

  anon129_Then:
    assume {:partition} $exception != $null;
    goto anon130_Then, anon130_Else;

  anon130_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon70;

  anon130_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block107;

  anon127_Then:
    assume {:partition} $exception != $null;
    goto anon128_Then, anon128_Else;

  anon128_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon66;

  anon128_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block107;

  anon124_Then:
    assume {:partition} $exception != $null;
    goto anon125_Then, anon125_Else;

  anon125_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon59;

  anon125_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block107;

  anon122_Then:
    assume {:partition} $exception != $null;
    goto anon123_Then, anon123_Else;

  anon123_Else:
    assume {:partition} !($heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon55;

  anon123_Then:
    assume {:partition} $heap[$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    goto block107;

  anon120_Then:
    assume {:partition} $exception != $null;
    goto anon121_Then, anon121_Else;

  anon121_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto block106;

  anon121_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon114_Then:
    assume {:partition} $exception != $null;
    goto anon115_Then, anon115_Else;

  anon115_Else:
    assume {:partition} !($heap[$exception, $type] <: java.lang.IllegalStateException);
    assert {:clone} true;
    goto anon38;

  anon115_Then:
    assume {:partition} $heap[$exception, $type] <: java.lang.IllegalStateException;
    $return := $null;
    return;

  anon109_Then:
    assume {:partition} $exception != $null;
    goto anon110_Then, anon110_Else;

  anon110_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon25;

  anon110_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon107_Then:
    assume {:partition} $exception != $null;
    goto anon108_Then, anon108_Else;

  anon108_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon21;

  anon108_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon104_Then:
    assume {:partition} $exception != $null;
    goto anon105_Then, anon105_Else;

  anon105_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon14;

  anon105_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon101_Then:
    assume {:partition} $exception != $null;
    goto anon102_Then, anon102_Else;

  anon102_Else:
    assume {:partition} !($heap[$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon7;

  anon102_Then:
    assume {:partition} $heap[$exception, $type] <: java.io.IOException;
    $return := $null;
    return;

  anon48_dummy:
    assume false;
    return;

  block104_last:
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} true;
    goto anon117_Then, anon117_Else;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$getPayloadFilesFilter$($this: ref) returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var $fakelocal_0: ref;
  var $r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $heap[$this, $type] <: org.cryptomator.crypto.aes256.Aes256Cryptor;
    assume {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} $this != $null;
    assume $heap[$return, $type] <: java.nio.file.DirectoryStream$Filter;
    $exception := $null;
    assert {:sourceloc "Aes256Cryptor.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    call $fakelocal_0 := $new(org.cryptomator.crypto.aes256.Aes256Cryptor$1);
    $r1 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    call $exception := org.cryptomator.crypto.aes256.Aes256Cryptor$1$$la$init$ra$$org.cryptomator.crypto.aes256.Aes256Cryptor($r1, r0);
    assert {:sourceloc "Aes256Cryptor.java", 637, -1, -1, -1} true;
    $return := $r1;
    goto block111;

  block111:
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$$la$clinit$ra$$() returns ($exception: ref)
{
  var $fakelocal_0: ref;
  var r3: ref;
  var $r2: ref;
  var i0: int;
  var $i1: int;
  var $r0: ref;
  var $r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    goto block112;

  block112:
    assert {:sourceloc "Aes256Cryptor.java", 97, -1, -1, -1} true;
    call $r0, $exception := java.security.SecureRandom$getInstance$java.lang.String($StringConst21);
    goto anon12_Then, anon12_Else;

  anon12_Else:
    assume {:partition} $exception == $null;
    goto anon4;

  anon4:
    assert {:sourceloc "Aes256Cryptor.java", 97, -1, -1, -1} true;
    java.security.SecureRandom$org.cryptomator.crypto.aes256.Aes256Cryptor$SECURE_PRNG260 := $r0;
    assert {:sourceloc "Aes256Cryptor.java", 98, -1, -1, -1} true;
    call i0, $exception := javax.crypto.Cipher$getMaxAllowedKeyLength$java.lang.String($StringConst0);
    goto anon14_Then, anon14_Else;

  anon14_Else:
    assume {:partition} $exception == $null;
    goto anon8;

  anon8:
    assert {:sourceloc "Aes256Cryptor.java", 99, -1, -1, -1} true;
    goto anon16_Then, anon16_Else;

  anon16_Else:
    assume {:partition} 256 <= i0;
    assert {:sourceloc "Aes256Cryptor.java", 99, -1, -1, -1} {:comment "elseblock"} true;
    goto anon11;

  anon11:
    assert {:sourceloc "Aes256Cryptor.java", 103, -1, -1, -1} true;
    $i1 := 256;
    assert {:sourceloc "Aes256Cryptor.java", 103, -1, -1, -1} true;
    goto block115;

  block115:
    assert {:sourceloc "Aes256Cryptor.java", 99, -1, -1, -1} true;
    int$org.cryptomator.crypto.aes256.Aes256Cryptor$AES_KEY_LENGTH_IN_BITS0 := $i1;
    goto block116;

  block116:
    assert {:sourceloc "Aes256Cryptor.java", 102, -1, -1, -1} true;
    goto block117;

  block117:
    assert {:sourceloc "Aes256Cryptor.java", 103, -1, -1, -1} true;
    goto block118;

  block118:
    return;

  anon16_Then:
    assume {:partition} i0 < 256;
    assert {:sourceloc "Aes256Cryptor.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block114;

  block114:
    assert {:sourceloc "Aes256Cryptor.java", 103, -1, -1, -1} true;
    $i1 := i0;
    goto block115;

  anon14_Then:
    assume {:partition} $exception != $null;
    goto anon15_Then, anon15_Else;

  anon15_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon8;

  anon15_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block113;

  block113:
    assert {:sourceloc "Aes256Cryptor.java", 102, -1, -1, -1} true;
    assume $heap[$exception, $type] <: java.lang.Throwable;
    $r1 := $exception;
    assert {:sourceloc "Aes256Cryptor.java", 100, -1, -1, -1} true;
    r3 := $r1;
    assert {:sourceloc "Aes256Cryptor.java", 101, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.IllegalStateException);
    $r2 := $fakelocal_0;
    assert {:sourceloc "Aes256Cryptor.java", 101, -1, -1, -1} true;
    call $exception := java.lang.IllegalStateException$$la$init$ra$$java.lang.String_java.lang.Throwable($r2, $StringConst3, r3);
    assert {:sourceloc "Aes256Cryptor.java", 101, -1, -1, -1} true;
    $exception := $r2;
    goto block118;

  anon12_Then:
    assume {:partition} $exception != $null;
    goto anon13_Then, anon13_Else;

  anon13_Else:
    assume {:partition} !($heap[$exception, $type] <: java.security.NoSuchAlgorithmException);
    assert {:clone} true;
    goto anon4;

  anon13_Then:
    assume {:partition} $heap[$exception, $type] <: java.security.NoSuchAlgorithmException;
    goto block113;
}



implementation java.lang.Boolean$$la$init$ra$$boolean($this: ref, $in_parameter__0: int) returns ($exception: ref)
{
  var z0: int;
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 6, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Boolean.java", 7, -1, -1, -1} true;
    $heap := $heap[r0, boolean$java.lang.Boolean$value0 := z0];
    assert {:sourceloc "Boolean.java", 8, -1, -1, -1} true;
    goto block119;

  block119:
    return;
}



implementation java.lang.Boolean$valueOf$boolean($in_parameter__0: int) returns ($return: ref, $exception: ref)
{
  var $fakelocal_0: ref;
  var $r0: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$return, $type] <: java.lang.Boolean;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $fakelocal_0 := $new(java.lang.Boolean);
    $r0 := $fakelocal_0;
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    call $exception := java.lang.Boolean$$la$init$ra$$boolean($r0, z0);
    assert {:sourceloc "Boolean.java", 11, -1, -1, -1} true;
    $return := $r0;
    goto block120;

  block120:
    return;
}



implementation java.lang.Boolean$booleanValue$($this: ref) returns ($return: int, $exception: ref)
{
  var r0: ref;
  var $z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $heap[$this, $type] <: java.lang.Boolean;
    assume {:sourceloc "Boolean.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Boolean.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $z0 := $heap[r0, boolean$java.lang.Boolean$value0];
    assert {:sourceloc "Boolean.java", 15, -1, -1, -1} true;
    $return := $z0;
    goto block121;

  block121:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$$la$init$ra$$($this: ref) returns ($exception: ref)
{
  var r0: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} $heap[$this, $type] <: sg.edu.nus.comp.tsunami.safe.Safe;
    assume {:sourceloc "Safe.java", -1, -1, -1, -1} $this != $null;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $this;
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    call $exception := java.lang.Object$$la$init$ra$$(r0);
    assert {:sourceloc "Safe.java", 3, -1, -1, -1} true;
    goto block122;

  block122:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$not$boolean($in_parameter__0: int) returns ($return: int, $exception: ref)
{
  var z0: int;
  var z1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
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
    goto block123;

  block123:
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    z1 := 1;
    goto block124;

  block124:
    assert {:sourceloc "Safe.java", 8, -1, -1, -1} true;
    $return := z1;
    goto block125;

  block125:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 7, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block124;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 6, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block123;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$and$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z1: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $z2 := $bitAnd(z0, z1);
    assert {:sourceloc "Safe.java", 12, -1, -1, -1} true;
    $return := $z2;
    goto block126;

  block126:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$or$boolean_boolean($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $z2: int;
  var z0: int;
  var z1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $z2 := $bitOr(z0, z1);
    assert {:sourceloc "Safe.java", 16, -1, -1, -1} true;
    $return := $z2;
    goto block127;

  block127:
    return;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var $b3: int;
  var l0: int;
  var $b2: int;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 20, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b2;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 1;
    goto block128;

  block128:
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b3;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    z0 := 0;
    goto block129;

  block129:
    assert {:sourceloc "Safe.java", 23, -1, -1, -1} true;
    $return := z0;
    goto block130;

  block130:
    return;

  anon8_Then:
    assume {:partition} $b3 > 0;
    assert {:sourceloc "Safe.java", 22, -1, -1, -1} {:comment "thenblock"} true;
    goto block129;

  anon7_Then:
    assume {:partition} $b2 <= 0;
    assert {:sourceloc "Safe.java", 21, -1, -1, -1} {:comment "thenblock"} true;
    goto block128;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b3: int;
  var $b2: int;
  var z0: int;
  var l0: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 27, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b2;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 1;
    goto block131;

  block131:
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b3;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    z0 := 0;
    goto block132;

  block132:
    assert {:sourceloc "Safe.java", 30, -1, -1, -1} true;
    $return := z0;
    goto block133;

  block133:
    return;

  anon8_Then:
    assume {:partition} $b3 < 0;
    assert {:sourceloc "Safe.java", 29, -1, -1, -1} {:comment "thenblock"} true;
    goto block132;

  anon7_Then:
    assume {:partition} $b2 >= 0;
    assert {:sourceloc "Safe.java", 28, -1, -1, -1} {:comment "thenblock"} true;
    goto block131;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l1: int;
  var l0: int;
  var $b2: int;
  var z0: int;
  var $b3: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 34, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b2;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 1;
    goto block134;

  block134:
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b3;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    z0 := 0;
    goto block135;

  block135:
    assert {:sourceloc "Safe.java", 37, -1, -1, -1} true;
    $return := z0;
    goto block136;

  block136:
    return;

  anon8_Then:
    assume {:partition} $b3 >= 0;
    assert {:sourceloc "Safe.java", 36, -1, -1, -1} {:comment "thenblock"} true;
    goto block135;

  anon7_Then:
    assume {:partition} $b2 < 0;
    assert {:sourceloc "Safe.java", 35, -1, -1, -1} {:comment "thenblock"} true;
    goto block134;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var l1: int;
  var $b3: int;
  var z0: int;
  var l0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 41, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b2;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 1;
    goto block137;

  block137:
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b3;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    z0 := 0;
    goto block138;

  block138:
    assert {:sourceloc "Safe.java", 44, -1, -1, -1} true;
    $return := z0;
    goto block139;

  block139:
    return;

  anon8_Then:
    assume {:partition} $b3 <= 0;
    assert {:sourceloc "Safe.java", 43, -1, -1, -1} {:comment "thenblock"} true;
    goto block138;

  anon7_Then:
    assume {:partition} $b2 > 0;
    assert {:sourceloc "Safe.java", 42, -1, -1, -1} {:comment "thenblock"} true;
    goto block137;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var l0: int;
  var $b3: int;
  var z0: int;
  var $b2: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 48, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 1;
    goto block140;

  block140:
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    z0 := 0;
    goto block141;

  block141:
    assert {:sourceloc "Safe.java", 51, -1, -1, -1} true;
    $return := z0;
    goto block142;

  block142:
    return;

  anon8_Then:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 50, -1, -1, -1} {:comment "thenblock"} true;
    goto block141;

  anon7_Then:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 49, -1, -1, -1} {:comment "thenblock"} true;
    goto block140;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b2: int;
  var z0: int;
  var l0: int;
  var $b3: int;
  var l1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    l1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 55, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    $b2 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b2 != 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 1;
    goto block143;

  block143:
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    $b3 := $cmpInt(l0, l1);
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b3 == 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    z0 := 0;
    goto block144;

  block144:
    assert {:sourceloc "Safe.java", 58, -1, -1, -1} true;
    $return := z0;
    goto block145;

  block145:
    return;

  anon8_Then:
    assume {:partition} $b3 != 0;
    assert {:sourceloc "Safe.java", 57, -1, -1, -1} {:comment "thenblock"} true;
    goto block144;

  anon7_Then:
    assume {:partition} $b2 == 0;
    assert {:sourceloc "Safe.java", 56, -1, -1, -1} {:comment "thenblock"} true;
    goto block143;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$gt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
  var d1: int;
  var $b0: int;
  var d0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 62, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 < $b0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 1;
    goto block146;

  block146:
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 >= $b1;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    z0 := 0;
    goto block147;

  block147:
    assert {:sourceloc "Safe.java", 65, -1, -1, -1} true;
    $return := z0;
    goto block148;

  block148:
    return;

  anon8_Then:
    assume {:partition} $b1 > 0;
    assert {:sourceloc "Safe.java", 64, -1, -1, -1} {:comment "thenblock"} true;
    goto block147;

  anon7_Then:
    assume {:partition} $b0 <= 0;
    assert {:sourceloc "Safe.java", 63, -1, -1, -1} {:comment "thenblock"} true;
    goto block146;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$lt$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d1: int;
  var $b1: int;
  var z0: int;
  var d0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 69, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 > $b0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 1;
    goto block149;

  block149:
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 <= $b1;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    z0 := 0;
    goto block150;

  block150:
    assert {:sourceloc "Safe.java", 72, -1, -1, -1} true;
    $return := z0;
    goto block151;

  block151:
    return;

  anon8_Then:
    assume {:partition} $b1 < 0;
    assert {:sourceloc "Safe.java", 71, -1, -1, -1} {:comment "thenblock"} true;
    goto block150;

  anon7_Then:
    assume {:partition} $b0 >= 0;
    assert {:sourceloc "Safe.java", 70, -1, -1, -1} {:comment "thenblock"} true;
    goto block149;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$ge$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b1: int;
  var z0: int;
  var d1: int;
  var d0: int;
  var $b0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 76, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 <= $b0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 1;
    goto block152;

  block152:
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 > $b1;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    z0 := 0;
    goto block153;

  block153:
    assert {:sourceloc "Safe.java", 79, -1, -1, -1} true;
    $return := z0;
    goto block154;

  block154:
    return;

  anon8_Then:
    assume {:partition} $b1 >= 0;
    assert {:sourceloc "Safe.java", 78, -1, -1, -1} {:comment "thenblock"} true;
    goto block153;

  anon7_Then:
    assume {:partition} $b0 < 0;
    assert {:sourceloc "Safe.java", 77, -1, -1, -1} {:comment "thenblock"} true;
    goto block152;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$le$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var $b0: int;
  var d0: int;
  var d1: int;
  var z0: int;
  var $b1: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 83, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} 0 >= $b0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 1;
    goto block155;

  block155:
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} 0 < $b1;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    z0 := 0;
    goto block156;

  block156:
    assert {:sourceloc "Safe.java", 86, -1, -1, -1} true;
    $return := z0;
    goto block157;

  block157:
    return;

  anon8_Then:
    assume {:partition} $b1 <= 0;
    assert {:sourceloc "Safe.java", 85, -1, -1, -1} {:comment "thenblock"} true;
    goto block156;

  anon7_Then:
    assume {:partition} $b0 > 0;
    assert {:sourceloc "Safe.java", 84, -1, -1, -1} {:comment "thenblock"} true;
    goto block155;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var d1: int;
  var $b1: int;
  var d0: int;
  var $b0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 90, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 1;
    goto block158;

  block158:
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    z0 := 0;
    goto block159;

  block159:
    assert {:sourceloc "Safe.java", 93, -1, -1, -1} true;
    $return := z0;
    goto block160;

  block160:
    return;

  anon8_Then:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 92, -1, -1, -1} {:comment "thenblock"} true;
    goto block159;

  anon7_Then:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 91, -1, -1, -1} {:comment "thenblock"} true;
    goto block158;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$double_double($in_parameter__0: int, $in_parameter__1: int)
   returns ($return: int, $exception: ref)
{
  var z0: int;
  var $b1: int;
  var d1: int;
  var d0: int;
  var $b0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    d1 := $in_parameter__1;
    assert {:sourceloc "Safe.java", 97, -1, -1, -1} true;
    z0 := 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    $b0 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} $b0 != 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 1;
    goto block161;

  block161:
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    $b1 := $cmpInt(d0, d1);
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} $b1 == 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    z0 := 0;
    goto block162;

  block162:
    assert {:sourceloc "Safe.java", 100, -1, -1, -1} true;
    $return := z0;
    goto block163;

  block163:
    return;

  anon8_Then:
    assume {:partition} $b1 != 0;
    assert {:sourceloc "Safe.java", 99, -1, -1, -1} {:comment "thenblock"} true;
    goto block162;

  anon7_Then:
    assume {:partition} $b0 == 0;
    assert {:sourceloc "Safe.java", 98, -1, -1, -1} {:comment "thenblock"} true;
    goto block161;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$eq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r1: ref;
  var r0: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
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
    goto block164;

  block164:
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    z0 := 0;
    goto block165;

  block165:
    assert {:sourceloc "Safe.java", 107, -1, -1, -1} true;
    $return := z0;
    goto block166;

  block166:
    return;

  anon8_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 106, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block165;

  anon7_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 105, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block164;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$neq$java.lang.Object_java.lang.Object($in_parameter__0: ref, $in_parameter__1: ref)
   returns ($return: int, $exception: ref)
{
  var r0: ref;
  var z0: int;
  var r1: ref;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$in_parameter__0, $type] <: java.lang.Object;
    $exception := $null;
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
    goto block167;

  block167:
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    z0 := 0;
    goto block168;

  block168:
    assert {:sourceloc "Safe.java", 114, -1, -1, -1} true;
    $return := z0;
    goto block169;

  block169:
    return;

  anon8_Then:
    assume {:partition} r0 != r1;
    assert {:sourceloc "Safe.java", 113, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block168;

  anon7_Then:
    assume {:partition} r0 == r1;
    assert {:sourceloc "Safe.java", 112, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block167;
}



implementation sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object($in_parameter__0: int, $in_parameter__1: ref, $in_parameter__2: ref)
   returns ($return: ref, $exception: ref)
{
  var r0: ref;
  var r2: ref;
  var r1: ref;
  var z0: int;

  anon0:
    assume (forall T: javaType :: $heap[$null, $type] <: T);
    assume (forall _r: ref :: $arrSizeHeap[_r] >= 0);
    assume (forall _r: ref :: $stringSizeHeap[_r] >= 0);
    assume $heap[$in_parameter__2, $type] <: java.lang.Object;
    assume $heap[$in_parameter__1, $type] <: java.lang.Object;
    assume $heap[$return, $type] <: java.lang.Object;
    $exception := $null;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    z0 := $in_parameter__0;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r0 := $in_parameter__1;
    assert {:sourceloc "Safe.java", -1, -1, -1, -1} true;
    r1 := $in_parameter__2;
    assert {:sourceloc "Safe.java", 117, -1, -1, -1} true;
    r2 := $null;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} true;
    goto anon7_Then, anon7_Else;

  anon7_Else:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon3;

  anon3:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r0;
    goto block170;

  block170:
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} true;
    goto anon8_Then, anon8_Else;

  anon8_Else:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon6;

  anon6:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    r2 := r1;
    goto block171;

  block171:
    assert {:sourceloc "Safe.java", 120, -1, -1, -1} true;
    $return := r2;
    goto block172;

  block172:
    return;

  anon8_Then:
    assume {:partition} z0 != 0;
    assert {:sourceloc "Safe.java", 119, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block171;

  anon7_Then:
    assume {:partition} z0 == 0;
    assert {:sourceloc "Safe.java", 118, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    goto block170;
}



implementation java.lang.Object$$la$init$ra$$($this: ref) returns ($exception: ref)
{

  anon0:
    $exception := $null;
    return;
}



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int_loop_block59(in_$exception: ref, in_i7: int, in_$i5: int, in_r1: ref, in_r3: ref)
   returns (out_$exception: ref, out_i7: int, out_$i5: int)
{

  entry:
    out_$exception, out_i7, out_$i5 := in_$exception, in_i7, in_$i5;
    goto block59;

  block59:
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    call out_$i5, out_$exception := java.lang.CharSequence$length$(in_r1);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    goto anon32_Then, anon32_Else;

  anon32_Then:
    assume {:partition} out_i7 >= out_$i5;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    out_$exception, out_i7, out_$i5 := in_$exception, in_i7, in_$i5;
    $heap := old($heap);
    return;

  anon23:
    assert {:sourceloc "Aes256Cryptor.java", 290, -1, -1, -1} {:clone} true;
    call out_$exception := java.lang.StringBuilder$setCharAt$int_char(in_r3, out_i7, 0);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    out_i7 := out_i7 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    goto anon23_dummy;

  anon32_Else:
    assume {:partition} out_$i5 > out_i7;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon23;

  anon23_dummy:
    call {:si_unique_call 1} out_$exception, out_i7, out_$i5 := org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int_loop_block59(out_$exception, out_i7, out_$i5, in_r1, in_r3);
    return;

  exit:
    return;
}



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int_loop_block59(in_$exception: ref, in_i7: int, in_$i5: int, in_r1: ref, in_r3: ref)
   returns (out_$exception: ref, out_i7: int, out_$i5: int);
  modifies $heap;



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int_loop_block56(in_$return: ref, 
    in_$exception: ref, 
    in_r1: ref, 
    in_$i4: int, 
    in_i6: int, 
    in_$fakelocal_3: ref, 
    in_r3: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i4: int, 
    out_i6: int, 
    out_$fakelocal_3: ref)
{

  entry:
    out_$return, out_$exception, out_$i4, out_i6, out_$fakelocal_3 := in_$return, in_$exception, in_$i4, in_i6, in_$fakelocal_3;
    goto block56;

  block56:
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    goto anon30_Then, anon30_Else;

  anon30_Else:
    assume {:partition} in_r1 == $null;
    call out_$fakelocal_3 := $new(java.lang.RuntimeException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$i4, out_i6, out_$fakelocal_3 := in_$return, in_$exception, in_$i4, in_i6, in_$fakelocal_3;
    $heap, $objIndex := old($heap), old($objIndex);
    return;

  anon20:
    assert {:sourceloc "Aes256Cryptor.java", 290, -1, -1, -1} {:clone} true;
    call out_$exception := java.lang.StringBuilder$setCharAt$int_char(in_r3, out_i6, 0);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    out_i6 := out_i6 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} true;
    goto anon20_dummy;

  anon31_Else:
    assume {:partition} out_$i4 > out_i6;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} {:comment "elseblock"} true;
    goto anon20;

  anon17:
    call out_$i4, out_$exception := java.lang.CharSequence$length$(in_r1);
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} true;
    goto anon31_Then, anon31_Else;

  anon31_Then:
    assume {:partition} out_i6 >= out_$i4;
    assert {:sourceloc "Aes256Cryptor.java", 289, -1, -1, -1} {:clone} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$i4, out_i6, out_$fakelocal_3 := in_$return, in_$exception, in_$i4, in_i6, in_$fakelocal_3;
    $heap, $objIndex := old($heap), old($objIndex);
    return;

  anon30_Then:
    assume {:partition} in_r1 != $null;
    out_$exception := out_$exception;
    goto anon17;

  anon20_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$i4, out_i6, out_$fakelocal_3 := org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int_loop_block56(out_$return, out_$exception, in_r1, out_$i4, out_i6, out_$fakelocal_3, in_r3);
    return;

  exit:
    return;
}



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$scrypt$java.lang.CharSequence_byte$lp$$rp$_int_int_int_loop_block56(in_$return: ref, 
    in_$exception: ref, 
    in_r1: ref, 
    in_$i4: int, 
    in_i6: int, 
    in_$fakelocal_3: ref, 
    in_r3: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$i4: int, 
    out_i6: int, 
    out_$fakelocal_3: ref);
  modifies $heap, $objIndex;



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport_loop_block65(in_$return: ref, 
    in_$exception: ref, 
    in_r0: ref, 
    in_r5: ref, 
    in_r6: ref, 
    in_r3: ref, 
    in_$r9: ref, 
    in_$fakelocal_3: ref, 
    in_r2: ref, 
    in_i2: int, 
    in_$fakelocal_4: int, 
    in_i4: int, 
    in_r4: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_r5: ref, 
    out_r6: ref, 
    out_$r9: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_4: int, 
    out_i4: int)
{

  entry:
    out_$return, out_$exception, out_r5, out_r6, out_$r9, out_$fakelocal_3, out_$fakelocal_4, out_i4 := in_$return, in_$exception, in_r5, in_r6, in_$r9, in_$fakelocal_3, in_$fakelocal_4, in_i4;
    goto block65;

  block65:
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    goto anon44_Then, anon44_Else;

  anon44_Then:
    assume {:partition} out_i4 >= in_i2;
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_r5, out_r6, out_$r9, out_$fakelocal_3, out_$fakelocal_4, out_i4 := in_$return, in_$exception, in_r5, in_r6, in_$r9, in_$fakelocal_3, in_$fakelocal_4, in_i4;
    $heap, $objIndex, $stringSizeHeap := old($heap), old($objIndex), old($stringSizeHeap);
    return;

  anon28:
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} true;
    goto anon28_dummy;

  anon48_Else:
    assume {:partition} out_$exception == $null;
    goto anon28;

  anon49_Else:
    assume {:partition} !($heap[out_$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon28;

  anon48_Then:
    assume {:partition} out_$exception != $null;
    goto anon49_Then, anon49_Else;

  anon49_Then:
    assume {:partition} $heap[out_$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    out_$return, out_$exception, out_r5, out_r6, out_$r9, out_$fakelocal_3, out_$fakelocal_4, out_i4 := in_$return, in_$exception, in_r5, in_r6, in_$r9, in_$fakelocal_3, in_$fakelocal_4, in_i4;
    $heap, $objIndex, $stringSizeHeap := old($heap), old($objIndex), old($stringSizeHeap);
    return;

  anon24:
    assert {:sourceloc "Aes256Cryptor.java", 308, -1, -1, -1} true;
    call out_$fakelocal_4, out_$exception := java.util.List$add$java.lang.Object(in_r3, out_r6);
    goto anon48_Then, anon48_Else;

  anon46_Else:
    assume {:partition} out_$exception == $null;
    goto anon24;

  anon47_Else:
    assume {:partition} !($heap[out_$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon24;

  anon46_Then:
    assume {:partition} out_$exception != $null;
    goto anon47_Then, anon47_Else;

  anon47_Then:
    assume {:partition} $heap[out_$exception, $type] <: java.io.IOException;
    out_$return := $null;
    out_$return, out_$exception, out_r5, out_r6, out_$r9, out_$fakelocal_3, out_$fakelocal_4, out_i4 := in_$return, in_$exception, in_r5, in_r6, in_$r9, in_$fakelocal_3, in_$fakelocal_4, in_i4;
    $heap, $objIndex, $stringSizeHeap := old($heap), old($objIndex), old($stringSizeHeap);
    return;

  anon20:
    out_r5 := $refArrHeap[in_r4][out_i4];
    assert {:sourceloc "Aes256Cryptor.java", 307, -1, -1, -1} true;
    out_$r9 := $heap[in_r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 307, -1, -1, -1} true;
    call out_r6, out_$exception := org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPathComponent$java.lang.String_javax.crypto.SecretKey_org.cryptomator.crypto.CryptorIOSupport(in_r0, out_r5, out_$r9, in_r2);
    goto anon46_Then, anon46_Else;

  anon45_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r4] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon20;

  anon17:
    assert {:sourceloc "Aes256Cryptor.java", 310, -1, -1, -1} {:clone} true;
    goto anon45_Then, anon45_Else;

  anon45_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r4] && out_i4 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_r5, out_r6, out_$r9, out_$fakelocal_3, out_$fakelocal_4, out_i4 := in_$return, in_$exception, in_r5, in_r6, in_$r9, in_$fakelocal_3, in_$fakelocal_4, in_i4;
    $heap, $objIndex, $stringSizeHeap := old($heap), old($objIndex), old($stringSizeHeap);
    return;

  anon44_Else:
    assume {:partition} in_i2 > out_i4;
    assert {:sourceloc "Aes256Cryptor.java", 306, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon28_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_r5, out_r6, out_$r9, out_$fakelocal_3, out_$fakelocal_4, out_i4 := org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport_loop_block65(out_$return, out_$exception, in_r0, out_r5, out_r6, in_r3, out_$r9, out_$fakelocal_3, in_r2, in_i2, out_$fakelocal_4, out_i4, in_r4);
    return;

  exit:
    return;
}



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$encryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport_loop_block65(in_$return: ref, 
    in_$exception: ref, 
    in_r0: ref, 
    in_r5: ref, 
    in_r6: ref, 
    in_r3: ref, 
    in_$r9: ref, 
    in_$fakelocal_3: ref, 
    in_r2: ref, 
    in_i2: int, 
    in_$fakelocal_4: int, 
    in_i4: int, 
    in_r4: ref)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_r5: ref, 
    out_r6: ref, 
    out_$r9: ref, 
    out_$fakelocal_3: ref, 
    out_$fakelocal_4: int, 
    out_i4: int);
  modifies $heap, $objIndex, $stringSizeHeap;



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport_loop_block73(in_$return: ref, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_$r10: ref, 
    in_r0: ref, 
    in_i4: int, 
    in_r4: ref, 
    in_$r9: ref, 
    in_r6: ref, 
    in_$fakelocal_5: int, 
    in_r3: ref, 
    in_r5: ref, 
    in_$fakelocal_4: ref, 
    in_r2: ref, 
    in_i2: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$r10: ref, 
    out_i4: int, 
    out_$r9: ref, 
    out_r6: ref, 
    out_$fakelocal_5: int, 
    out_r5: ref, 
    out_$fakelocal_4: ref)
{

  entry:
    out_$return, out_$exception, out_$fakelocal_3, out_$r10, out_i4, out_$r9, out_r6, out_$fakelocal_5, out_r5, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$r10, in_i4, in_$r9, in_r6, in_$fakelocal_5, in_r5, in_$fakelocal_4;
    goto block73;

  block73:
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    goto anon48_Then, anon48_Else;

  anon48_Then:
    assume {:partition} out_i4 >= in_i2;
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$r10, out_i4, out_$r9, out_r6, out_$fakelocal_5, out_r5, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$r10, in_i4, in_$r9, in_r6, in_$fakelocal_5, in_r5, in_$fakelocal_4;
    $heap, $objIndex := old($heap), old($objIndex);
    return;

  anon32:
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    out_i4 := out_i4 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} true;
    goto anon32_dummy;

  anon54_Else:
    assume {:partition} out_$exception == $null;
    goto anon32;

  anon55_Else:
    assume {:partition} !($heap[out_$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon32;

  anon54_Then:
    assume {:partition} out_$exception != $null;
    goto anon55_Then, anon55_Else;

  anon55_Then:
    assume {:partition} $heap[out_$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    out_$return, out_$exception, out_$fakelocal_3, out_$r10, out_i4, out_$r9, out_r6, out_$fakelocal_5, out_r5, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$r10, in_i4, in_$r9, in_r6, in_$fakelocal_5, in_r5, in_$fakelocal_4;
    $heap, $objIndex := old($heap), old($objIndex);
    return;

  anon28:
    assert {:sourceloc "Aes256Cryptor.java", 360, -1, -1, -1} true;
    call out_$fakelocal_5, out_$exception := java.util.List$add$java.lang.Object(in_r3, out_$r10);
    goto anon54_Then, anon54_Else;

  anon52_Else:
    assume {:partition} out_$exception == $null;
    goto anon28;

  anon53_Else:
    assume {:partition} !($heap[out_$exception, $type] <: javax.crypto.IllegalBlockSizeException);
    assert {:clone} true;
    goto anon28;

  anon52_Then:
    assume {:partition} out_$exception != $null;
    goto anon53_Then, anon53_Else;

  anon53_Then:
    assume {:partition} $heap[out_$exception, $type] <: javax.crypto.IllegalBlockSizeException;
    assert {:clone} true;
    out_$r10 := $null;
    out_$return, out_$exception, out_$fakelocal_3, out_$r10, out_i4, out_$r9, out_r6, out_$fakelocal_5, out_r5, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$r10, in_i4, in_$r9, in_r6, in_$fakelocal_5, in_r5, in_$fakelocal_4;
    $heap, $objIndex := old($heap), old($objIndex);
    return;

  anon24:
    assert {:sourceloc "Aes256Cryptor.java", 360, -1, -1, -1} true;
    call out_$fakelocal_4 := $new(java.lang.String);
    out_$r10 := out_$fakelocal_4;
    assert {:sourceloc "Aes256Cryptor.java", 360, -1, -1, -1} true;
    call out_$exception := java.lang.String$$la$init$ra$$java.lang.String(out_$r10, out_r6);
    goto anon52_Then, anon52_Else;

  anon50_Else:
    assume {:partition} out_$exception == $null;
    goto anon24;

  anon51_Else:
    assume {:partition} !($heap[out_$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon24;

  anon50_Then:
    assume {:partition} out_$exception != $null;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} $heap[out_$exception, $type] <: java.io.IOException;
    out_$return := $null;
    out_$return, out_$exception, out_$fakelocal_3, out_$r10, out_i4, out_$r9, out_r6, out_$fakelocal_5, out_r5, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$r10, in_i4, in_$r9, in_r6, in_$fakelocal_5, in_r5, in_$fakelocal_4;
    $heap, $objIndex := old($heap), old($objIndex);
    return;

  anon20:
    out_r5 := $refArrHeap[in_r4][out_i4];
    assert {:sourceloc "Aes256Cryptor.java", 359, -1, -1, -1} true;
    out_$r9 := $heap[in_r0, javax.crypto.SecretKey$org.cryptomator.crypto.aes256.Aes256Cryptor$primaryMasterKey262];
    assert {:sourceloc "Aes256Cryptor.java", 359, -1, -1, -1} true;
    call out_r6, out_$exception := org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPathComponent$java.lang.String_javax.crypto.SecretKey_org.cryptomator.crypto.CryptorIOSupport(in_r0, out_r5, out_$r9, in_r2);
    goto anon50_Then, anon50_Else;

  anon49_Then:
    assume {:partition} out_i4 < $arrSizeHeap[in_r4] && out_i4 >= 0;
    out_$exception := out_$exception;
    goto anon20;

  anon17:
    assert {:sourceloc "Aes256Cryptor.java", 362, -1, -1, -1} {:clone} true;
    goto anon49_Then, anon49_Else;

  anon49_Else:
    assume {:partition} !(out_i4 < $arrSizeHeap[in_r4] && out_i4 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := $null;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$fakelocal_3, out_$r10, out_i4, out_$r9, out_r6, out_$fakelocal_5, out_r5, out_$fakelocal_4 := in_$return, in_$exception, in_$fakelocal_3, in_$r10, in_i4, in_$r9, in_r6, in_$fakelocal_5, in_r5, in_$fakelocal_4;
    $heap, $objIndex := old($heap), old($objIndex);
    return;

  anon48_Else:
    assume {:partition} in_i2 > out_i4;
    assert {:sourceloc "Aes256Cryptor.java", 358, -1, -1, -1} {:comment "elseblock"} true;
    goto anon17;

  anon32_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$fakelocal_3, out_$r10, out_i4, out_$r9, out_r6, out_$fakelocal_5, out_r5, out_$fakelocal_4 := org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport_loop_block73(out_$return, out_$exception, out_$fakelocal_3, out_$r10, in_r0, out_i4, in_r4, out_$r9, out_r6, out_$fakelocal_5, in_r3, out_r5, out_$fakelocal_4, in_r2, in_i2);
    return;

  exit:
    return;
}



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$decryptPath$java.lang.String_char_char_org.cryptomator.crypto.CryptorIOSupport_loop_block73(in_$return: ref, 
    in_$exception: ref, 
    in_$fakelocal_3: ref, 
    in_$r10: ref, 
    in_r0: ref, 
    in_i4: int, 
    in_r4: ref, 
    in_$r9: ref, 
    in_r6: ref, 
    in_$fakelocal_5: int, 
    in_r3: ref, 
    in_r5: ref, 
    in_$fakelocal_4: ref, 
    in_r2: ref, 
    in_i2: int)
   returns (out_$return: ref, 
    out_$exception: ref, 
    out_$fakelocal_3: ref, 
    out_$r10: ref, 
    out_i4: int, 
    out_$r9: ref, 
    out_r6: ref, 
    out_$fakelocal_5: int, 
    out_r5: ref, 
    out_$fakelocal_4: ref);
  modifies $heap, $objIndex;



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$_loop_block92(in_$return: int, 
    in_$exception: ref, 
    in_$r11: ref, 
    in_$fakelocal_3: ref, 
    in_$b2: int, 
    in_z3: int, 
    in_r1: ref, 
    in_$fakelocal_2: ref, 
    in_z0: int, 
    in_i6: int, 
    in_$r6: ref, 
    in_$r7: ref, 
    in_$r15: ref, 
    in_$l4: int, 
    in_$fakelocal_6: ref, 
    in_$l5: int, 
    in_$r14: ref, 
    in_$r12: ref, 
    in_$fakelocal_5: ref, 
    in_$b3: int, 
    in_r0: ref, 
    in_$r10: ref, 
    in_$r8: ref, 
    in_$fakelocal_7: ref, 
    in_i0: int, 
    in_$r13: ref, 
    in_$r9: ref, 
    in_$fakelocal_4: ref, 
    in_z2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r11: ref, 
    out_$fakelocal_3: ref, 
    out_$b2: int, 
    out_z3: int, 
    out_$fakelocal_2: ref, 
    out_z0: int, 
    out_i6: int, 
    out_$r6: ref, 
    out_$r7: ref, 
    out_$r15: ref, 
    out_$l4: int, 
    out_$fakelocal_6: ref, 
    out_$l5: int, 
    out_$r14: ref, 
    out_$r12: ref, 
    out_$fakelocal_5: ref, 
    out_$b3: int, 
    out_$r10: ref, 
    out_$r8: ref, 
    out_$fakelocal_7: ref, 
    out_$r13: ref, 
    out_$r9: ref, 
    out_$fakelocal_4: ref, 
    out_z2: int)
{

  entry:
    out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := in_$return, in_$exception, in_$r11, in_$fakelocal_3, in_$b2, in_z3, in_$fakelocal_2, in_z0, in_i6, in_$r6, in_$r7, in_$r15, in_$l4, in_$fakelocal_6, in_$l5, in_$r14, in_$r12, in_$fakelocal_5, in_$b3, in_$r10, in_$r8, in_$fakelocal_7, in_$r13, in_$r9, in_$fakelocal_4, in_z2;
    goto block92;

  block92:
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} true;
    goto anon51_Then, anon51_Else;

  anon51_Then:
    assume {:partition} out_i6 >= in_i0;
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := in_$return, in_$exception, in_$r11, in_$fakelocal_3, in_$b2, in_z3, in_$fakelocal_2, in_z0, in_i6, in_$r6, in_$r7, in_$r15, in_$l4, in_$fakelocal_6, in_$l5, in_$r14, in_$r12, in_$fakelocal_5, in_$b3, in_$r10, in_$r8, in_$fakelocal_7, in_$r13, in_$r9, in_$fakelocal_4, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon38:
    call out_z3, out_$exception := java.lang.Boolean$booleanValue$(out_$r15);
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} true;
    out_i6 := out_i6 + 1;
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} true;
    goto anon38_dummy;

  anon57_Then:
    assume {:partition} out_$r15 != $null;
    out_$exception := out_$exception;
    goto anon38;

  anon35:
    out_$r15 := out_$r14;
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    goto anon57_Then, anon57_Else;

  anon57_Else:
    assume {:partition} out_$r15 == $null;
    call out_$fakelocal_7 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_7;
    out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := in_$return, in_$exception, in_$r11, in_$fakelocal_3, in_$b2, in_z3, in_$fakelocal_2, in_z0, in_i6, in_$r6, in_$r7, in_$r15, in_$l4, in_$fakelocal_6, in_$l5, in_$r14, in_$r12, in_$fakelocal_5, in_$b3, in_$r10, in_$r8, in_$fakelocal_7, in_$r13, in_$r9, in_$fakelocal_4, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon56_Then:
    assume {:partition} $heap[out_$r14, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon35;

  anon32:
    call out_z2, out_$exception := java.lang.Boolean$booleanValue$(out_$r11);
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    call out_$r12, out_$exception := java.lang.Boolean$valueOf$boolean(1);
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    call out_$r13, out_$exception := java.lang.Boolean$valueOf$boolean(out_z3);
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    call out_$r14, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r12, out_$r13);
    assert {:sourceloc "Aes256Cryptor.java", 482, -1, -1, -1} true;
    goto anon56_Then, anon56_Else;

  anon56_Else:
    assume {:partition} !($heap[out_$r14, $type] <: java.lang.Boolean);
    call out_$fakelocal_6 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_6;
    out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := in_$return, in_$exception, in_$r11, in_$fakelocal_3, in_$b2, in_z3, in_$fakelocal_2, in_z0, in_i6, in_$r6, in_$r7, in_$r15, in_$l4, in_$fakelocal_6, in_$l5, in_$r14, in_$r12, in_$fakelocal_5, in_$b3, in_$r10, in_$r8, in_$fakelocal_7, in_$r13, in_$r9, in_$fakelocal_4, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon55_Then:
    assume {:partition} out_$r11 != $null;
    out_$exception := out_$exception;
    goto anon32;

  anon29:
    out_$r11 := out_$r10;
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    goto anon55_Then, anon55_Else;

  anon55_Else:
    assume {:partition} out_$r11 == $null;
    call out_$fakelocal_5 := $new(java.lang.RuntimeException);
    out_$return := 0;
    out_$exception := out_$fakelocal_5;
    out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := in_$return, in_$exception, in_$r11, in_$fakelocal_3, in_$b2, in_z3, in_$fakelocal_2, in_z0, in_i6, in_$r6, in_$r7, in_$r15, in_$l4, in_$fakelocal_6, in_$l5, in_$r14, in_$r12, in_$fakelocal_5, in_$b3, in_$r10, in_$r8, in_$fakelocal_7, in_$r13, in_$r9, in_$fakelocal_4, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon54_Then:
    assume {:partition} $heap[out_$r10, $type] <: java.lang.Boolean;
    out_$exception := out_$exception;
    goto anon29;

  anon26:
    out_$b3 := $intArrHeap[in_r1][out_i6];
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    out_$l4 := out_$b3;
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    call out_z0, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$neq$long_long(out_$l5, out_$l4);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call out_$r6, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call out_$r7, out_$exception := java.lang.Boolean$valueOf$boolean(0);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call out_$r8, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z3, out_$r6, out_$r7);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call out_$r9, out_$exception := java.lang.Boolean$valueOf$boolean(out_z2);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    call out_$r10, out_$exception := sg.edu.nus.comp.tsunami.safe.Safe$cond$boolean_java.lang.Object_java.lang.Object(out_z0, out_$r8, out_$r9);
    assert {:sourceloc "Aes256Cryptor.java", 481, -1, -1, -1} true;
    goto anon54_Then, anon54_Else;

  anon54_Else:
    assume {:partition} !($heap[out_$r10, $type] <: java.lang.Boolean);
    call out_$fakelocal_4 := $new(java.lang.ClassCastException);
    out_$return := 0;
    out_$exception := out_$fakelocal_4;
    out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := in_$return, in_$exception, in_$r11, in_$fakelocal_3, in_$b2, in_z3, in_$fakelocal_2, in_z0, in_i6, in_$r6, in_$r7, in_$r15, in_$l4, in_$fakelocal_6, in_$l5, in_$r14, in_$r12, in_$fakelocal_5, in_$b3, in_$r10, in_$r8, in_$fakelocal_7, in_$r13, in_$r9, in_$fakelocal_4, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon53_Then:
    assume {:partition} out_i6 < $arrSizeHeap[in_r1] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon26;

  anon23:
    out_$b2 := $intArrHeap[in_r0][out_i6];
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    out_$l5 := out_$b2;
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    goto anon53_Then, anon53_Else;

  anon53_Else:
    assume {:partition} !(out_i6 < $arrSizeHeap[in_r1] && out_i6 >= 0);
    call out_$fakelocal_3 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_3;
    out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := in_$return, in_$exception, in_$r11, in_$fakelocal_3, in_$b2, in_z3, in_$fakelocal_2, in_z0, in_i6, in_$r6, in_$r7, in_$r15, in_$l4, in_$fakelocal_6, in_$l5, in_$r14, in_$r12, in_$fakelocal_5, in_$b3, in_$r10, in_$r8, in_$fakelocal_7, in_$r13, in_$r9, in_$fakelocal_4, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon52_Then:
    assume {:partition} out_i6 < $arrSizeHeap[in_r0] && out_i6 >= 0;
    out_$exception := out_$exception;
    goto anon23;

  anon20:
    assert {:sourceloc "Aes256Cryptor.java", 480, -1, -1, -1} true;
    goto anon52_Then, anon52_Else;

  anon52_Else:
    assume {:partition} !(out_i6 < $arrSizeHeap[in_r0] && out_i6 >= 0);
    call out_$fakelocal_2 := $new(java.lang.ArrayIndexOutOfBoundsException);
    out_$return := 0;
    out_$exception := out_$fakelocal_2;
    out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := in_$return, in_$exception, in_$r11, in_$fakelocal_3, in_$b2, in_z3, in_$fakelocal_2, in_z0, in_i6, in_$r6, in_$r7, in_$r15, in_$l4, in_$fakelocal_6, in_$l5, in_$r14, in_$r12, in_$fakelocal_5, in_$b3, in_$r10, in_$r8, in_$fakelocal_7, in_$r13, in_$r9, in_$fakelocal_4, in_z2;
    $objIndex, $heap := old($objIndex), old($heap);
    return;

  anon51_Else:
    assume {:partition} in_i0 > out_i6;
    assert {:sourceloc "Aes256Cryptor.java", 477, -1, -1, -1} {:comment "elseblock"} true;
    goto anon20;

  anon38_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, out_$r10, out_$r8, out_$fakelocal_7, out_$r13, out_$r9, out_$fakelocal_4, out_z2 := org.cryptomator.crypto.aes256.Aes256Cryptor$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$_loop_block92(out_$return, out_$exception, out_$r11, out_$fakelocal_3, out_$b2, out_z3, in_r1, out_$fakelocal_2, out_z0, out_i6, out_$r6, out_$r7, out_$r15, out_$l4, out_$fakelocal_6, out_$l5, out_$r14, out_$r12, out_$fakelocal_5, out_$b3, in_r0, out_$r10, out_$r8, out_$fakelocal_7, in_i0, out_$r13, out_$r9, out_$fakelocal_4, out_z2);
    return;

  exit:
    return;
}



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$jdkArraysEquals$byte$lp$$rp$_byte$lp$$rp$_loop_block92(in_$return: int, 
    in_$exception: ref, 
    in_$r11: ref, 
    in_$fakelocal_3: ref, 
    in_$b2: int, 
    in_z3: int, 
    in_r1: ref, 
    in_$fakelocal_2: ref, 
    in_z0: int, 
    in_i6: int, 
    in_$r6: ref, 
    in_$r7: ref, 
    in_$r15: ref, 
    in_$l4: int, 
    in_$fakelocal_6: ref, 
    in_$l5: int, 
    in_$r14: ref, 
    in_$r12: ref, 
    in_$fakelocal_5: ref, 
    in_$b3: int, 
    in_r0: ref, 
    in_$r10: ref, 
    in_$r8: ref, 
    in_$fakelocal_7: ref, 
    in_i0: int, 
    in_$r13: ref, 
    in_$r9: ref, 
    in_$fakelocal_4: ref, 
    in_z2: int)
   returns (out_$return: int, 
    out_$exception: ref, 
    out_$r11: ref, 
    out_$fakelocal_3: ref, 
    out_$b2: int, 
    out_z3: int, 
    out_$fakelocal_2: ref, 
    out_z0: int, 
    out_i6: int, 
    out_$r6: ref, 
    out_$r7: ref, 
    out_$r15: ref, 
    out_$l4: int, 
    out_$fakelocal_6: ref, 
    out_$l5: int, 
    out_$r14: ref, 
    out_$r12: ref, 
    out_$fakelocal_5: ref, 
    out_$b3: int, 
    out_$r10: ref, 
    out_$r8: ref, 
    out_$fakelocal_7: ref, 
    out_$r13: ref, 
    out_$r9: ref, 
    out_$fakelocal_4: ref, 
    out_z2: int);
  modifies $objIndex, $heap;



implementation org.cryptomator.crypto.aes256.Aes256Cryptor$encryptFile$java.io.InputStream_java.nio.channels.SeekableByteChannel_loop_block104(in_$return: ref, 
    in_$exception: ref, 
    in_r12: ref, 
    in_i10: int, 
    in_r10: ref, 
    in_i0: int)
   returns (out_$return: ref, out_$exception: ref, out_i10: int)
{

  entry:
    out_$return, out_$exception, out_i10 := in_$return, in_$exception, in_i10;
    goto block104;

  block104:
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} true;
    goto anon117_Then, anon117_Else;

  anon117_Then:
    assume {:partition} out_i10 >= in_i0;
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} {:comment "thenblock"} true;
    out_$return, out_$exception, out_i10 := in_$return, in_$exception, in_i10;
    return;

  anon48:
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} true;
    out_i10 := out_i10 + 16;
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} true;
    goto anon48_dummy;

  anon118_Else:
    assume {:partition} out_$exception == $null;
    goto anon48;

  anon119_Else:
    assume {:partition} !($heap[out_$exception, $type] <: java.io.IOException);
    assert {:clone} true;
    goto anon48;

  anon118_Then:
    assume {:partition} out_$exception != $null;
    goto anon119_Then, anon119_Else;

  anon119_Then:
    assume {:partition} $heap[out_$exception, $type] <: java.io.IOException;
    out_$return := $null;
    out_$return, out_$exception, out_i10 := in_$return, in_$exception, in_i10;
    return;

  anon44:
    assert {:sourceloc "Aes256Cryptor.java", 609, -1, -1, -1} true;
    call out_$exception := java.io.OutputStream$write$byte$lp$$rp$(in_r10, in_r12);
    goto anon118_Then, anon118_Else;

  anon117_Else:
    assume {:partition} in_i0 > out_i10;
    assert {:sourceloc "Aes256Cryptor.java", 608, -1, -1, -1} {:comment "elseblock"} true;
    goto anon44;

  anon48_dummy:
    call {:si_unique_call 1} out_$return, out_$exception, out_i10 := org.cryptomator.crypto.aes256.Aes256Cryptor$encryptFile$java.io.InputStream_java.nio.channels.SeekableByteChannel_loop_block104(out_$return, out_$exception, in_r12, out_i10, in_r10, in_i0);
    return;

  exit:
    return;
}



procedure org.cryptomator.crypto.aes256.Aes256Cryptor$encryptFile$java.io.InputStream_java.nio.channels.SeekableByteChannel_loop_block104(in_$return: ref, 
    in_$exception: ref, 
    in_r12: ref, 
    in_i10: int, 
    in_r10: ref, 
    in_i0: int)
   returns (out_$return: ref, out_$exception: ref, out_i10: int);


