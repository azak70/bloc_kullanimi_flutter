class HesapScreenReporsitory {
  int toplamaYap(String sayi_1, String sayi_2) {
    int sayi1 = int.parse(sayi_1);
    int sayi2 = int.parse(sayi_2);
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  int carpmaYap(String sayi_1, String sayi_2) {
    int sayi1 = int.parse(sayi_1);
    int sayi2 = int.parse(sayi_2);
    int carpim = sayi1 * sayi2;
    return carpim;
  }
}
