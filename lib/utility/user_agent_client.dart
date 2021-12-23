import 'package:http/http.dart' as http;

/// The class to set user-agent for Http.
class UserAgentClient extends http.BaseClient {
  final String userAgent;
  final http.Client _client;

  UserAgentClient(this.userAgent, this._client);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers['User-Agent'] = userAgent;
    return _client.send(request);
  }
}
