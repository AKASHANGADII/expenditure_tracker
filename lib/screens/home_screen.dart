import 'package:expenditure_tracker/utils/expenditure_class.dart';
import 'package:expenditure_tracker/widgets/user_expenditure.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expenditure Tracker"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ExpenditureData(),
          ],
        ),
      ),
    );
  }
}
