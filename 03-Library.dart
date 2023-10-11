/*
  Trần Đặng Thanh - 20KTMT2 - 106200278
- Một thư viện có nhiều loại sách khác nhau như: tiểu thuyết, sách văn hóa - xã hội, giáo khoa,...
1. Xây dựng một lớp cơ bản "Sach" với các thuộc tính như: "tieu_de", "tac_gia", "isbn", "nam_xuat_ban", "nha_xuat_ban"
và phương thức "inChiTiet()" để hiển thị chi tiết sách
2. Các lớp con "Tieu_thuyet", "Vanhoa_Xahoi" và "Giao_khoa" kế thừa lớp "Sach"
3. Mỗi lớp con có các đặc điểm riêng. Ví dụ:
  + "Tieu_thuyet" có thuộc tính "loai" (khoa học viễn tưởng, tình cảm)
  + "Giao_khoa" có thuộc tính "mon_hoc" (toán, Lý, Hóa,...)
  +"Vanhoa_Xahoi" có thuộc tính "linh_vuc" ( nấu ăn, du lịch)
4. Mỗi lớp con ghi đè phương thức "inChiTiet()" đê hiển thị thông tin chi tiết của mình
5. Trong hàm "main()", tạo đối tượng cho mỗi lớp con và gọi phương thức "inChiTiet()"
 của chúng
*/

class Sach {
  String tieu_de;
  String tac_gia;
  String isbn;
  String nam_xuat_ban;
  String nha_xuat_ban;
  Sach(this.tieu_de, this.tac_gia, this.isbn, this.nam_xuat_ban,
      this.nha_xuat_ban);

  inChiTiet() {
    print("Tieu de: $tieu_de");
    print("Tac gia: $tac_gia");
    print("Ma sach: $isbn");
    print("Nam xuat ban: $nam_xuat_ban");
    print("Nha xuat ban: $nha_xuat_ban");
  }
}

class Tieu_thuyet extends Sach {
  String loai;
  Tieu_thuyet(String tieu_de, String tac_gia, String isbn, String nam_xuat_ban,
      String nha_xuat_ban, this.loai)
      : super(tieu_de, tac_gia, isbn, nam_xuat_ban, nha_xuat_ban) {}
  @override
  inChiTiet() {
    print("Loai: $loai");
    super.inChiTiet();
  }
}

class Giao_khoa extends Sach {
  String mon_hoc;
  Giao_khoa(String tieu_de, String tac_gia, String isbn, String nam_xuat_ban,
      String nha_xuat_ban, this.mon_hoc)
      : super(tieu_de, tac_gia, isbn, nam_xuat_ban, nha_xuat_ban) {}
  @override
  inChiTiet() {
    print("Loai: $mon_hoc");
    super.inChiTiet();
  }
}

class Vanhoa_Xahoi extends Sach {
  String linh_vuc;
  Vanhoa_Xahoi(String tieu_de, String tac_gia, String isbn, String nam_xuat_ban,
      String nha_xuat_ban, this.linh_vuc)
      : super(tieu_de, tac_gia, isbn, nam_xuat_ban, nha_xuat_ban) {}
  @override
  inChiTiet() {
    print("Loai: $linh_vuc");
    super.inChiTiet();
  }
}

void main() {
  var Sach_1 = Tieu_thuyet(
      "Tieu thuyet_1", "Tran Dang Thanh", "1999x", "2002", "Ha Noi", "Loai_A");
  Sach_1.inChiTiet();
  print("\n");
  var Sach_2 = Giao_khoa(
      "Giao_khoa_1", "Hoang Ngoc Loc", "18xx", "2003", "Sai Gon", "Loai_B");
  Sach_2.inChiTiet();
  print("\n");

  var Sach_3 = Vanhoa_Xahoi(
      "Vanhoa_xahoi_1", "Vi Nhan", "20xx", "2012", "Da Nang", "Loai_C");
  Sach_3.inChiTiet();
}
