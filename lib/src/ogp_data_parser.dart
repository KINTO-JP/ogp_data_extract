import 'package:html/dom.dart';
import 'base_ogp_data_parser.dart';

class OgpDataParser with BaseOgpDataParser {
  final Document? _document;
  OgpDataParser(this._document);

  @override
  String? get url => _getContent(property: 'og:url');

  @override
  String? get type => _getContent(property: 'og:type');

  @override
  String? get title => _getContent(property: 'og:title');

  @override
  String? get description => _getContent(property: 'og:description');

  @override
  String? get image => _getContent(property: 'og:image');

  @override
  String? get imageSecureUrl => _getContent(property: 'og:image:secure_url');

  @override
  String? get imageType => _getContent(property: 'og:image:type');

  @override
  String? get imageWidth => _getContent(property: 'og:image:width');

  @override
  String? get imageHeight => _getContent(property: 'og:image:height');

  @override
  String? get imageAlt => _getContent(property: 'og:image:alt');

  @override
  String? get siteName => _getContent(property: 'og:site_name');

  @override
  String? get determiner => _getContent(property: 'og:determiner');

  @override
  String? get locale => _getContent(property: 'og:locale');

  @override
  String? get localeAlternate => _getContent(property: 'og:locale:alternate');

  @override
  String? get latitude => _getContent(property: 'og:latitude');

  @override
  String? get longitude => _getContent(property: 'og:longitude');

  @override
  String? get streetAddress => _getContent(property: 'og:street-address');

  @override
  String? get locality => _getContent(property: 'og:locality');

  @override
  String? get region => _getContent(property: 'og:region');

  @override
  String? get postalCode => _getContent(property: 'og:postal-code');

  @override
  String? get countryName => _getContent(property: 'og:country-name');

  @override
  String? get email => _getContent(property: 'og:email');

  @override
  String? get phoneNumber => _getContent(property: 'og:phone_number');

  @override
  String? get faxNumber => _getContent(property: 'og:fax_number');

  @override
  String? get video => _getContent(property: 'og:video');

  @override
  String? get videoSecureUrl => _getContent(property: 'og:video:secure_url');

  @override
  String? get videoHeight => _getContent(property: 'og:video:height');

  @override
  String? get videoWidth => _getContent(property: 'og:video:width');

  @override
  String? get videoType => _getContent(property: 'og:video:type');

  @override
  String? get audio => _getContent(property: 'og:audio');

  @override
  String? get audioSecureUrl => _getContent(property: 'og:audio:secure_url');

  @override
  String? get audioTitle => _getContent(property: 'og:audio:title');

  @override
  String? get audioArtist => _getContent(property: 'og:audio:artist');

  @override
  String? get audioAlbum => _getContent(property: 'og:audio:album');

  @override
  String? get audioType => _getContent(property: 'og:audio:type');

  @override
  String? get fbAdmins => _getContent(property: 'fb:admins');

  @override
  String? get fbAppId => _getContent(property: 'fb:app_id');

  @override
  String? get twitterCard => _getContent(property: 'twitter:card');

  @override
  String? get twitterSite => _getContent(property: 'twitter:site');

  @override
  String toString() => parse().toString();

  String? _getContent({String tag = 'meta', String attribute = 'property',
        String? property, String key = 'content',
      }) {
    return _document
        ?.getElementsByTagName(tag)
        .cast<Element?>()
        .firstWhere((element) => element?.attributes[attribute] == property,
        orElse: () => null)
        ?.attributes[key];
  }
}