ogp_data_extract
=============

A simple dart library for extracting the Open Graph protocol on a web pages. This library allows you to retrieve metadata items defined in "The Open Graph protocol".

## Getting Started

In your package's pubspec.yaml file add the dependency.

```yaml
dependencies:
  ogp_data_extract: ^0.x.x
```

You can install packages from the command line.

With Dart:

```shell
$ dart pub get
```

With Flutter:

```shell
$ flutter pub get
```

## Structure

reference : [The Open Graph protocol](https://ogp.me/)

```text
OgpData:
    - url
    - type
    - title
    - description
    - image
    - imageSecureUrl
    - imageType
    - imageWidth
    - imageHeight
    - imageAlt    
    - siteName
    - determiner
    - locale
    - localeAlternate    
    - latitude
    - longitude
    - streetAddress
    - locality
    - region
    - postalCode
    - countryName
    - email
    - phoneNumber
    - faxNumber
    - video
    - videoSecureUrl
    - videoHeight
    - videoWidth
    - videoType
    - audio
    - audioSecureUrl
    - audioTitle
    - audioArtist
    - audioAlbum
    - audioType
    - fbAdmins
    - fbAppId
    - twitterCard
    - twitterSite
```

## Usage

### Parse OgpData for a given URL

```dart
void main() async {
    const String url = 'https://pub.dev/';
    final OgpData? ogpData = await OgpDataExtract.execute(url);
    print(ogpData?.url); // https://pub.dev/
    print(ogpData?.type); // website
    print(ogpData?.title); // The official repository for Dart and Flutter packages.
    print(ogpData?.description); // Pub is the package manager for the Dart programming language, containing reusable libraries & packages for Flutter, AngularDart, and general Dart programs.
    print(ogpData?.image); // https://pub.dev/static/img/pub-dev-icon-cover-image.png?hash=vg86r2r3mbs62hiv4ldop0ife5um2g5g
    print(ogpData?.siteName); // Dart packages
}
```

### Specify the User-Agent when parsing

```dart
void main() async {
    const String url = 'https://pub.dev/';
    const String userAgent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1';
    final OgpData? ogpData = await OgpDataExtract.execute(url, userAgent: userAgent);
    print(ogpData);
}
```

### Use the parser manually

```dart
void main() async {
    const String url = 'https://pub.dev/';
    final http.Response response = await http.get(Uri.parse(url));
    final Document? document = OgpDataExtract.toDocument(response);
    final OgpData ogpData = OgpDataParser(document).parse();
    print(ogpData);
}
```

## Credit

This library is inspired by [metadata_fetch](https://pub.dev/packages/metadata_fetch).

However, this one is specialized for Open Graph protocol extraction.
