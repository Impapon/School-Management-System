import 'package:flutter/material.dart';

class StudentClassRoutine extends StatelessWidget {
  const StudentClassRoutine(String cName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {},
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: width/6.85,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(height/42.15),
            border: Border.all(color: Colors.red, width: 1)),
        child: Padding(
          padding:  EdgeInsets.all(height/41.45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.class_,
                color: Colors.red,
              ),
              SizedBox(
                width: width/82.2,
              ),
              Text(
                "One",
                style: TextStyle(color: Colors.red, fontSize: width/29.357),
              )
            ],
          ),
        ),
      ),
    );
  }
}
