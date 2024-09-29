// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:uts_papb/tambah_catatan.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Keuangan'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text('Total Pemasukkan : Rp1.000'),
              SizedBox(height: 20),
              Text('Total Pengeluaran : Rp500'),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TambahCatatan();
                    }));
                  },
                  child: Text('Tambah Catatan Finansial')),
              ListTile(
                  title: Text('Pemasukkan'),
                  subtitle: Text('Rp1.000'),
                  leading: Text(
                    '💰',
                    textScaler: TextScaler.linear(3),
                  ),
                  trailing: Wrap(
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
