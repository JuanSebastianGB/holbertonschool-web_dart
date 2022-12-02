class Password {
  String _password = '';

  Password({password}) {
    this._password = password;
  }

  void set password(String password) {
    this._password = password;
  }

  String get password {
    return this._password;
  }

  bool isValid() {
    return this.password.length >= 8 &&
        this.password.length <= 16 &&
        this.password.contains(RegExp(r'[A-Z]')) &&
        this.password.contains(RegExp(r'[a-z]')) &&
        this.password.contains(RegExp(r'[0-9]'));
  }

  @override
  String toString() {
    return 'Your Password is: ${this.password}';
  }
}
