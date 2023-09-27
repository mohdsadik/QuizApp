import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          child:
              ElevatedButton(onPressed: selectHandler,style: ElevatedButton.styleFrom(primary: Colors.black, onPrimary: Colors.white ), child: Text(answerText),),
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
