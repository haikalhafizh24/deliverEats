class ApiPathConstant {
  static String singIn() => '';
  static String signUp(String section) => '/auth/v1/signup';
  static String signIn() => '/auth/v1/token?grant_type=password';

  static const String mostPopular = '/mostpopular/v2/emailed/7.json';
}
