import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'package:ogp_data_extract/ogp_data_extract.dart';

void main() async {
  const String url = 'https://pub.dev/';
  final http.Response response = await http.get(Uri.parse(url));
  final Document? document = OgpDataExtract.toDocument(response);
  final OgpData ogpData = OgpDataParser(document).parse();
  print(ogpData);
}
