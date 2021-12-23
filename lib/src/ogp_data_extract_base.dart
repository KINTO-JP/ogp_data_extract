import 'dart:convert';
import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:ogp_data_extract/ogp_data_extract.dart';
import 'package:ogp_data_extract/utility/user_agent_client.dart';
import 'package:string_validator/string_validator.dart';

class OgpDataExtract {
  /// returns [OgpData] from [url] and [userAgent].
  static Future<OgpData?> execute(String url,
      {String userAgent = 'bot'}) async {
    if (!isURL(url)) {
      return null;
    }

    final UserAgentClient client = UserAgentClient(userAgent, http.Client());
    final http.Response response = await client.get(Uri.parse(url));

    final Document? document = toDocument(response);
    if (document == null) {
      return null;
    }

    return OgpDataParser(document).parse();
  }

  /// returns [html.Document] from [http.Response].
  static Document? toDocument(http.Response response) {
    if (response.statusCode != 200) {
      return null;
    }

    Document? document;
    try {
      document = parser.parse(utf8.decode(response.bodyBytes));
    } catch (err) {
      return null;
    }

    return document;
  }
}
