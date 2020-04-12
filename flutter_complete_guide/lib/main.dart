//Block of imports for packages
import 'package:flutter/material.dart';

//Block of imports for files
import './question.dart';
import './answer.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// Leading _ makes the class a private class frop to make it public
class _MyAppState extends State<MyApp> {
  //Leading _ makes a property inside a class private
  //Defined Property
  var _questionIndex = 0;

  //Leading _ makes a method inside a class private
  //Defined Method
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            //Instead of calling text widget we call the class for question text which is a text widget but in a seperte file
            Question(
              questions[_questionIndex],
            ),
            //Call the answer button from the answer.dart file by calling the class name
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
