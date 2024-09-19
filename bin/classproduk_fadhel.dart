class Produk{
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.harga, this.jumlah, this.diskon);

  double hitungTotalHargaTanpaDiskon(){
    return harga * jumlah;
  }

  double hitungTotalHargaSetelahDiskon(){
    double totalHargaTanpaDiskon = hitungTotalHargaTanpaDiskon();
    double Diskon = totalHargaTanpaDiskon * (diskon / 100);
    return totalHargaTanpaDiskon - Diskon;
  }

  void tampilkanInformasiProduk(){
    print('Selamat Datang di Grewok Store');
    print('Nama Produk: $namaProduk');
    print('Harga Satuan: Rp $harga');
    print('Jumlah: $jumlah');
    print('Diskon : $diskon%');
    print('');
    print('');
    print('Total Harga Tanpa Diskon: Rp ${hitungTotalHargaTanpaDiskon()}');
    print('Total Harga Setelah Diskon: Rp ${hitungTotalHargaSetelahDiskon()}');
    print('');
    print('Terima Kasih!');
  }

}

  void main(){
    Produk camera = Produk('Kamera', 1500000, 2, 10);

    camera.tampilkanInformasiProduk();
  }