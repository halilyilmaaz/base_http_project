
class HttpUrl {
  /// Api Url
  static const String baseUrl = 'https://reqres.in/';

  /// Api Key
  static const String apiKey = '';

  /// Secret Key
  static const String secretKey = '';

  /// client
  static const String client = 'MOBILE_APP';

  /// GET (for get new token)
  static const String getToken = 'gettoken';

  ///  Login Url
  static const loginUrl = 'api/register';

  /// Register Url
  static const registerUrl = 'api/register';

  ///  Home sayfasındaki dashboard
  static const homeUrl = "home.json";
  static dashboardUrl(int ownerId) =>
      'home/$ownerId';

  static const activationUrl = 'papp/courier/login/activation';    
}
