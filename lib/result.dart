import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPharse {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'you are awesome and innocent';
    } else if (resultScore <= 15) {
      resultText = 'you are pretty Awesome';
    } else if (resultScore <= 25) {
      resultText = 'Almost there to blast it';
    } else if (resultScore <= 30) {
      resultText = 'You are the Best';
    } else {
      resultText = 'Topper';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        padding: EdgeInsetsDirectional.only(top: 80),
        child: Center(
          child: Column(
            children: [
              resultScore >= 60
                  ? Container(
                      child: Image.network(
                        'https://i.pinimg.com/originals/44/96/87/449687506afb6d65e57206ca688d31b6.gif',
                        scale: 1.0,
                      ),
                    )
                  : Container(
                      child: Image.network(
                        'https://i35.photobucket.com/albums/d165/jmm311/betterlucknexttime.gif',
                        scale: 1.0,
                      ),
                    ),
              Text(
                resultPharse,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Text('Your Score is : ${resultScore.toString()}',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: resetHandler,
                child: Text('Restart Quiz'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, onPrimary: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
