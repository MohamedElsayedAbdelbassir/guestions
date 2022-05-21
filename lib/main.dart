import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'questions/appGuestions.dart';
import 'questions/controller.dart';

AppGuestions appGuestions1 = AppGuestions();
int rightAnswers = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'أسئلة',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.grey[300],
        body: MyApp2(),
      ),
    );
  }
}

class MyApp2 extends StatefulWidget {
  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            children: appGuestions1.iconResults,
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Image.asset(appGuestions1.getGuestionImage()),
                SizedBox(
                  height: 20,
                ),
                Text(
                  appGuestions1.getGuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextButton(
                onPressed: () {
                  checkAnswer(bool whatClick) {
                    bool correctAnswer = appGuestions1.getGuestionAnswer();
                    if (whatClick == correctAnswer) {
                      rightAnswers++;

                      appGuestions1.iconResults.add(
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.green,
                          ),
                        ),
                      );
                    } else {
                      appGuestions1.iconResults.add(
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.thumb_down,
                            color: Colors.red,
                          ),
                        ),
                      );
                    }
                    if (appGuestions1.isFinished() == true) {
                      Alert(
                        context: context,
                        title: "نهاية الأسئلة ",
                        desc: "لقد أجبت علي $rightAnswersاجابات صحيحة  ",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "اعادة الأسئلة",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            width: 120,
                          )
                        ],
                      ).show();
                      appGuestions1.iconResults = [];
                      appGuestions1.reset();
                      rightAnswers = 0;
                    } else {
                      appGuestions1.nextGuestion();
                    }
                  }

                  setState(() {
                    checkAnswer(true);
                  });
                },
                child: Text(
                  'صح',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.indigo,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextButton(
                onPressed: () {
                  checkAnswer(bool whatClick) {
                    bool correctAnswer = appGuestions1.getGuestionAnswer();
                    if (whatClick == correctAnswer) {
                      rightAnswers++;

                      appGuestions1.iconResults.add(
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.thumb_up,
                            color: Colors.green,
                          ),
                        ),
                      );
                    } else {
                      appGuestions1.iconResults.add(
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(
                            Icons.thumb_down,
                            color: Colors.red,
                          ),
                        ),
                      );
                    }
                    if (appGuestions1.isFinished() == true) {
                      Alert(
                        context: context,
                        title: "نهاية الأسئلة ",
                        desc: "لقد أجبت علي $rightAnswersاجابات صحيحة  ",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "اعادة الأسئلة",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            width: 120,
                          )
                        ],
                      ).show();
                      appGuestions1.iconResults = [];
                      appGuestions1.reset();
                      rightAnswers = 0;
                    } else {
                      appGuestions1.nextGuestion();
                    }
                  }

                  setState(() {
                    checkAnswer(false);
                  });
                },
                child: Text(
                  'خطأ',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
