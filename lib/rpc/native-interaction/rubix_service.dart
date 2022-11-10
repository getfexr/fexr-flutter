import 'package:fexr/const.dart';
import 'package:fexr/fexr.dart';
import 'package:fexr/signature/dependencies.dart';
import 'package:grpc/grpc.dart';

class RubixService {
  Future<TxnSummary> signTransaction(
      {required String gateway,
      required double amount,
      required String accessToken,
      required String privateImagePath,
      String? comment,
      int? type,
      List<String>? quorumlist,
      required String receiver}) async {
      RequestTransactionPayloadRes response = await requestTransactionPayload(
        accessToken: accessToken,
        gateway: gateway,
        payloadReq: RequestTransactionPayloadReq(
          comment: comment,
          type: type,
          receiver: receiver,
        ));
        String senderSignContent = response.payload.senderSign;
        String senderSignQContent = response.payload.senderSignQ;
        String positions = await Dependencies().privatePositions(privateImagePath);
        String senderSign = await GenerateSign().genSignFromShares(privateImagePath, senderSignContent);
        String senderSignQ = await GenerateSign().genSignFromShares(privateImagePath, senderSignQContent);
        String txnDetails = response.payload.txnDetails;

        TxnSummary txnSummary = await initiateTransaction(
          accessToken: accessToken,
          gateway: gateway,
          imagePath: privateImagePath,
          initiatePayload: InitiateTransactionReq(
            receiver: receiver,
            tokenCount: amount,
            type: type,
            payloadSigned:
              InitiateTransactionReq_SignedTransactionPayload(
                positions: positions,
                senderSign: SignedContent(content: senderSignContent, signature: senderSign),
                senderSignQ: SignedContent(content: senderSignQContent, signature: senderSignQ),
                txnDetails: txnDetails)),
        );

        return txnSummary;
  }

  static final RubixService _singleton = RubixService._internal();

  factory RubixService() {
    return _singleton;
  }

  RubixService._internal();

  RubixServiceClient getConnection(String gateway, String accessToken) {
    ClientChannel channel = ClientChannel(gateway,
        port: Const.PORT,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    return RubixServiceClient(channel,
        options:
            CallOptions(metadata: {'Authorization': 'Bearer $accessToken'}));
  }

  Future<CreateDIDRes> createDID(
      {required String gateway,
      required String didImagePath,
      required String publicSharePath,
      required String accessToken}) async {
    RubixServiceClient stub = getConnection(gateway, accessToken);
    try {
      var response = await stub.createDID(CreateDIDReq(
          didImage: await Dependencies().imageToBase64(didImagePath),
          publicShare: await Dependencies().imageToBase64(publicSharePath)));
      return response;
    } catch (e) {
      print(e);
      return CreateDIDRes();
    }
  }

  Future<TxnSummary> initiateTransaction(
      {required String gateway,
      required String accessToken,
      required InitiateTransactionReq initiatePayload,
      required String imagePath}) async {
    RubixServiceClient stub = getConnection(gateway, accessToken);
    try {
      var response = await stub.initiateTransaction(InitiateTransactionReq(
          payloadSigned: InitiateTransactionReq_SignedTransactionPayload(
              positions: initiatePayload.payloadSigned.positions,
              senderSign:
                  SignedContent(
                      content: initiatePayload.payloadSigned.senderSign.content,
                      signature: await GenerateSign().genSignFromShares(
                          imagePath,
                          Dependencies().calculateHash(initiatePayload
                              .payloadSigned.senderSign.content))),
              senderSignQ:
                  SignedContent(
                      content:
                          initiatePayload.payloadSigned.senderSignQ.content,
                      signature: await GenerateSign().genSignFromShares(
                          imagePath,
                          Dependencies().calculateHash(
                              initiatePayload.payloadSigned.senderSignQ.content))),
              txnDetails: initiatePayload.payloadSigned.txnDetails)));
      return response;
    } catch (e) {
      print(e);
      return TxnSummary();
    }
  }

  Future<RequestTransactionPayloadRes> requestTransactionPayload(
      {required String gateway,
      required String accessToken,
      required RequestTransactionPayloadReq payloadReq}) async {
    RubixServiceClient stub = getConnection(gateway, accessToken);
    try {
      var response = await stub.requestTransactionPayload(
          RequestTransactionPayloadReq(
              receiver: payloadReq.receiver,
              tokenCount: payloadReq.tokenCount,
              comment: payloadReq.comment,
              type: payloadReq.type));
      return response;
    } catch (e) {
      print(e);
      return RequestTransactionPayloadRes();
    }
  }
}
