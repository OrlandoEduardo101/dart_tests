import 'dart:io';
import 'dart:convert';

import 'package:hello_world/hello_world.dart' as hello_world;
import 'package:hello_world/io_lib.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  //print('Hello world: ${hello_world.calculate()}!');
  //var url = 'https://www.google.com';
  //http.get(url).then((value) => print('response: ${value.body} ${value.statusCode}'));

  //io_lib();
  /*try{
    String text;
    assert(text != null);
  }catch(e){
    print(e);
  }*/

  /*var path = '/home/orlando-eduardo101';
  var directory = Directory(path);

  if(directory.existsSync()) {
    print('Existe');
  }
  else{
    print('não existe');
  }

  //create and delete directory temp

  directory = Directory.systemTemp.createTempSync();

  if(directory.existsSync()){
    print(directory.path);
    directory.deleteSync();
  } else {
    print('not found');
  }*/

  /*var directory = Directory.current;
  print(directory);
  List<FileSystemEntity> list = directory.listSync(recursive: true);
  print('${list.length} \n\n ');
  //print(list);

  list.forEach((FileSystemEntity value){
   FileStat stat = value .statSync();

   print('Path: ${value.path}');
   print('type: ${stat.type}');
   print('Permission: ${stat.mode}');
   print('Size: ${stat.size} \n');
  });*/

  Map<String, String> data = Map();
  data.putIfAbsent('1', () => 'fala');
  data.putIfAbsent('2', () => 'zeze');
  data.putIfAbsent('3', () => 'bom');
  data.putIfAbsent('4', () => 'dia');
  data.putIfAbsent('5', () => 'cara');

  Directory dir = Directory.current;
  //print(dir.path);
  File file = File(dir.path + '/my_file.txt');

  writeFile(file, json.encode(data).toString());
  readFile(file);



}

void writeFile(File file, String data){
  RandomAccessFile raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync(data);
  raf.flushSync();
  raf.closeSync();
}

void readFile(File file){
  if(!file.existsSync()){
    print("not found");
    return;
  }
  print("Reading file...");
  print(file.readAsStringSync());

  /*print("Reading Bytes...");
  List values = file.readAsBytesSync();
  values.forEach((value) => print(value));*/
}
