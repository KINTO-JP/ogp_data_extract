import 'package:html/dom.dart';
import 'base_ogp_data_parser.dart';

class OgpDataParser with BaseOgpDataParser {
  final Document? _document;
  OgpDataParser(this._document);

  /// Get [OgpData.url] from 'og:url'.
  @override
  String? get url => _getContent(property: 'og:url');

  /// Get [OgpData.type] from 'og:type'.
  @override
  String? get type => _getContent(property: 'og:type');

  /// Get [OgpData.title] from 'og:title'.
  @override
  String? get title => _getContent(property: 'og:title');

  /// Get [OgpData.description] from 'og:description'.
  @override
  String? get description => _getContent(property: 'og:description');

  /// Get [OgpData.image] from 'og:image'.
  @override
  String? get image => _getContent(property: 'og:image');

  /// Get [OgpData.imageSecureUrl] from 'og:image:secure_url'.
  @override
  String? get imageSecureUrl => _getContent(property: 'og:image:secure_url');

  /// Get [OgpData.imageType] from 'og:image:type'.
  @override
  String? get imageType => _getContent(property: 'og:image:type');

  /// Get [OgpData.imageWidth] from 'og:image:width'.
  @override
  String? get imageWidth => _getContent(property: 'og:image:width');

  /// Get [OgpData.imageHeight] from 'og:image:height'.
  @override
  String? get imageHeight => _getContent(property: 'og:image:height');

  /// Get [OgpData.imageAlt] from 'og:image:alt'.
  @override
  String? get imageAlt => _getContent(property: 'og:image:alt');

  /// Get [OgpData.siteName] from 'og:site_name'.
  @override
  String? get siteName => _getContent(property: 'og:site_name');

  /// Get [OgpData.determiner] from 'og:determiner'.
  @override
  String? get determiner => _getContent(property: 'og:determiner');

  /// Get [OgpData.locale] from 'og:locale'.
  @override
  String? get locale => _getContent(property: 'og:locale');

  /// Get [OgpData.localeAlternate] from 'og:locale:alternate'.
  @override
  String? get localeAlternate => _getContent(property: 'og:locale:alternate');

  /// Get [OgpData.latitude] from 'og:latitude'.
  @override
  String? get latitude => _getContent(property: 'og:latitude');

  /// Get [OgpData.longitude] from 'og:longitude'.
  @override
  String? get longitude => _getContent(property: 'og:longitude');

  /// Get [OgpData.streetAddress] from 'og:street-address'.
  @override
  String? get streetAddress => _getContent(property: 'og:street-address');

  /// Get [OgpData.locality] from 'og:locality'.
  @override
  String? get locality => _getContent(property: 'og:locality');

  /// Get [OgpData.region] from 'og:region'.
  @override
  String? get region => _getContent(property: 'og:region');

  /// Get [OgpData.postalCode] from 'og:postal-code'.
  @override
  String? get postalCode => _getContent(property: 'og:postal-code');

  /// Get [OgpData.countryName] from 'og:country-name'.
  @override
  String? get countryName => _getContent(property: 'og:country-name');

  /// Get [OgpData.email] from 'og:email'.
  @override
  String? get email => _getContent(property: 'og:email');

  /// Get [OgpData.phoneNumber] from 'og:phone_number'.
  @override
  String? get phoneNumber => _getContent(property: 'og:phone_number');

  /// Get [OgpData.faxNumber] from 'og:fax_number'.
  @override
  String? get faxNumber => _getContent(property: 'og:fax_number');

  /// Get [OgpData.video] from 'og:video'.
  @override
  String? get video => _getContent(property: 'og:video');

  /// Get [OgpData.videoSecureUrl] from 'og:video:secure_url'.
  @override
  String? get videoSecureUrl => _getContent(property: 'og:video:secure_url');

  /// Get [OgpData.videoHeight] from 'og:video:height'.
  @override
  String? get videoHeight => _getContent(property: 'og:video:height');

  /// Get [OgpData.videoWidth] from 'og:video:width'.
  @override
  String? get videoWidth => _getContent(property: 'og:video:width');

  /// Get [OgpData.videoType] from 'og:video:type'.
  @override
  String? get videoType => _getContent(property: 'og:video:type');

  /// Get [OgpData.audio] from 'og:audio'.
  @override
  String? get audio => _getContent(property: 'og:audio');

  /// Get [OgpData.audioSecureUrl] from 'og:audio:secure_url'.
  @override
  String? get audioSecureUrl => _getContent(property: 'og:audio:secure_url');

  /// Get [OgpData.audioTitle] from 'og:audio:title'.
  @override
  String? get audioTitle => _getContent(property: 'og:audio:title');

  /// Get [OgpData.audioArtist] from 'og:audio:artist'.
  @override
  String? get audioArtist => _getContent(property: 'og:audio:artist');

  /// Get [OgpData.audioAlbum] from 'og:audio:album'.
  @override
  String? get audioAlbum => _getContent(property: 'og:audio:album');

  /// Get [OgpData.audioType] from 'og:audio:type'.
  @override
  String? get audioType => _getContent(property: 'og:audio:type');

  /// Get [OgpData.fbAdmins] from 'fb:admins'.
  @override
  String? get fbAdmins => _getContent(property: 'fb:admins');

  /// Get [OgpData.fbAppId] from 'fb:app_id'.
  @override
  String? get fbAppId => _getContent(property: 'fb:app_id');

  /// Get [OgpData.twitterCard] from 'twitter:card'.
  @override
  String? get twitterCard => _getContent(property: 'twitter:card');

  /// Get [OgpData.twitterSite] from 'twitter:site'.
  @override
  String? get twitterSite => _getContent(property: 'twitter:site');

  @override
  String toString() => parse().toString();

  String? _getContent({
    String tag = 'meta',
    String attribute = 'property',
    String? property,
    String key = 'content',
  }) {
    return _document
        ?.getElementsByTagName(tag)
        .cast<Element?>()
        .firstWhere((element) => element?.attributes[attribute] == property,
            orElse: () => null)
        ?.attributes[key];
  }
}

class FaviconParser {
  final Document? _document;
  FaviconParser(this._document);

  List<String?> parse() {
    final iconLink =
        _document?.querySelectorAll('link[rel*="icon"]') ?? <Element>[];
    return iconLink
        .map((element) {
          return element.attributes['href'];
        })
        .toSet()
        .toList();
  }
}
