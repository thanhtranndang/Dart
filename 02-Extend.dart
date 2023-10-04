/*
Bài tập: Viết chương trình xây dựng lớp Sinhvien với các dữ liệu thành viên:
  + Họ tên
  + Điểm Toán, Lý, Hóa
  + Điểm trung bình

  - Lớp Lophoc kế thừa lớp Sinh viên
  + Thành viên: Tên lớp, mã sinh viên

  1. Viết các hàm tạo
  2. Viết hàm tính điểm trung bình

*/

//          Trần Đặng Thành - 106200278 - 20KTMT2

class Sinhvien {
  String name;
  double toan;
  double ly;
  double hoa;
  double dtb;

  Sinhvien(this.name, this.toan, this.ly, this.hoa, this.dtb) {
    dtb = tinhdiemtb();
  }

  double tinhdiemtb() {
    return (toan + ly + hoa) / 3;
  }

  showThongtin() {
    print("Ho ten: $name");
    print("Toan: $toan");
    print("Ly: $ly");
    print("Hoa: $hoa");
    print("Diem trung binh: ${tinhdiemtb()}");
  }
}

class Lophoc extends Sinhvien {
  String tenLop;
  int maSv;

  Lophoc(String name, double toan, double ly, double hoa, this.tenLop,
      this.maSv, double dtb)
      : super(name, toan, ly, hoa, dtb) {
    this.dtb = dtb;
  }

  @override
  showThongtin() {
    super.showThongtin();
    print("Ten lop: $tenLop");
    print("Ma sinh vien: $maSv");
  }
}

void main() {
  var Info_1 =
      Lophoc("Tran Dang Thanh", 8.6, 9.5, 9.0, "20KTMT2", 106200278, 0);
  Info_1.showThongtin();
}
