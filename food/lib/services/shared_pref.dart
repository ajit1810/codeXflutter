import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper{
  static String userIdKeys="USERKEY";
  static String userNameKeys="USERNAMEKEY";
  static String userEmailKeys="USEREmailKEY";
  static String userWalletKeys="USERWALLETKEY";

  Future<bool> saveUserId(getUserId)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdKeys, getUserId);
  }

  Future<bool> saveUserName(getUserName)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNameKeys, getUserName);
  }
  Future<bool> saveUserEmail(getUserEmail)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailKeys, getUserEmail);
  }

  Future<bool> saveUserWallet(getUserWallet)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userWalletKeys, getUserWallet);
  }

  Future<String?>getUserId()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userIdKeys);
  }

  Future<String?>getUserName()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNameKeys);
  }

  Future<String?>getUserEmail()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmailKeys);
  }


  Future<String?>getUserWallet()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userWalletKeys);
  }

}