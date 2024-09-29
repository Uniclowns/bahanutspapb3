// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TambahCatatan extends StatefulWidget {
  const TambahCatatan({super.key});

  @override
  _TambahCatatanState createState() => _TambahCatatanState();
}

class _TambahCatatanState extends State<TambahCatatan> {
  String? _selectedCategory; // Variabel untuk menyimpan kategori yang dipilih
  List<String> _categories = ['Pemasukkan', 'Pengeluaran']; // Daftar kategori

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Catatan Finansial'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Judul Catatan',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Kategori',
                    border: OutlineInputBorder(),
                  ),
                  value: _selectedCategory, // Nilai awal dari dropdown
                  items: _categories.map((String category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedCategory = newValue;
                    });
                  },
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Jumlah Uang',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType:
                      TextInputType.number, // Mengatur agar input hanya angka
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk menyimpan catatan
                  },
                  child: Text('Simpan Catatan'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
