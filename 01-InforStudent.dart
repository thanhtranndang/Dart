// Trần Đặng Thành - 106200278 - 20KTMT2
/* 
  Viết chương trình xây dựng lớp Student với các thuộc tính:
  Họ tên, giới tính, điểm Toán Lý Hóa
  1. Viết hàm khởi tạo
  2. Viết các setter/ getter
  3. Viết hàm tính điểm trung bình
  4. Viết hàm xuất thông tin
  5. Ví dụ cụ thể trong hàm main()
*/

class Student {
  String _name;
  String _geneder;
  double _pToan;
  double _pLy;
  double _pHoa;

  Student(this._name, this._geneder, this._pToan, this._pLy, this._pHoa);
  // Getter
  String get name => _name;
  String get geneder => _geneder;
  double get pToan => _pToan;
  double get pLy => _pLy;
  double get pHoa => _pHoa;

  // Setter

  set setName(String newName) {
    _name = newName;
  }

  set setGeneder(String newGeneder) {
    _geneder = newGeneder;
  }

  set setPToan(double newScore) {
    _pToan = newScore;
  }

  set setPLy(double newScore) {
    _pLy = newScore;
  }

  set setPHoa(double newScore) {
    _pHoa = newScore;
  }

  double calculatorPoint() {
    return (_pToan + _pLy + _pHoa) / 3.0;
  }

  // hiển thị thông tin
  showInfor() {
    print("Name: $_name");
    print("Gioi tinh: $_geneder");
    print("Diem Toan: $_pToan");
    print("Diem Ly: $_pLy");
    print("Diem Hoa: $_pHoa");
    print("Diem trung binh 3 mon: ${calculatorPoint()}");
    //print("Diem trung binh: $_tb");
  }
}

void main() {
  final student1 = new Student("Thanh", 'Female', 9.0, 9.5, 9.8);
  student1.showInfor();

  // Sử dụng setter
  student1._name = "Thinh";
  student1._pToan = 8.5;
  student1.showInfor();

  student1._pLy = 9.0;
}
