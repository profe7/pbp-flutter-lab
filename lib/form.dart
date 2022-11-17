import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:flutter/services.dart';


class TambahBudget extends StatefulWidget {
  const TambahBudget({super.key});

  @override
  State<TambahBudget> createState() => TambahBudgetState();
}

class Data {
  String judul;
  int jumlah;
  String nominal;
  
  Data({required this.judul, required this.jumlah, required this.nominal});
}

class TambahBudgetState extends State<TambahBudget> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String jumlah = "";
  List<String> kategori = [
    "Pengeluaran",
    "Pemasukan",
];
  String selectedKategori = "Pengeluaran";
  static List<Data> usrData = [];

  List<Data> get getData {
    return usrData;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Budget'),
      ),

      drawer: const UniversalDrawer(),

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Judul Budget",
                      labelText: "Judul",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Judul tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Nominal Budget",
                      labelText: "Nominal",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        jumlah = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        jumlah = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Nominal tidak boleh kosong";
                      }
                      if (int.tryParse(value) == null) {
                        return "Nominal harus berupa angka";
                      }
                      return null;
                    },
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Pilih Jenis',
                  ),
                  trailing: DropdownButton<String>(
                    value: selectedKategori,
                    items: kategori.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedKategori = value!;
                      });
                    },
                  ),
                ),
                TextButton(
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      var jumlahInt = int.parse(jumlah);
                      usrData.add(Data(
                        judul: _judul,
                        jumlah: jumlahInt,
                        nominal: selectedKategori,
                      ));
                      // if successful, show a dialog containing the form values
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Data berhasil disimpan'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text('Judul: $_judul'),
                                  Text('Jumlah: $jumlah'),
                                  Text('Kategori: $selectedKategori'),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}