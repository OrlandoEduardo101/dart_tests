import 'dart:io';

import 'package:hello_world/hello_world.dart' as hello_world;
import 'package:hello_world/io_lib.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  //print('Hello world: ${hello_world.calculate()}!');
  var url = 'https://www.google.com';
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

  var directory = Directory.current;
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
  });



}
