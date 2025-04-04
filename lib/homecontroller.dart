import 'package:get/get.dart';

class HomeController extends GetxController {
  var salary = '5000 USD'.obs;
  var githubCommits = 42.obs;

  void fetchUserData() {
    // Simulate fetching data from API
    salary.value = '5500 USD'; // Update with real API call
    githubCommits.value = 45;  // Update with real GitHub API call
  }
}