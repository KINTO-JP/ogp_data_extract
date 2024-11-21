import 'package:ogp_data_extract/ogp_data_extract.dart';

void main() async {
  const String url = 'https://pub.dev/';
  final OgpData? ogpData = await OgpDataExtract.execute(url);
  print(ogpData?.url); // https://pub.dev/
  print(ogpData?.type); // website
  print(ogpData?.title); // The official repository for Dart and Flutter packages.
  print(ogpData
      ?.description); // Pub is the package manager for the Dart programming language, containing reusable libraries & packages for Flutter, AngularDart, and general Dart programs.
  print(ogpData
      ?.image); // https://pub.dev/static/img/pub-dev-icon-cover-image.png?hash=vg86r2r3mbs62hiv4ldop0ife5um2g5g
  print(ogpData?.siteName); // Dart packages
}
