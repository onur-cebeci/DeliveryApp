import 'package:delivery_app/models/jobs_models/jobs_model.dart';
import 'package:delivery_app/screens/active_jobs_screens/active_jobs_screen.dart';
import 'package:delivery_app/screens/home_screens/home_body_screen.dart';
import 'package:delivery_app/screens/map_screens/map_screen.dart';
import 'package:delivery_app/screens/profile_screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';

class BottomNavBarController extends ChangeNotifier {
  List<JobsModel> acceptedList = [];
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home), label: 'Ana Sayfa'),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.map), label: 'Harita'),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person_fill), label: 'Profil')
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void getAccceptedList(
      {required JobsModel model, required BuildContext context}) {
    acceptedList.add(model);
  }

  void removeAccceptedList() {
    acceptedList.remove(acceptedList.first);
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return acceptedList.isEmpty
            ? const HomeScreenBody()
            : const ActiveJobsScreen();

      case 1:
        return const MapScreen();

      case 2:
        return const ProfileScreen();
      default:
        return const HomeScreenBody();
    }
  }
}
