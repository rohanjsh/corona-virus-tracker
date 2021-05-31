import 'package:coronavirus_rest_api_flutter_course/app/services/api_keys.dart';
import 'package:flutter/material.dart';

enum EndPoint {
  cases,
  casesSuspected,
  casesConfirmed,
  deaths,
  recovered,
}

class API {
  API({@required this.apiKey}); //new dart required
  final String apiKey;

  factory API.sandbox() => API(apiKey: APIKeys.ncovSandboxKey);

  static final String host = 'ncov2019-admin.firebaseapp.com';

//[http|https]://[host]:[port]/[path]/[path]?[queryParameters] - URI format
  Uri tokenUri() => Uri(
        scheme: 'https',
        host: host,
        path: 'token',
      );

  Uri endpointUri(EndPoint endPoint) => Uri(
        scheme: 'https',
        host: host,
        path: _paths[endPoint],
      );

  static Map<EndPoint, String> _paths = {
    EndPoint.cases: 'cases',
    EndPoint.casesConfirmed: 'casesConfirmed',
    EndPoint.casesSuspected: 'casesSuspected',
    EndPoint.deaths: 'deaths',
    EndPoint.recovered: 'recovered',
  };
}
