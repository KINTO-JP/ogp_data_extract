ogp_data_extract
=============

A simple Dart library for extracting Open Graph protocol metadata from web pages. This library allows you to retrieve metadata items defined in "The Open Graph protocol."  

## Getting Started

Add the dependency to your package's `pubspec.yaml` file:  

```yaml
dependencies:
  ogp_data_extract: ^0.2.x
```

Then, install the package using the following commands:  

With Dart:

```shell
$ dart pub get
```

With Flutter:  

```shell
$ flutter pub get
```

## Structure

This library supports the extraction of the following Open Graph protocol metadata fields, as specified in the [Open Graph protocol documentation](https://ogp.me/):  

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
    - articleTags
    - bookTags
    - videoTags
```

## Usage

### Parse OgpData for a given URL

You can extract Open Graph metadata for a specific URL as shown in the following example:  

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

You can specify a custom User-Agent string for the request, which is useful for targeting specific devices or environments:  

```dart
void main() async {
    const String url = 'https://pub.dev/';
    const String userAgent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Mobile/15E148 Safari/604.1';
    final OgpData? ogpData = await OgpDataExtract.execute(url, userAgent: userAgent);
    print(ogpData);
}
```

### Use the parser manually

If you already have the HTML content of a webpage, you can parse it manually using the following approach:  

```dart
void main() async {
    const String url = 'https://pub.dev/';
    final http.Response response = await http.get(Uri.parse(url));
    final Document? document = OgpDataExtract.toDocument(response);
    final OgpData ogpData = OgpDataParser(document).parse();
    print(ogpData);
}
```

### Fetch Favicon for a Web Page

In addition to Open Graph protocol extraction, this library also provides a utility to fetch the favicon URLs from a given webpage. This is useful for retrieving the associated website icons dynamically.

#### Example: Fetch Favicon

You can fetch all available favicon URLs for a given URL using the `fetchFavicon` method. Here's an example:

```dart
void main() async {
  const String url = 'https://pub.dev/';
  final List<String?> favicons = await OgpDataExtract.fetchFavicon(url);
  print(favicons); // Example output: ['/favicon.ico?hash=nk4nss8c7444fg0chird9erqef2vkhb8']
}
```

This method parses the <link> tags in the webpage to find any icon-related metadata and returns a list of favicon URLs.  

## Credit

This library is inspired by [metadata_fetch](https://pub.dev/packages/metadata_fetch), but it is specifically designed for Open Graph protocol extraction.  
