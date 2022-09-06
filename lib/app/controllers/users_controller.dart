import 'package:flutter/cupertino.dart';
import 'package:flutter_users_api/app/data/network/remote_services.dart';

import '../data/models/users_model.dart';

class UsersController extends ChangeNotifier {
  bool isLoading = false;
  List<Users> users = [];

  // let's init the state
  UsersController() {
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    isLoading = true;
    notifyListeners();
    // notify listeners will update the state of isLoading to true
    users = await RemoteServices.fetchUsers();
    isLoading = false;
    notifyListeners();
  }
}
