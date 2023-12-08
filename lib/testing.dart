import 'dart:ui';

import 'package:http/http.dart' as http;
import "dart:convert";
import 'dart:typed_data';
import 'dart:io';


Future<File> get _localFile async {

  return File('/database/thousand.txt');
}

Future<String> readCounter() async {
  try {
    final file = await _localFile;

    // Read the file
    print("aw");
    final contents = await file.readAsString();

    return contents;
  } catch (e) {
    // If encountering an error, return 0
    return "nope";
  }
}
void main() async{
 final tes=readCounter();
  
}
