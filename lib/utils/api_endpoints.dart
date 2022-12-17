
class ApiEndpoints
{
  static const String baseUrl = 'http://localhost/pandamar/public/api/';
  static _AuthEndpoints authEndpoints = _AuthEndpoints();
}
class _AuthEndpoints
{
  final String loginEmail = 'v1/login';
}