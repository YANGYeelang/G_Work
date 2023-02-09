import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataClass extends ChangeNotifier {
  final List<Map<String, dynamic>> _allList = [
    {
      'id': 1,
      'item': 'ຄ່າເດີນທາງ',
      'datetime': '20/1/2023',
      'time': '9: 30 AM',
      'amount': -100000
    },
    {
      'id': 2,
      'item': 'ຄ່າຮຽນ',
      'datetime': '22/1/2023',
      'time': '6: 30 PM',
      'amount': -150000
    },
    {
      'id': 3,
      'item': 'ເງີນເດືອນ',
      'datetime': '5/1/2023',
      'time': '10: 40 AM',
      'amount': 200000
    },
    {
      'id': 4,
      'item': 'ຄ່າທີພັກ',
      'datetime': '20/11/2022',
      'time': '9: 50 AM',
      'amount': -250000
    },
    {
      'id': 5,
      'item': 'ຄ່າເລີ່ມຕົ້ນ',
      'datetime': '28/10/2022',
      'time': '7: 44 AM',
      'amount': 300000
    },
  ];

  final List<Map<String, dynamic>> _letestList = [
    {
      'id': 1,
      'item': 'ຄ່າເດີນທາງ',
      'datetime': '20/1/2023',
      'time': '9: 30 AM',
      'amount': -100000
    },
  ];

  final List<Map<String, dynamic>> _dayList = [
    {
      'id': 1,
      'item': 'ຄ່າເດີນທາງ',
      'datetime': '20/1/2023',
      'time': '9: 30 AM',
      'amount': -100000
    },
  ];

  final List<Map<String, dynamic>> _weekList = [
    {
      'id': 1,
      'item': 'ຄ່າເດີນທາງ',
      'datetime': '20/1/2023',
      'time': '9: 30 AM',
      'amount': -100000
    },
    {
      'id': 2,
      'item': 'ຄ່າຮຽນ',
      'datetime': '22/1/2023',
      'time': '6: 30 PM',
      'amount': -150000
    },
  ];

  final List<Map<String, dynamic>> _monuthList = [
    {
      'id': 1,
      'item': 'ຄ່າເດີນທາງ',
      'datetime': '20/1/2023',
      'time': '9: 30 AM',
      'amount': -100000
    },
    {
      'id': 2,
      'item': 'ຄ່າຮຽນ',
      'datetime': '22/1/2023',
      'time': '6: 30 PM',
      'amount': -150000
    },
    {
      'id': 3,
      'item': 'ເງີນເດືອນ',
      'datetime': '5/1/2023',
      'time': '10: 40 AM',
      'amount': 200000
    },
  ];

  final List<Map<String, dynamic>> _yearList = [
    {
      'id': 1,
      'item': 'ຄ່າເດີນທາງ',
      'datetime': '20/1/2023',
      'time': '9: 30 AM',
      'amount': -100000
    },
    {
      'id': 2,
      'item': 'ຄ່າຮຽນ',
      'datetime': '22/1/2023',
      'time': '6: 30 PM',
      'amount': -150000
    },
    {
      'id': 3,
      'item': 'ເງີນເດືອນ',
      'datetime': '5/1/2023',
      'time': '10: 40 AM',
      'amount': 200000
    },
    {
      'id': 4,
      'item': 'ຄ່າທີພັກ',
      'datetime': '20/11/2022',
      'time': '9: 50 AM',
      'amount': -250000
    },
  ];

  List<Map<String, dynamic>> showList = [];

  List get dataList => showList;

  void alllist(int listValue) {
    if (listValue == 0) {
      showList = _allList;
    } else if (listValue == 1) {
      showList = _letestList;
    } else if (listValue == 2) {
      showList = _dayList;
    } else if (listValue == 3) {
      showList = _weekList;
    } else if (listValue == 4) {
      showList = _monuthList;
    } else {
      showList = _yearList;
    }

    notifyListeners();
  }

  CollectionReference allItemes =
      FirebaseFirestore.instance.collection('allItemes');

  void infoInput() {
    allItemes.add(
      {'date_time': DateFormat('yyyy-MM-dd').format(DateTime.now())},
    );
    notifyListeners();
  }

  void infoTime() {
    allItemes.add(
      {'time': DateFormat('kk:mm').format(DateTime.now())},
    );
    notifyListeners();
  }
}
