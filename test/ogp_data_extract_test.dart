import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:html/dom.dart';
import 'package:http/http.dart' as http;
import 'package:ogp_data_extract/ogp_data_extract.dart';

void main() {
  test('Use Ogp Data Extract Execute Test', () async {
    const String url = 'https://pub.dev/';
    final OgpData? ogpData = await OgpDataExtract.execute(url);

    expect(ogpData, isNotNull);
    expect(ogpData!.url, 'https://pub.dev/');
    expect(ogpData.type, 'website');
    expect(ogpData.title, 'The official repository for Dart and Flutter packages.');
    expect(ogpData.description,
        'Pub is the package manager for the Dart programming language, containing reusable libraries & packages for Flutter and general Dart programs.');
    expect(ogpData.image,
        'https://pub.dev/static/hash-smmb6j0s/img/pub-dev-icon-cover-image.png');
    expect(ogpData.siteName, 'Dart packages');
  });

  test('Fetch Favicon Test', () async {
    const String url = 'https://pub.dev/';
    final String? favicon = await OgpDataExtract.fetchFavicon(url);

    expect(favicon, isNotNull);
    expect(favicon, '/favicon.ico?hash=nk4nss8c7444fg0chird9erqef2vkhb8');
  });

  test('Use The Parser Manually Test', () async {
    const String url = 'https://flutter.dev';
    final http.Response response = await http.get(Uri.parse(url));
    expect(response.statusCode, HttpStatus.ok);

    final Document? document = OgpDataExtract.toDocument(response);
    expect(document, isNotNull);

    final OgpData ogpData = OgpDataParser(document).parse();
    expect(ogpData.toMap(), isNotEmpty);

    expect(ogpData.url, '//flutter.dev/');
    expect(ogpData.title, 'Flutter - Build apps for any screen');
    expect(ogpData.description,
        'Flutter transforms the entire app development process. Build, test, and deploy beautiful mobile, web, desktop, and embedded apps from a single codebase.');
    expect(ogpData.image,
        'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png');
  });

  test('Twitter Test', () async {
    String url = 'https://twitter.com/FlutterDev/status/1468747974792540163';
    final OgpData? ogpData = await OgpDataExtract.execute(url);
    expect(ogpData!.title, 'Flutter (@FlutterDev) on X');
    expect(ogpData.type, 'article');
    expect(ogpData.image,
        'https://pbs.twimg.com/tweet_video_thumb/FGII52MVkAQN-Sj.jpg:large');
  });
}
