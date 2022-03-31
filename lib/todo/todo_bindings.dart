import 'package:get/get.dart';
import 'todo_controller.dart';

class TodoBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(TodoController(), permanent: true);
  }
}
