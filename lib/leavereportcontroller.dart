import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LeaveReportController extends GetxController {
  var leaveRequests = <String>[].obs;
  var dailyReports = <String>[].obs;

  Future<void> submitLeaveRequest(String reason) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    leaveRequests.add(reason);
    await prefs.setStringList('leaveRequests', leaveRequests);
    Get.snackbar('Success', 'Leave request submitted!');
  }

  Future<void> submitDailyReport(String report) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    dailyReports.add(report);
    await prefs.setStringList('dailyReports', dailyReports);
    Get.snackbar('Success', 'Daily report submitted!');
  }

  void loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    leaveRequests.value = prefs.getStringList('leaveRequests') ?? [];
    dailyReports.value = prefs.getStringList('dailyReports') ?? [];
  }
}