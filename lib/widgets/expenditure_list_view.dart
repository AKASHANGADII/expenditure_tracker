import 'package:flutter/material.dart';

import '../utils/expenditure_class.dart';

class ExpenditureListView extends StatefulWidget {
  final List<Expenditure> expenditureList;
  ExpenditureListView({required this.expenditureList});
  @override
  State<ExpenditureListView> createState() => _ExpenditureListViewState();
}

class _ExpenditureListViewState extends State<ExpenditureListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
            itemCount: widget.expenditureList.length,
            itemBuilder: (ctx,index){
          return ListTile(
            leading: Text("${widget.expenditureList[index].amount}"),
            title: Text("${widget.expenditureList[index].title}"),
            subtitle: Text("${widget.expenditureList[index].date}"),
          );
        }),
      ),
    );
  }
}
