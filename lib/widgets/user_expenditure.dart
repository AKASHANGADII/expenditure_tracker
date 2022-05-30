import 'package:expenditure_tracker/widgets/expenditure_list_view.dart';
import 'package:flutter/material.dart';

import '../utils/expenditure_class.dart';
import 'add_expenditure.dart';

class ExpenditureData extends StatelessWidget {
  List<Expenditure> expenditureList = [
    Expenditure(title: "Shoes", amount: "500"),
    Expenditure(title: "Dinner", amount: "180"),
    Expenditure(title: "Mysore tour", amount: "1500"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AddExpenditure(),
          ExpenditureListView(expenditureList: expenditureList),
        ],
      ),
    );
  }
}
