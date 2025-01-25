class BookModel {
  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }
}

/// textSnippet : "The new chapter on computer graphics ensures that this book comprehensively covers the syllabi of most universities. The book also uses the Turbo C compiler, which is the most widely used C compiler."

class SearchInfo {
  SearchInfo({
    this.textSnippet,
  });

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }
}

/// country : "EG"
/// viewability : "NO_PAGES"
/// embeddable : false
/// publicDomain : false
/// textToSpeechPermission : "ALLOWED"
/// epub : {"isAvailable":false}
/// pdf : {"isAvailable":true}
/// webReaderLink : "http://play.google.com/books/reader?id=0RXLCgAAQBAJ&hl=&source=gbs_api"
/// accessViewStatus : "NONE"
/// quoteSharingAllowed : false

class AccessInfo {
  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  AccessInfo.fromJson(dynamic json) {
    country = json['country'];
    viewability = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Pdf.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['viewability'] = viewability;
    map['embeddable'] = embeddable;
    map['publicDomain'] = publicDomain;
    map['textToSpeechPermission'] = textToSpeechPermission;
    if (epub != null) {
      map['epub'] = epub?.toJson();
    }
    if (pdf != null) {
      map['pdf'] = pdf?.toJson();
    }
    map['webReaderLink'] = webReaderLink;
    map['accessViewStatus'] = accessViewStatus;
    map['quoteSharingAllowed'] = quoteSharingAllowed;
    return map;
  }
}

/// isAvailable : true

class Pdf {
  Pdf({
    this.isAvailable,
  });

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }
}

/// isAvailable : false

class Epub {
  Epub({
    this.isAvailable,
  });

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }
}

/// country : "EG"
/// saleability : "NOT_FOR_SALE"
/// isEbook : false

class SaleInfo {
  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  SaleInfo.fromJson(dynamic json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
  }
  String? country;
  String? saleability;
  bool? isEbook;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['saleability'] = saleability;
    map['isEbook'] = isEbook;
    return map;
  }
}

/// title : "Programming in C, 3e"
/// authors : ["Kamthane"]
/// publisher : "Pearson Education India"
/// publishedDate : "2015"
/// description : "C is one of the most popular programming languages. It runs on most software platforms and computer architecture. This revised edition of our best-selling text Programming in C not only maintains the exclusivity of previous editions but also enhances it with the addition of new programs and illustrations. Challenging concepts are supported with numerous solved and unsolved programs. The new chapter on computer graphics ensures that this book comprehensively covers the syllabi of most universities. The book also uses the Turbo C compiler, which is the most widely used C compiler. With its increased coverage and inclusion of new learning tools, this edition is an invaluable asset for students who aim to improve their programming skills."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9789332547179"},{"type":"ISBN_10","identifier":"9332547173"}]
/// readingModes : {"text":false,"image":false}
/// pageCount : 689
/// printType : "BOOK"
/// categories : ["C (Computer program language)"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : true
/// contentVersion : "0.3.0.0.preview.0"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=0RXLCgAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=0RXLCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=0RXLCgAAQBAJ&dq=programming&hl=&cd=1&source=gbs_api"
/// infoLink : "http://books.google.com.eg/books?id=0RXLCgAAQBAJ&dq=programming&hl=&source=gbs_api"
/// canonicalVolumeLink : "https://books.google.com/books/about/Programming_in_C_3e.html?hl=&id=0RXLCgAAQBAJ"

class VolumeInfo {
  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['authors'] = authors;
    map['publisher'] = publisher;
    map['publishedDate'] = publishedDate;
    map['description'] = description;
    if (industryIdentifiers != null) {
      map['industryIdentifiers'] =
          industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (readingModes != null) {
      map['readingModes'] = readingModes?.toJson();
    }
    map['pageCount'] = pageCount;
    map['printType'] = printType;
    map['categories'] = categories;
    map['maturityRating'] = maturityRating;
    map['allowAnonLogging'] = allowAnonLogging;
    map['contentVersion'] = contentVersion;
    if (panelizationSummary != null) {
      map['panelizationSummary'] = panelizationSummary?.toJson();
    }
    if (imageLinks != null) {
      map['imageLinks'] = imageLinks?.toJson();
    }
    map['language'] = language;
    map['previewLink'] = previewLink;
    map['infoLink'] = infoLink;
    map['canonicalVolumeLink'] = canonicalVolumeLink;
    return map;
  }
}

/// smallThumbnail : "http://books.google.com/books/content?id=0RXLCgAAQBAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api"
/// thumbnail : "http://books.google.com/books/content?id=0RXLCgAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"

class ImageLinks {
  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
  String? smallThumbnail;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }
}

/// containsEpubBubbles : false
/// containsImageBubbles : false

class PanelizationSummary {
  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  PanelizationSummary.fromJson(dynamic json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['containsEpubBubbles'] = containsEpubBubbles;
    map['containsImageBubbles'] = containsImageBubbles;
    return map;
  }
}

/// text : false
/// image : false

class ReadingModes {
  ReadingModes({
    this.text,
    this.image,
  });

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }
  bool? text;
  bool? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }
}

/// type : "ISBN_13"
/// identifier : "9789332547179"

class IndustryIdentifiers {
  IndustryIdentifiers({
    this.type,
    this.identifier,
  });

  IndustryIdentifiers.fromJson(dynamic json) {
    type = json['type'];
    identifier = json['identifier'];
  }
  String? type;
  String? identifier;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['identifier'] = identifier;
    return map;
  }
}
