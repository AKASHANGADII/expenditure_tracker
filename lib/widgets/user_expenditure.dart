import 'package:expenditure_tracker/widgets/expenditure_list_view.dart';
import 'package:flutter/material.dart';

import '../utils/expenditure_class.dart';
import 'add_expenditure.dart';

class ExpenditureData extends StatefulWidget {
  @override
  State<ExpenditureData> createState() => _ExpenditureDataState();
}

class _ExpenditureDataState extends State<ExpenditureData> {
  List<Expenditure> expenditureList = [
    Expenditure(title: "Shoes", amount: "500"),
    Expenditure(title: "Dinner", amount: "180"),
    Expenditure(title: "Mysore tour", amount: "1500"),
  ];
  void addEvent(String title,String amt){
    final newData=Expenditure(title: title, amount: amt);
    setState((){
      expenditureList.add(newData);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AddExpenditure(addEvent: addEvent),
          SizedBox(height: 10),
          ExpenditureListView(expenditureList: expenditureList),
        ],
      ),
    );
  }
}
