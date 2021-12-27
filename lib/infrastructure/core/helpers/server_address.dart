class ServerAddress {
  final String _address = "http://92.255.108.56:8000/api";
  final String _apiVer = "v1";
  get relevant => "$_address/$_apiVer/";
}

class AdminServerAddress {
  static const _address = 'http://127.0.0.1:5555';
  static const _apiVer = 'v1';
  get relevant => "$_address/$_apiVer/";
}
