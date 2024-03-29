import 'Sources.dart';

/// status : "ok"
/// sources : [{"id":"ars-technica","name":"Ars Technica","description":"The PC enthusiast's resource. Power users and the tools they love, without computing religion.","url":"http://arstechnica.com","category":"technology","language":"en","country":"us"},{"id":"crypto-coins-news","name":"Crypto Coins News","description":"Providing breaking cryptocurrency news - focusing on Bitcoin, Ethereum, ICOs, blockchain technology, and smart contracts.","url":"https://www.ccn.com","category":"technology","language":"en","country":"us"},{"id":"engadget","name":"Engadget","description":"Engadget is a web magazine with obsessive daily coverage of everything new in gadgets and consumer electronics.","url":"https://www.engadget.com","category":"technology","language":"en","country":"us"},{"id":"gruenderszene","name":"Gruenderszene","description":"Online-Magazin für Startups und die digitale Wirtschaft. News und Hintergründe zu Investment, VC und Gründungen.","url":"http://www.gruenderszene.de","category":"technology","language":"de","country":"de"},{"id":"hacker-news","name":"Hacker News","description":"Hacker News is a social news website focusing on computer science and entrepreneurship. It is run by Paul Graham's investment fund and startup incubator, Y Combinator. In general, content that can be submitted is defined as \"anything that gratifies one's intellectual curiosity\".","url":"https://news.ycombinator.com","category":"technology","language":"en","country":"us"},{"id":"recode","name":"Recode","description":"Get the latest independent tech news, reviews and analysis from Recode with the most informed and respected journalists in technology and media.","url":"http://www.recode.net","category":"technology","language":"en","country":"us"},{"id":"t3n","name":"T3n","description":"Das Online-Magazin bietet Artikel zu den Themen E-Business, Social Media, Startups und Webdesign.","url":"https://t3n.de","category":"technology","language":"de","country":"de"},{"id":"techcrunch","name":"TechCrunch","description":"TechCrunch is a leading technology media property, dedicated to obsessively profiling startups, reviewing new Internet products, and breaking tech news.","url":"https://techcrunch.com","category":"technology","language":"en","country":"us"},{"id":"techcrunch-cn","name":"TechCrunch (CN)","description":"TechCrunch is a leading technology media property, dedicated to obsessively profiling startups, reviewing new Internet products, and breaking tech news.","url":"https://techcrunch.cn","category":"technology","language":"zh","country":"zh"},{"id":"techradar","name":"TechRadar","description":"The latest technology news and reviews, covering computing, home entertainment systems, gadgets and more.","url":"http://www.techradar.com","category":"technology","language":"en","country":"us"},{"id":"the-next-web","name":"The Next Web","description":"The Next Web is one of the world’s largest online publications that delivers an international perspective on the latest news about Internet technology, business and culture.","url":"http://thenextweb.com","category":"technology","language":"en","country":"us"},{"id":"the-verge","name":"The Verge","description":"The Verge covers the intersection of technology, science, art, and culture.","url":"http://www.theverge.com","category":"technology","language":"en","country":"us"},{"id":"wired","name":"Wired","description":"Wired is a monthly American magazine, published in print and online editions, that focuses on how emerging technologies affect culture, the economy, and politics.","url":"https://www.wired.com","category":"technology","language":"en","country":"us"},{"id":"wired-de","name":"Wired.de","description":"Wired reports on how emerging technologies affect culture, the economy and politics.","url":"https://www.wired.de","category":"technology","language":"de","country":"de"}]

class SourcesResponse {
  String? _status;
  String? code;
  String? message;
  List<Sources>? _sources;

  SourcesResponse({
    String? status,
    String? code,
    String? message,
    List<Sources>? sources,
  }) {
    _status = status;
    _sources = sources;
  }

  SourcesResponse.fromJson( dynamic json) {
    _status = json['status'];
    code = json['code'];
    message = json['message'];
    if (json['sources'] != null) {
      _sources = [];
      json['sources'].forEach((v) {
        _sources?.add(Sources.fromJson(v));
      });
    }
  }

  SourcesResponse copyWith({
    String? status,
    List<Sources>? sources,
  }) =>
      SourcesResponse(
        status: status ?? _status,
        sources: sources ?? _sources,
      );
  String? get status => _status;
  List<Sources>? get sources => _sources;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_sources != null) {
      map['sources'] = _sources?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
