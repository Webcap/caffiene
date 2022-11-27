import 'package:login/models/tv.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class tvApi{

  Future<List<TV>> fetchPersonTV(String api) async {
    PersonTVList personTVList;
    var res = await http
        .get(Uri.parse(api))
        .timeout(const Duration(seconds: 10), onTimeout: () {
      return http.Response('Error', 408);
    }).onError((error, stackTrace) => http.Response('Error', 408));
    var decodeRes = jsonDecode(res.body);
    personTVList = PersonTVList.fromJson(decodeRes);
    return personTVList.tv ?? [];
  }

  Future<List<TV>> fetchTV(String api) async {
    TVList tvList;
    var res = await http
        .get(Uri.parse(api))
        .timeout(const Duration(seconds: 10), onTimeout: () {
      return http.Response('Error', 408);
    }).onError((error, stackTrace) => http.Response('Error', 408));
    var decodeRes = jsonDecode(res.body);
    tvList = TVList.fromJson(decodeRes);
    return tvList.tvSeries ?? [];
  }

  Future<TVDetails> fetchTVDetails(String api) async {
    TVDetails tvDetails;
    var res = await http
        .get(Uri.parse(api))
        .timeout(const Duration(seconds: 10), onTimeout: () {
      return http.Response('Error', 408);
    }).onError((error, stackTrace) => http.Response('Error', 408));
    var decodeRes = jsonDecode(res.body);
    tvDetails = TVDetails.fromJson(decodeRes);
    return tvDetails;
  }


}