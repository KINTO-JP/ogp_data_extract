mixin OgpDataKeys {
  static const keyUrl = 'url';
  static const keyType = 'type';
  static const keyTitle = 'title';
  static const keyDescription = 'description';
  static const keyImage = 'image';
  static const keyImageSecureUrl = 'image:secure_url';
  static const keyImageType = 'image:type';
  static const keyImageWidth = 'image:width';
  static const keyImageHeight = 'image:height';
  static const keyImageAlt = 'image:alt';
  static const keySiteName = 'site_name';
  static const keyDeterminer = 'determiner';
  static const keyLocale = 'locale';
  static const keyLocaleAlternate = 'locale:alternate';
  static const keyLatitude = 'latitude';
  static const keyLongitude = 'longitude';
  static const keyStreetAddress = 'street-address';
  static const keyLocality = 'locality';
  static const keyRegion = 'region';
  static const keyPostalCode = 'postal-code';
  static const keyCountryName = 'country-name';
  static const keyEmail = 'email';
  static const keyPhoneNumber = 'phone_number';
  static const keyFaxNumber = 'fax_number';
  static const keyVideo = 'video';
  static const keyVideoSecureUrl = 'video:secure_url';
  static const keyVideoHeight = 'video:height';
  static const keyVideoWidth = 'video:width';
  static const keyVideoType = 'video:type';
  static const keyAudio = 'audio';
  static const keyAudioSecureUrl = 'audio:secure_url';
  static const keyAudioTitle = 'audio:title';
  static const keyAudioArtist = 'audio:artist';
  static const keyAudioAlbum = 'audio:album';
  static const keyAudioType = 'audio:type';
  static const keyFbAdmins = 'fb:admins';
  static const keyFbAppId = 'fb:app_id';
  static const keyTwitterCard = 'twitter:card';
  static const keyTwitterSite = 'twitter:site';
  static const keyArticleTag = 'article:tag';
  static const keyBookTag = 'book:tag';
  static const keyVideoTag = 'video:tag';
}

mixin BaseOgpDataParser {
  String? url;
  String? type;
  String? title;
  String? description;
  String? image;
  String? imageSecureUrl;
  String? imageType;
  String? imageWidth;
  String? imageHeight;
  String? imageAlt;
  String? siteName;
  String? determiner;
  String? locale;
  String? localeAlternate;
  String? latitude;
  String? longitude;
  String? streetAddress;
  String? locality;
  String? region;
  String? postalCode;
  String? countryName;
  String? email;
  String? phoneNumber;
  String? faxNumber;
  String? video;
  String? videoSecureUrl;
  String? videoHeight;
  String? videoWidth;
  String? videoType;
  String? audio;
  String? audioSecureUrl;
  String? audioTitle;
  String? audioArtist;
  String? audioAlbum;
  String? audioType;
  String? fbAdmins;
  String? fbAppId;
  String? twitterCard;
  String? twitterSite;
  List<String>? articleTags;
  List<String>? bookTags;
  List<String>? videoTags;

  OgpData parse() {
    final OgpData o = OgpData();
    o.url = url;
    o.type = type;
    o.title = title;
    o.description = description;
    o.image = image;
    o.imageSecureUrl = imageSecureUrl;
    o.imageType = imageType;
    o.imageWidth = imageWidth;
    o.imageHeight = imageHeight;
    o.imageAlt = imageAlt;
    o.siteName = siteName;
    o.determiner = determiner;
    o.locale = locale;
    o.localeAlternate = localeAlternate;
    o.latitude = latitude;
    o.longitude = longitude;
    o.streetAddress = streetAddress;
    o.locality = locality;
    o.region = region;
    o.postalCode = postalCode;
    o.countryName = countryName;
    o.email = email;
    o.phoneNumber = phoneNumber;
    o.faxNumber = faxNumber;
    o.video = video;
    o.videoSecureUrl = videoSecureUrl;
    o.videoHeight = videoHeight;
    o.videoWidth = videoWidth;
    o.videoType = videoType;
    o.audio = audio;
    o.audioSecureUrl = audioSecureUrl;
    o.audioTitle = audioTitle;
    o.audioArtist = audioArtist;
    o.audioAlbum = audioAlbum;
    o.audioType = audioType;
    o.fbAdmins = fbAdmins;
    o.fbAppId = fbAppId;
    o.twitterCard = twitterCard;
    o.twitterSite = twitterSite;
    o.articleTags = articleTags;
    o.bookTags = bookTags;
    o.videoTags = videoTags;
    return o;
  }
}

/// Container class for OgpData.
class OgpData with BaseOgpDataParser, OgpDataKeys {
  @override
  String toString() {
    return toMap().toString();
  }

