import 'package:get/get.dart';
import 'package:whatsapp_clone/common/database/db_helper.dart';
import 'package:whatsapp_clone/common/model/status.dart';

class StatusController extends GetxController {
  StatusController();
  RxList statusListX = <Status>[].obs;
  final dbHelper = DBHelper();
  RxList get statusList => statusListX;

  @override
  onInit() {
    super.onInit();
    getStatus();
  }

  Future<int> insertStatus({Status? status}) async {
    return await dbHelper.insertStatusList(status);
  }

  Future<void> getStatus() async {
    final List<Map<String, dynamic>> statusData = await dbHelper.getStatus();
    statusList.assignAll(statusData.map((e) => Status.fromJson(e)).toList());
  }
}
