import 'package:flutter/material.dart';
import 'tampil_data.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input data'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHarga(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama"),
      controller: _kodeProdukController,
    );
  }

  _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "NIM "),
      controller: _namaProdukController,
    );
  }

  _textboxHarga() {
    return TextField(
      decoration: const InputDecoration(labelText: "Tahun Lahir"),
      controller: _hargaProdukController,
      keyboardType: TextInputType.number,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String kodeProduk = _kodeProdukController.text;
          String namaProduk = _namaProdukController.text;
          int harga = int.parse(_hargaProdukController.text);
          int tahun = 2024-harga;
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProdukDetail(
                kodeProduk: kodeProduk,
                namaProduk: namaProduk,
                hargaProduk: tahun,
              )));
        },
        child: const Text('Simpan'));
  }
}
