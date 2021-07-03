import 'dart:async';

class Auth{

  const Auth({
    this.f0,
  });

  final String? f0;
}

enum AuthenticationStatus {
  initial,
  unauthenticated,
  authenticated
}

Future<void> checkRole() async {
  
}