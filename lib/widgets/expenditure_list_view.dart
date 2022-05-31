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
      flex: 2,
      child: Container(
        child: ListView.builder(
            itemCount: widget.expenditureList.length,
            itemBuilder: (ctx, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${widget.expenditureList[index].title}",style: TextStyle(fontSize: 20),),
                          SizedBox(height: 2,),
                          Text("${widget.expenditureList[index].date}",style: TextStyle(fontSize: 14),),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("${widget.expenditureList[index].amount}"),
                        ),),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