  Map<String, dynamic> toMap() {
    return {
      OgpDataKeys.keyUrl: url,
      OgpDataKeys.keyType: type,
      OgpDataKeys.keyTitle: title,
      OgpDataKeys.keyDescription: description,
      OgpDataKeys.keyImage: image,
      OgpDataKeys.keyImageSecureUrl: imageSecureUrl,
      OgpDataKeys.keyImageType: imageType,
      OgpDataKeys.keyImageWidth: imageWidth,
      OgpDataKeys.keyImageHeight: imageHeight,
      OgpDataKeys.keyImageAlt: imageAlt,
      OgpDataKeys.keySiteName: siteName,
      OgpDataKeys.keyDeterminer: determiner,
      OgpDataKeys.keyLocale: locale,
      OgpDataKeys.keyLocaleAlternate: localeAlternate,
      OgpDataKeys.keyLatitude: latitude,
      OgpDataKeys.keyLongitude: longitude,
      OgpDataKeys.keyStreetAddress: streetAddress,
      OgpDataKeys.keyLocality: locality,
      OgpDataKeys.keyRegion: region,
      OgpDataKeys.keyPostalCode: postalCode,
      OgpDataKeys.keyCountryName: countryName,
      OgpDataKeys.keyEmail: email,
      OgpDataKeys.keyPhoneNumber: phoneNumber,
      OgpDataKeys.keyFaxNumber: faxNumber,
      OgpDataKeys.keyVideo: video,
      OgpDataKeys.keyVideoSecureUrl: videoSecureUrl,
      OgpDataKeys.keyVideoHeight: videoHeight,
      OgpDataKeys.keyVideoWidth: videoWidth,
      OgpDataKeys.keyVideoType: videoType,
      OgpDataKeys.keyAudio: audio,
      OgpDataKeys.keyAudioSecureUrl: audioSecureUrl,
      OgpDataKeys.keyAudioTitle: audioTitle,
      OgpDataKeys.keyAudioArtist: audioArtist,
      OgpDataKeys.keyAudioAlbum: audioAlbum,
      OgpDataKeys.keyAudioType: audioType,
      OgpDataKeys.keyFbAdmins: fbAdmins,
      OgpDataKeys.keyFbAppId: fbAppId,
      OgpDataKeys.keyTwitterCard: twitterCard,
      OgpDataKeys.keyTwitterSite: twitterSite,
      OgpDataKeys.keyArticleTag: articleTags,
      OgpDataKeys.keyBookTag: bookTags,
      OgpDataKeys.keyVideoTag: videoTags,
    };
  }

  static OgpData fromMap(Map<String, dynamic> json) {
    final OgpData o = OgpData();
    o.url = json[OgpDataKeys.keyUrl];
    o.type = json[OgpDataKeys.keyType];
    o.title = json[OgpDataKeys.keyTitle];
    o.description = json[OgpDataKeys.keyDescription];
    o.image = json[OgpDataKeys.keyImage];
    o.imageSecureUrl = json[OgpDataKeys.keyImageSecureUrl];
    o.imageType = json[OgpDataKeys.keyImageType];
    o.imageWidth = json[OgpDataKeys.keyImageWidth];
    o.imageHeight = json[OgpDataKeys.keyImageHeight];
    o.imageAlt = json[OgpDataKeys.keyImageAlt];
    o.siteName = json[OgpDataKeys.keySiteName];
    o.determiner = json[OgpDataKeys.keyDeterminer];
    o.locale = json[OgpDataKeys.keyLocale];
    o.localeAlternate = json[OgpDataKeys.keyLocaleAlternate];
    o.latitude = json[OgpDataKeys.keyLatitude];
    o.longitude = json[OgpDataKeys.keyLongitude];
    o.streetAddress = json[OgpDataKeys.keyStreetAddress];
    o.locality = json[OgpDataKeys.keyLocality];
    o.region = json[OgpDataKeys.keyRegion];
    o.postalCode = json[OgpDataKeys.keyPostalCode];
    o.countryName = json[OgpDataKeys.keyCountryName];
    o.email = json[OgpDataKeys.keyEmail];
    o.phoneNumber = json[OgpDataKeys.keyPhoneNumber];
    o.faxNumber = json[OgpDataKeys.keyFaxNumber];
    o.video = json[OgpDataKeys.keyVideo];
    o.videoSecureUrl = json[OgpDataKeys.keyVideoSecureUrl];
    o.videoHeight = json[OgpDataKeys.keyVideoHeight];
    o.videoWidth = json[OgpDataKeys.keyVideoWidth];
    o.videoType = json[OgpDataKeys.keyVideoType];
    o.audio = json[OgpDataKeys.keyAudio];
    o.audioSecureUrl = json[OgpDataKeys.keyAudioSecureUrl];
    o.audioTitle = json[OgpDataKeys.keyAudioTitle];
    o.audioArtist = json[OgpDataKeys.keyAudioArtist];
    o.audioAlbum = json[OgpDataKeys.keyAudioAlbum];
    o.audioType = json[OgpDataKeys.keyAudioType];
    o.fbAdmins = json[OgpDataKeys.keyFbAdmins];
    o.fbAppId = json[OgpDataKeys.keyFbAppId];
    o.twitterCard = json[OgpDataKeys.keyTwitterCard];
    o.twitterSite = json[OgpDataKeys.keyTwitterSite];

    o.articleTags = (json[OgpDataKeys.keyArticleTag] as List?)
        ?.map((e) => e.toString())
        .toList();
    o.bookTags = (json[OgpDataKeys.keyBookTag] as List?)
        ?.map((e) => e.toString())
        .toList();
    o.videoTags = (json[OgpDataKeys.keyVideoTag] as List?)
        ?.map((e) => e.toString())
        .toList();

    return o;
  }

