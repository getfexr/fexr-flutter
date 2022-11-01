class SignModel {
  String? _type;
  Request? _request;
  Signature? _signature;
  Theme? _theme;

  SignModel(
      {String? type, Request? request, Signature? signature, Theme? theme}) {
    if (type != null) {
      this._type = type;
    }
    if (request != null) {
      this._request = request;
    }
    if (signature != null) {
      this._signature = signature;
    }
    if (theme != null) {
      this._theme = theme;
    }
  }

  String? get type => _type;
  set type(String? type) => _type = type;
  Request? get request => _request;
  set request(Request? request) => _request = request;
  Signature? get signature => _signature;
  set signature(Signature? signature) => _signature = signature;
  Theme? get theme => _theme;
  set theme(Theme? theme) => _theme = theme;

  SignModel.fromJson(Map<String, dynamic> json) {
    _type = json['type']!= null ? json['type'] : "";
    _request =
        json['request'] != null ? new Request.fromJson(json['request']) : null;
    _signature = json['signature'] != null
        ? new Signature.fromJson(json['signature'])
        : null;
    _theme = json['theme'] != null ? new Theme.fromJson(json['theme']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    if (this._request != null) {
      data['request'] = this._request!.toJson();
    }
    if (this._signature != null) {
      data['signature'] = this._signature!.toJson();
    }
    if (this._theme != null) {
      data['theme'] = this._theme!.toJson();
    }
    return data;
  }
}

class Request {
  String? _forDid;
  String? _displayName;
  String? _comment;
  String? _fromDid;
  Payload? _payload;
  String? _signatureType;
  String? _timestamp;

  Request(
      {String? forDid,
      String? displayName,
      String? comment,
      String? fromDid,
      Payload? payload,
      String? signatureType,
      String? timestamp}) {
    if (forDid != null) {
      this._forDid = forDid;
    }
    if (displayName != null) {
      this._displayName = displayName;
    }
    if (comment != null) {
      this._comment = comment;
    }
    if (fromDid != null) {
      this._fromDid = fromDid;
    }
    if (payload != null) {
      this._payload = payload;
    }
    if (signatureType != null) {
      this._signatureType = signatureType;
    }
    if (timestamp != null) {
      this._timestamp = timestamp;
    }
  }

  String? get forDid => _forDid;
  set forDid(String? forDid) => _forDid = forDid;
  String? get displayName => _displayName;
  set displayName(String? displayName) => _displayName = displayName;
  String? get comment => _comment;
  set comment(String? comment) => _comment = comment;
  String? get fromDid => _fromDid;
  set fromDid(String? fromDid) => _fromDid = fromDid;
  Payload? get payload => _payload;
  set payload(Payload? payload) => _payload = payload;
  String? get signatureType => _signatureType;
  set signatureType(String? signatureType) => _signatureType = signatureType;
  String? get timestamp => _timestamp;
  set timestamp(String? timestamp) => _timestamp = timestamp;

  Request.fromJson(Map<String, dynamic> json) {
    _forDid = json['for_did'];
    _displayName = json['display_name'];
    _comment = json['comment'];
    _fromDid = json['from_did'];
    _payload =
        json['payload'] != null ? new Payload.fromJson(json['payload']) : null;
    _signatureType = json['signature_type'];
    _timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['for_did'] = this._forDid;
    data['display_name'] = this._displayName;
    data['comment'] = this._comment;
    data['from_did'] = this._fromDid;
    if (this._payload != null) {
      data['payload'] = this._payload!.toJson();
    }
    data['signature_type'] = this._signatureType;
    data['timestamp'] = this._timestamp;
    return data;
  }
}

class Payload {
  String? _data;
  double? _amount;

  Payload({String? data, double? amount}) {
    if (data != null) {
      this._data = data;
    }
    if (amount != null) {
      this._amount = amount;
    }
  }

  String? get data => _data;
  set data(String? data) => _data = data;
  double? get amount => _amount;
  set amount(double? amount) => _amount = amount;

  Payload.fromJson(Map<String, dynamic> json) {
    _data = json['data'];
    _amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['data'] = this._data;
    data['amount'] = this._amount;
    return data;
  }
}

class Signature {
  String? _signature;
  String? _signer;
  String? _signatureType;
  String? _timestamp;

  Signature(
      {String? signature,
      String? signer,
      String? signatureType,
      String? timestamp}) {
    if (signature != null) {
      this._signature = signature;
    }
    if (signer != null) {
      this._signer = signer;
    }
    if (signatureType != null) {
      this._signatureType = signatureType;
    }
    if (timestamp != null) {
      this._timestamp = timestamp;
    }
  }

  String? get signature => _signature;
  set signature(String? signature) => _signature = signature;
  String? get signer => _signer;
  set signer(String? signer) => _signer = signer;
  String? get signatureType => _signatureType;
  set signatureType(String? signatureType) => _signatureType = signatureType;
  String? get timestamp => _timestamp;
  set timestamp(String? timestamp) => _timestamp = timestamp;

  Signature.fromJson(Map<String, dynamic> json) {
    _signature = json['signature'];
    _signer = json['signer'];
    _signatureType = json['signature_type'];
    _timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signature'] = this._signature;
    data['signer'] = this._signer;
    data['signature_type'] = this._signatureType;
    data['timestamp'] = this._timestamp;
    return data;
  }
}

class Theme {
  String? _colorOne;
  String? _colorTwo;

  Theme({String? colorOne, String? colorTwo}) {
    if (colorOne != null) {
      this._colorOne = colorOne;
    }
    if (colorTwo != null) {
      this._colorTwo = colorTwo;
    }
  }

  String? get colorOne => _colorOne;
  set colorOne(String? colorOne) => _colorOne = colorOne;
  String? get colorTwo => _colorTwo;
  set colorTwo(String? colorTwo) => _colorTwo = colorTwo;

  Theme.fromJson(Map<String, dynamic> json) {
    _colorOne = json['color_one'];
    _colorTwo = json['color_two'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color_one'] = this._colorOne;
    data['color_two'] = this._colorTwo;
    return data;
  }
}