import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class DataClass extends ChangeNotifier {
  final List<Map<String, dynamic>> _allList = [
    {
      'id': 1,
      'item': 'ລາຍການທັງໝົດ',
      'datetime': '18/1/2023',
      'time': '9: 30',
      'amount': 200000
    },
    {
      'id': 2,
      'item': 'ລາຍການທັງໝົດ',
      'datetime': '18/2/2023',
      'time': '9: 30',
      'amount': 300000
    },
    {
      'id': 3,
      'item': 'ລາຍການທັງໝົດ',
      'datetime': '18/3/2023',
      'time': '9: 30',
      'amount': 400000
    },
    {
      'id': 4,
      'item': 'ລາຍການທັງໝົດ',
      'datetime': '18/4/2023',
      'time': '9: 30',
      'amount': 500000
    },
    {
      'id': 5,
      'item': 'ລາຍການທັງໝົດ',
      'datetime': '18/5/2023',
      'time': '9: 30',
      'amount': 600000
    },
    {
      'id': 6,
      'item': 'ລາຍການທັງໝົດ',
      'datetime': '18/6/2023',
      'time': '9: 30',
      'amount': 700000
    },
    {
      'id': 7,
      'item': 'ລາຍການທັງໝົດ',
      'datetime': '18/7/2023',
      'time': '9: 30',
      'amount': 800000
    }
  ];

  final List<Map<String, dynamic>> _letestList = [
    {
      'id': 1,
      'item': 'ລາຍການລ່າສຸດ',
      'datetime': '20/1/2023',
      'time': '9: 30',
      'amount': 200000
    },
    {
      'id': 2,
      'item': 'ລາຍການລ່າສຸດ',
      'datetime': '20/2/2023',
      'time': '9: 30',
      'amount': 300000
    },
    {
      'id': 3,
      'item': 'ລາຍການລ່າສຸດ',
      'datetime': '20/3/2023',
      'time': '9: 30',
      'amount': 400000
    },
    {
      'id': 4,
      'item': 'ລາຍການລ່າສຸດ',
      'datetime': '20/4/2023',
      'time': '9: 30',
      'amount': 500000
    },
    {
      'id': 5,
      'item': 'ລາຍການລ່າສຸດ',
      'datetime': '20/5/2023',
      'time': '9: 30',
      'amount': 600000
    },
    {
      'id': 6,
      'item': 'ລາຍການລ່າສຸດ',
      'datetime': '20/6/2023',
      'time': '9: 30',
      'amount': 700000
    },
    {
      'id': 7,
      'item': 'ລາຍການລ່າສຸດ',
      'datetime': '20/7/2023',
      'time': '9: 30',
      'amount': 800000
    }
  ];

  final List<Map<String, dynamic>> _dayList = [
    {
      'id': 1,
      'item': 'ລາຍການເປັນມື້',
      'datetime': '23/1/2023',
      'time': '9: 30',
      'amount': 200000
    },
    {
      'id': 2,
      'item': 'ລາຍການເປັນມື້',
      'datetime': '23/2/2023',
      'time': '9: 30',
      'amount': 300000
    },
    {
      'id': 3,
      'item': 'ລາຍການເປັນມື້',
      'datetime': '23/3/2023',
      'time': '9: 30',
      'amount': 400000
    },
    {
      'id': 4,
      'item': 'ລາຍການເປັນມື້',
      'datetime': '23/4/2023',
      'time': '9: 30',
      'amount': 500000
    },
    {
      'id': 5,
      'item': 'ລາຍການເປັນມື້',
      'datetime': '23/5/2023',
      'time': '9: 30',
      'amount': 600000
    },
    {
      'id': 6,
      'item': 'ລາຍການເປັນມື້',
      'datetime': '23/6/2023',
      'time': '9: 30',
      'amount': 700000
    },
    {
      'id': 7,
      'item': 'ລາຍການເປັນມື້',
      'datetime': '23/7/2023',
      'time': '9: 30',
      'amount': 800000
    }
  ];

  final List<Map<String, dynamic>> _weekList = [
    {
      'id': 1,
      'item': 'ລາຍການເປັນອາທິດ',
      'datetime': '10/1/2023',
      'time': '9: 30',
      'amount': 200000
    },
    {
      'id': 2,
      'item': 'ລາຍການເປັນອາທິດ',
      'datetime': '10/2/2023',
      'time': '9: 30',
      'amount': 300000
    },
    {
      'id': 3,
      'item': 'ລາຍການເປັນອາທິດ',
      'datetime': '10/3/2023',
      'time': '9: 30',
      'amount': 400000
    },
    {
      'id': 4,
      'item': 'ລາຍການເປັນອາທິດ',
      'datetime': '10/4/2023',
      'time': '9: 30',
      'amount': 500000
    },
    {
      'id': 5,
      'item': 'ລາຍການເປັນອາທິດ',
      'datetime': '10/5/2023',
      'time': '9: 30',
      'amount': 600000
    },
    {
      'id': 6,
      'item': 'ລາຍການເປັນອາທິດ',
      'datetime': '10/6/2023',
      'time': '9: 30',
      'amount': 700000
    },
    {
      'id': 7,
      'item': 'ລາຍການເປັນອາທິດ',
      'datetime': '10/7/2023',
      'time': '9: 30',
      'amount': 800000
    }
  ];

  final List<Map<String, dynamic>> _monuthList = [
    {
      'id': 1,
      'item': 'ລາຍການເປັນເດືອນ',
      'datetime': '15/1/2023',
      'time': '9: 30',
      'amount': 200000
    },
    {
      'id': 2,
      'item': 'ລາຍການເປັນເດືອນ',
      'datetime': '15/2/2023',
      'time': '9: 30',
      'amount': 300000
    },
    {
      'id': 3,
      'item': 'ລາຍການເປັນເດືອນ',
      'datetime': '15/3/2023',
      'time': '9: 30',
      'amount': 400000
    },
    {
      'id': 4,
      'item': 'ລາຍການເປັນເດືອນ',
      'datetime': '15/4/2023',
      'time': '9: 30',
      'amount': 500000
    },
    {
      'id': 5,
      'item': 'ລາຍການເປັນເດືອນ',
      'datetime': '15/5/2023',
      'time': '9: 30',
      'amount': 600000
    },
    {
      'id': 6,
      'item': 'ລາຍການເປັນເດືອນ',
      'datetime': '15/6/2023',
      'time': '9: 30',
      'amount': 700000
    },
    {
      'id': 7,
      'item': 'ລາຍການເປັນເດືອນ',
      'datetime': '15/7/2023',
      'time': '9: 30',
      'amount': 800000
    }
  ];

  final List<Map<String, dynamic>> _yearList = [
    {
      'id': 1,
      'item': 'ລາຍການເປັນປີ',
      'datetime': '18/1/2023',
      'time': '9: 30',
      'amount': 200000
    },
    {
      'id': 2,
      'item': 'ລາຍການເປັນປີ',
      'datetime': '18/2/2023',
      'time': '9: 30',
      'amount': 300000
    },
    {
      'id': 3,
      'item': 'ລາຍການເປັນປີ',
      'datetime': '18/3/2023',
      'time': '9: 30',
      'amount': 400000
    },
    {
      'id': 4,
      'item': 'ລາຍການເປັນປີ',
      'datetime': '18/4/2023',
      'time': '9: 30',
      'amount': 500000
    },
    {
      'id': 5,
      'item': 'ລາຍການເປັນປີ',
      'datetime': '18/5/2023',
      'time': '9: 30',
      'amount': 600000
    },
    {
      'id': 6,
      'item': 'ລາຍການເປັນປີ',
      'datetime': '18/6/2023',
      'time': '9: 30',
      'amount': 700000
    },
    {
      'id': 7,
      'item': 'ລາຍການເປັນປີ',
      'datetime': '18/7/2023',
      'time': '9: 30',
      'amount': 800000
    }
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