  OgpData copyWith({
    String? url,
    String? type,
    String? title,
    String? description,
    String? image,
    String? imageSecureUrl,
    String? imageType,
    String? imageWidth,
    String? imageHeight,
    String? imageAlt,
    String? siteName,
    String? determiner,
    String? locale,
    String? localeAlternate,
    String? latitude,
    String? longitude,
    String? streetAddress,
    String? locality,
    String? region,
    String? postalCode,
    String? countryName,
    String? email,
    String? phoneNumber,
    String? faxNumber,
    String? video,
    String? videoSecureUrl,
    String? videoHeight,
    String? videoWidth,
    String? videoType,
    String? audio,
    String? audioSecureUrl,
    String? audioTitle,
    String? audioArtist,
    String? audioAlbum,
    String? audioType,
    String? fbAdmins,
    String? fbAppId,
    String? twitterCard,
    String? twitterSite,
    List<String>? articleTags,
    List<String>? bookTags,
    List<String>? videoTags,
  }) {
    final OgpData o = OgpData();
    o.url = url ?? this.url;
    o.type = type ?? this.type;
    o.title = title ?? this.title;
    o.description = description ?? this.description;
    o.image = image ?? this.image;
    o.imageSecureUrl = imageSecureUrl ?? this.imageSecureUrl;
    o.imageType = imageType ?? this.imageType;
    o.imageWidth = imageWidth ?? this.imageWidth;
    o.imageHeight = imageHeight ?? this.imageHeight;
    o.imageAlt = imageAlt ?? this.imageAlt;
    o.siteName = siteName ?? this.siteName;
    o.determiner = determiner ?? this.determiner;
    o.locale = locale ?? this.locale;
    o.localeAlternate = localeAlternate ?? this.localeAlternate;
    o.latitude = latitude ?? this.latitude;
    o.longitude = longitude ?? this.longitude;
    o.streetAddress = streetAddress ?? this.streetAddress;
    o.locality = locality ?? this.locality;
    o.region = region ?? this.region;
    o.postalCode = postalCode ?? this.postalCode;
    o.countryName = countryName ?? this.countryName;
    o.email = email ?? this.email;
    o.phoneNumber = phoneNumber ?? this.phoneNumber;
    o.faxNumber = faxNumber ?? this.faxNumber;
    o.video = video ?? this.video;
    o.videoSecureUrl = videoSecureUrl ?? this.videoSecureUrl;
    o.videoHeight = videoHeight ?? this.videoHeight;
    o.videoWidth = videoWidth ?? this.videoWidth;
    o.videoType = videoType ?? this.videoType;
    o.audio = audio ?? this.audio;
    o.audioSecureUrl = audioSecureUrl ?? this.audioSecureUrl;
    o.audioTitle = audioTitle ?? this.audioTitle;
    o.audioArtist = audioArtist ?? this.audioArtist;
    o.audioAlbum = audioAlbum ?? this.audioAlbum;
    o.audioType = audioType ?? this.audioType;
    o.fbAdmins = fbAdmins ?? this.fbAdmins;
    o.fbAppId = fbAppId ?? this.fbAppId;
    o.twitterCard = twitterCard ?? this.twitterCard;
    o.twitterSite = twitterSite ?? this.twitterSite;
    o.articleTags = articleTags ?? this.articleTags;
    o.bookTags = bookTags ?? this.bookTags;
    o.videoTags = videoTags ?? this.videoTags;
    return o;
  }
}
