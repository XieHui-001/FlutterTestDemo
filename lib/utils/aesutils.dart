import 'package:encrypt/encrypt.dart';

class AesUtils{

  static String key = "01234567::abcdef";
  static String iv = "01234567::abcdef";

  /// AES 加密
  static String encrypt(String plainText) {
    final encrypter = Encrypter(AES(Key.fromUtf8(key), mode: AESMode.cbc));
    final encrypted = encrypter.encrypt(plainText, iv: IV.fromUtf8(iv));
    return encrypted.base64;
  }

  ///AES 解密
  static String decrypt(String encryptedText) {
    final encrypter = Encrypter(AES(Key.fromUtf8(key), mode: AESMode.cbc));
    final decrypted = encrypter.decrypt64(encryptedText, iv: IV.fromUtf8(iv));
    return decrypted;
  }
}