import 'package:get/get.dart';

extension RxFunctions on Rx<bool> {
  get invert => value = !value;
  get clear => value = false;
}

extension Functions on bool {
  get invert => !this;
  get clear => false;
}