import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io' show Platform;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:encrypt/encrypt.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:pointycastle/export.dart' as pointy;
import 'package:crypto/crypto.dart';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

class RegisData {
  static String stringhash_sha256(String input) {
    Uint8List inputs = Uint8List.fromList(utf8.encode(input));
    Digest sha256Hash = sha256.convert(inputs);
    String result = sha256Hash.toString();
    return result;
  }

  static List<int> binaryhash_sha256(String input) {
    Uint8List inputs = Uint8List.fromList(utf8.encode(input));
    Digest sha256Hash = sha256.convert(inputs);
    List<int> result = sha256Hash.bytes;
    //print(sha256Hash.toString());
    return result;
  }

  static Key makekey_sha256(String input) {
    List<int> stringToBase64 = binaryhash_sha256(input);
    return Key(Uint8List.fromList(stringToBase64));
  }

  static Encrypted msgToDecrypt(String input) {
    Uint8List bytes = base64Url.decode(input);

    return Encrypted(bytes);
  }

  static Uint8List msgToEncrypt(String input) {
    return Uint8List.fromList(utf8.encode(input));
  }

  static Uint8List decryptByte(String input, String key) {
    var encryptedDataBytes = base64Url.decode(input);
    Key keys = makekey_sha256(key);
    var fernet = Fernet(keys);
    var dec_msg =
        fernet.decrypt(Encrypted(Uint8List.fromList(encryptedDataBytes)));
    return dec_msg;
  }

  // static Future<String> encryptPubtes(String dataToSend, String pubkey) async {
  //   var theParser = RSAKeyParser();
  //   var thePublicKey = theParser.parse(pubkey);
  //   var theEncrypter = Encrypter(RSA(
  //       publicKey: thePublicKey as pointy.RSAPublicKey,
  //       encoding: RSAEncoding.OAEP,
  //       digest: RSADigest.SHA256));
  //   var encryptedData = theEncrypter.encrypt(dataToSend);
  //   var response2 = await http.post(
  //       Uri.https("superauthhci.risalahqz.repl.co", "pubkey"),
  //       body: base64Url.encode(encryptedData.bytes));
  //   print(response2.body);
  //   return response2.body;
  // }

  static String encryptPub(String dataToSend, String pubkey) {
    var theParser = RSAKeyParser();
    var thePublicKey = theParser.parse(pubkey);
    var theEncrypter = Encrypter(RSA(
        publicKey: thePublicKey as pointy.RSAPublicKey,
        encoding: RSAEncoding.OAEP,
        digest: RSADigest.SHA256));
    var encryptedData = theEncrypter.encrypt(dataToSend);
    return base64Url.encode(encryptedData.bytes);
  }

  static Future<String?> getId() async {
    var deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      // import 'dart:io'
      var iosDeviceInfo = await deviceInfo.iosInfo;
      return iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else if (Platform.isAndroid) {
      var androidDeviceInfo = await deviceInfo.androidInfo;
      return androidDeviceInfo.id; // unique ID on Android
    } else {
      return null;
    }
  }

  static String? name;
  static String? deviceId;
  static bool? first = true;
  static String? password;
  static String? pubKey;
  static SharedPreferences? pref;
  static Future<String> fernetBasic(String textToSend) async {
    String deviceId99 = RegisData.deviceId!; //ganti sama static
    String cred = RegisData.deviceId! + RegisData.password!; //ganti sama static
    String text = textToSend; //ganti sama static
    await getPubKey();
    String pubkey99 = RegisData.pubKey!; //ganti sama static
    var bodyData99 = encryptPub(text, pubkey99);
    var bearerToken99 = stringhash_sha256(cred);
    var response99 = await http.post(
        Uri.https("superauthhci.risalahqz.repl.co", "basicFernet"),
        headers: {"Authorization": "Bearer ${bearerToken99}"},
        body: bodyData99);
    Uint8List dec_username99 = decryptByte(response99.body, deviceId99);
    return utf8.decode(dec_username99);
  }

  static Future<int> login(
    String password, String deviceId, String token) async {
    var bearerToken = stringhash_sha256(token);
    await getPubKey();
//print(pubkeyres.body);
    String pubkey = pubKey!;
    var bodyData = encryptPub(password, pubkey);
    var response = await http.post(
        Uri.https("superauthhci.risalahqz.repl.co", "login"),
        headers: {"Authorization": "Bearer ${bearerToken}"},
        body: bodyData);
    if (response.statusCode == 406) {
      return 406;
    }
    Uint8List dec_username = decryptByte(response.body, deviceId);
    RegisData.name = (utf8.decode(dec_username));
    RegisData.password = password;
    return 200;
  }

  static Future<void> register(
      String username, String password, String deviceId) async {
    var response = await http.post(
        Uri.https("superauthhci.risalahqz.repl.co", "firstComer"),
        body: jsonEncode([username, password, deviceId]));
    var list = jsonDecode(response.body);
    pubKey = list[0];
    RegisData.name = username;
    savePref();
  }

  static void savePref() async {
    RegisData.pref = await SharedPreferences.getInstance();
    await pref?.setString('pubKey', RegisData.pubKey!);
    await pref?.setString('deviceId', RegisData.deviceId!);
    await pref?.setBool('first', RegisData.first!);
    await pref?.setString('name', RegisData.name!);

  }

  static Future getIdLocal() async {
    RegisData.pref = await SharedPreferences.getInstance();
    RegisData.deviceId = RegisData.pref?.getString('deviceId');
    // return RegisData.pref?.getString('deviceId');
  }

  static Future getName() async {
    RegisData.pref = await SharedPreferences.getInstance();
    RegisData.name = RegisData.pref?.getString('name');
    // return RegisData.pref?.getString('deviceId');
  }

  static Future getFirst() async {
    RegisData.pref = await SharedPreferences.getInstance();
    RegisData.first = RegisData.pref?.getBool('first');
    // return RegisData.pref?.getBool('first');
  }

  static Future getPubKey() async {
    RegisData.pref = await SharedPreferences.getInstance();
    RegisData.pubKey = RegisData.pref?.getString('pubKey');
    // return RegisData.pref?.getString('pubKey');
  }
}
