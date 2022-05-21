import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../main.dart';
import 'controller.dart';

class AppGuestions {
  List<Padding> iconResults = [];
  int _guestionNumber = 0;
  List<GuestionsController> _guestionsGroup = [
    GuestionsController(
      g: 'نسبة الماء علي كوكب الأرض هي 50%؟',
      i: 'images/img1.jpg',
      a: false,
    ),
    GuestionsController(
      g: 'أكبر قارات العالم هي قارة أسيا؟',
      i: 'images/img2.jpg',
      a: true,
    ),
    GuestionsController(
      g: 'عدد الدول العربية هي 20 دولة؟',
      i: 'images/img3.jpg',
      a: false,
    ),
    GuestionsController(
      g: 'تعدد القطط من الزواحف؟',
      i: 'images/img4.jpg',
      a: false,
    ),
    GuestionsController(
      g: 'يعد الأسد مللك الغابة؟',
      i: 'images/img5.jpg',
      a: true,
    ),
    GuestionsController(
      g: 'يعرف الكلب بالوفاء؟',
      i: 'images/img6.jpg',
      a: true,
    ),
    GuestionsController(
      g: 'يعتبر الماموث من الحيوانات المنقرضة؟',
      i: 'images/img7.jpg',
      a: true,
    ),
    GuestionsController(
      g: 'تعتبر الكعبة المشرفة هي أولى القبلتين؟',
      i: 'images/img8.jpg',
      a: false,
    ),
    GuestionsController(
      g: 'هذا العالم هو صاحب قانون نيوتن؟',
      i: 'images/img9.jpg',
      a: false,
    ),
    GuestionsController(
      g: 'احمد زويل هو مكتشف الفونتوثانية؟',
      i: 'images/img10.jpg',
      a: true,
    ),
    GuestionsController(
      g: 'هذه اللوحة هي احدى لوحات شكسبير؟',
      i: 'images/img11.jpg',
      a: false,
    ),
    GuestionsController(
      g: 'توجد الأهرامات في الاقصر؟',
      i: 'images/img12.jpg',
      a: false,
    ),
    GuestionsController(
      g: 'يوجد هذا المكان في ايطاليا؟',
      i: 'images/img13.jpg',
      a: true,
    ),
  ];

  void nextGuestion() {
    if (_guestionNumber < _guestionsGroup.length - 1) {
      _guestionNumber++;
    }
  }

  String getGuestionText() {
    return _guestionsGroup[_guestionNumber].guestionText;
  }

  String getGuestionImage() {
    return _guestionsGroup[_guestionNumber].guestionImage;
  }

  bool getGuestionAnswer() {
    return _guestionsGroup[_guestionNumber].guestionAnswer;
  }

  bool isFinished() {
    if (_guestionNumber >= _guestionsGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _guestionNumber = 0;
  }

  // checkAnswer(bool whatClick) {
  //   bool correctAnswer = appGuestions1.getGuestionAnswer();
  //   if (whatClick == correctAnswer) {
  //     iconResults.add(
  //       Padding(
  //         padding: const EdgeInsets.all(3.0),
  //         child: Icon(
  //           Icons.thumb_up,
  //           color: Colors.green,
  //         ),
  //       ),
  //     );
  //   } else {
  //     iconResults.add(
  //       Padding(
  //         padding: const EdgeInsets.all(3.0),
  //         child: Icon(
  //           Icons.thumb_down,
  //           color: Colors.red,
  //         ),
  //       ),
  //     );
  //   }
  //   if (isFinished() == true) {
  //     //   Alert(
  //     //   context: context,
  //     //   title: "نهاية الأسئلة ",
  //     //   desc: "لقد أجبت علي كل الأسئلة",
  //     //   buttons: [
  //     //     DialogButton(
  //     //       child: Text(
  //     //         "اعادة الأسئلة",
  //     //         style: TextStyle(color: Colors.white, fontSize: 20),
  //     //       ),
  //     //       onPressed: () => Navigator.pop(context),
  //     //       width: 120,
  //     //     )
  //     //   ],
  //     // ).show();
  //     iconResults = [];
  //     reset();
  //   } else {
  //     nextGuestion();
  //   }
  // }
}
