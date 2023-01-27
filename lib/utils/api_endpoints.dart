
class ApiEndpoints
{
  static const String baseUrl = 'http://192.168.0.101/pandamar/public/api/';
  static _AuthEndpoints authEndpoints = _AuthEndpoints();
}
class _AuthEndpoints
{
  final String loginEmail = 'v1/login';
}