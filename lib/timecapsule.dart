import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reink/home.dart';

class TimeCapsule extends StatefulWidget {
  const TimeCapsule({Key? key}) : super(key: key);

  @override
  _TimeCapsuleState createState() => _TimeCapsuleState();
}

class _TimeCapsuleState extends State<TimeCapsule> {
  DateTime currentDate = DateTime.now();
  final _nameController = TextEditingController();
  final _contentController = TextEditingController();
  final _picker = ImagePicker();
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEF8E),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          '나의 타임캡슐',
          style: TextStyle(color: Colors.black54),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainPage()));
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 15),
              child: TextFormField(
                cursorColor: Colors.orange,
                controller: _nameController,
                //onEditingComplete: () {
                //  print('onEditingComplete: ' + _textEditingController.text);
                //},
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(width: 1, color: Colors.redAccent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(width: 1, color: Colors.redAccent),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    labelText: '타임캡슐의 이름은 무엇인가요?',
                    labelStyle: TextStyle(color: Colors.orange)),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15),
              child: TextFormField(
                minLines: 1,
                maxLines: 10,
                cursorColor: Colors.orange,
                controller: _contentController,
                //onEditingComplete: () {
                //  print('onEditingComplete: ' + _textEditingController.text);
                //},
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(width: 1, color: Colors.redAccent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(width: 1, color: Colors.redAccent),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                    labelText: '캡슐에 저장할 이야기를 남겨주세요',
                    labelStyle: TextStyle(color: Colors.orange)),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
              margin: EdgeInsets.only(bottom: 10),
              alignment: Alignment(0.0, 0.0),
              child: _image == null
                  ? FloatingActionButton(
                      child: Icon(
                        Icons.add_a_photo,
                      ),
                      elevation: 0.0,
                      backgroundColor: Colors.yellow[600],
                      splashColor: Colors.orange,
                      onPressed: _getImage,
                    )
                  : Image.file(File(_image!.path)),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            const Text(
              '언제 이 내용을 확인할까요?',
              style: TextStyle(color: Colors.deepOrange),
            ),
            Center(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.orange,
                    ),
                    onPressed: () {
                      selectDate();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _getImage() async {
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future<void> selectDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2022),
        lastDate: DateTime(2023));

    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
  }
}
