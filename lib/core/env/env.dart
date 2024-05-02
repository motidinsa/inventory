import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env',obfuscate: true)

abstract class Env {
  @EnviedField(varName: 'LOGIN_KEY',obfuscate: true)
  static final String loginKey = _Env.loginKey;
}
