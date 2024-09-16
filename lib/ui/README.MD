pertama data akan ditangkap oleh masing-masing controller setelah itu data akan disimpan sementara di 
TextEditingController sebelum tombol simpan ditekan.ketika data selesai di isi dan tombol simpan di 
tekan data akan diambil oleh blok kode
String kodeProduk = _kodeProdukController.text;
String namaProduk = _namaProdukController.text;
int harga = int.parse(_hargaProdukController.text);

dan selanjutnya data akan di push ke ProdukDetail dengan blok kode
Navigator.of(context).push(MaterialPageRoute(
builder: (context) => ProdukDetail(
kodeProduk: kodeProduk,
namaProduk: namaProduk,
hargaProduk: tahun,
)));
selanjutnya data bisa ditampilkan di

