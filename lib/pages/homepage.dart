import 'package:expense_manager2/controller/db_helper.dart';
import 'package:expense_manager2/pages/add_transaction.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager2/static.dart' as Static;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DbHelper dbHelper = DbHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => AddTransaction()));
        },
        backgroundColor: Static.PrimaryColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Icon(
          Icons.add,
          size: 32.0,
        ),
      ),
      body: FutureBuilder<Map>(
        // future: dbHelper.fetch(),
        builder: (context, snapshot) {
          return Center(
            child: Text("No data !!!"),
          );
        }
      ),
    );
  }
}
