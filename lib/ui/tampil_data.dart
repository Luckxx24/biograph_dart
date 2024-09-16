import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget{
  final String kodeProduk;
  final String namaProduk;
  final int hargaProduk;
  const ProdukDetail(
      {Key? key,
        required this.kodeProduk,
        required this.namaProduk,
        required this.hargaProduk})
      : super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text("Perkenalan"),
        ),
        body:Container(
            margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nama saya $kodeProduk,NIM $namaProduk ,dan umur saya adalah $hargaProduk "),

            ],
          ),
        )
    );
  }
}