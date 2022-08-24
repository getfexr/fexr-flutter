class SignModel {
  SignModel({
    required this.type,
    required this.request,
    required this.signature,
    required this.theme,
  });

  String type;
  Request request;
  Signature signature;
  Theme theme;
}

class Request {
  Request({
    required this.requestFrom,
    required this.displayName,
    required this.reason,
    required this.requestTo,
    required this.payload,
    required this.signatureType,
    required this.requestTimestamp,
  });

  String requestFrom;
  String displayName;
  String reason;
  String requestTo;
  Payload payload;
  String signatureType;
  String requestTimestamp;
}

class Payload {
  Payload({
    required this.data,
  });

  String data;
}

class Signature {
  Signature({
    required this.signature,
    required this.signer,
    required this.signatureType,
    required this.signedTimestamp,
  });

  String signature;
  String signer;
  String signatureType;
  String signedTimestamp;
}

class Theme {
  Theme({
    required this.gradientColorOne,
    required this.gradientColorTwo,
    required this.textColor,
  });

  String gradientColorOne;
  String gradientColorTwo;
  String textColor;
}
