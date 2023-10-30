import 'dart:async';

void main() {
  Future.delayed(Duration(seconds: 2), () {
    return 'Hoàn thành tác vụ';
  }).timeout(Duration(seconds: 1), onTimeout: () {
    throw TimeoutException('Quá thời gian chờ đợi');
  }).then((result) {
    print(result);
  }).catchError((e) {
    print('Đã xảy ra lỗi: $e');
  });
}
