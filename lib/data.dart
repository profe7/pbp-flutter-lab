import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/drawer.dart';

class DataBudget extends StatefulWidget {
  const DataBudget({super.key});

  @override
  State<DataBudget> createState() => _DataBudgetState();
}

class _DataBudgetState extends State<DataBudget> {
    List<Data> dataList = [];

    void retrieveData() {
      setState(() {
        var counter = TambahBudgetState.usrData.length;
        while (counter > 0) {
          dataList.add(TambahBudgetState.usrData[counter - 1]);
          counter--;
        }
      });
    }

  @override
  Widget build(BuildContext context) {
    if (dataList.isEmpty) {
      retrieveData();
    }


    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),

      drawer: const UniversalDrawer(),

      //show data from list
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(dataList[index].judul),
              subtitle: Text(dataList[index].jumlah.toString()),
              trailing: Text(dataList[index].nominal),
            ),
          );
        },
      ),
    );
  }
}