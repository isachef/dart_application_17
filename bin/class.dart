class User {
 
  String login = '';
  String password = '';

  // User({
  //   required this.login,
  //   required this.password,
  // });
  bool check_login_and_password(
    String login,
    String password,
    String confirmPassword,
  ) {
    int ok = 0;
    int wrongSymbol = 0;
    for (int i = 0; i < login.length; i++) {
      if (login[i] == '@') {
        ok = 1;
        break;
      }
    }
    if (ok == 0 || login.length > 20) {
      print('wrong login');
      return false;
    }
    for (var i = 0; i < password.length; i++) {
      ok = 0;

      if (password[i] == '_') {
        ok = 1;
      }
      if (password[i] == '?' ||
          password[i] == '@' ||
          password[i] == '\$' ||
          password[i] == '@') {
        wrongSymbol = 1;
      }
    }
    if (wrongSymbol == 1 && ok == 0 ||
        password.length > 20 ||
        password != confirmPassword) {
      print('wrong password');
      return false;
    }
    return true;
  }
}
