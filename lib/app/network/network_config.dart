import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

import '../const/constants.dart';


class NetworkConfig {
  Dio? _dio;
  DioCacheManager? _manager;
  final _base = AppConstants.baseUrl;

  NetworkConfig() {
    _dio = Dio()
      ..interceptors.add(
        LogInterceptor(
          responseBody: true,
          error: true,
          requestBody: true,
          requestHeader: true,
        ),
      )
      ..interceptors.add(_getCacheManager()!.interceptor);
  }

  DioCacheManager? _getCacheManager() {
    _manager ??= DioCacheManager(CacheConfig(
      baseUrl: _base,
    ));
    return _manager;
  }

  Future<bool> clearCacheOptions() {
    return _manager!.clearAll();
  }

  Options _buildCacheOptions({
    required Map<String, String> headers,
    required Map<String, dynamic> body,
    bool subKey = true,
    bool forceRefresh = true,
  }) {
    return buildCacheOptions(
      const Duration(days: 7),
      maxStale: const Duration(days: 7),
      options: Options(
        headers: headers,
      ),
      forceRefresh: forceRefresh,
      subKey: subKey ? json.encode(body) : '',
    );
  }

  // post request
  Future<Response> post({
    bool withFormData = false,
    bool withoutBase = false,
    bool isCash = false,
    bool getDataFromServer = true,
    required String url,
    required Map<String, dynamic> body,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
  }) async {
    var formData = FormData.fromMap(body);
    return _dio!.post(
      withoutBase ? url : _base + url,
      data: withFormData ? formData: body,
      queryParameters: query,
      onReceiveProgress: (received, total) {
        // print("test ${"${(received / total * 100).toStringAsFixed(0)}%"}");
      },
      options: isCash ? _buildCacheOptions(
          headers: headers, forceRefresh: getDataFromServer, body: body) : Options(headers: headers) ,
    );
  }

  // get request
  Future<Response> get({

    bool withoutBase = false,
    required String url,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
    bool isCash = false,
    bool getDataFromServer = true,
  }) {
    return _dio!.get(
        withoutBase ? url : _base + url,
        queryParameters: query,
        onReceiveProgress: (received, total) {
          // print("test ${"${(received / total * 100).toStringAsFixed(0)}%"}");
        },
        options:
        isCash ? _buildCacheOptions(
          headers: headers,
          forceRefresh: getDataFromServer,
          body: query,
        ) : Options(headers: headers)


    );
  }

  // upload post request
  Future<Response> upload({
    bool withoutBase = false,
    required String url,
    required Map<String, dynamic> body,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
    required Function(int received, int total) onProgressSend,
  }) async {
    var formData = FormData.fromMap(body);
    body.forEach((key, value) {
      if ((value) is File) {
        var pic = MapEntry<String, MultipartFile>(
          key,
          MultipartFile.fromFileSync(value.path,
              filename: value.path.split('/').last),
        );
        formData.files.add(pic);
      } else if ((value) is List<File>) {
        var files = <MapEntry<String, MultipartFile>>[];
        // ignore: avoid_function_literals_in_foreach_calls
        value.forEach((element) async {
          var pic = MapEntry<String, MultipartFile>(
              key,
              MultipartFile.fromFileSync(
                element.path,
                filename: element.path.split('/').last,
              ));
          files.add(pic);
        });
        formData.files.addAll(files);
      } else {}
    });

    return _dio!.post(
      withoutBase ? url : _base + url,
      data: formData,
      queryParameters: query,
      onSendProgress: onProgressSend,
      options: Options(
        headers: headers,
      ),
    );
  }

  // put request
  Future<Response> put({
    required String url,
    required Map<String, dynamic> body,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
    bool withoutBase = false,
  }) async {
    return _dio!.put(
      withoutBase ? url : _base + url,
      data: body,
      queryParameters: query,
      onReceiveProgress: (received, total) {},
      options: Options(
        headers: headers,
      ),
    );
  }

  // delete request
  Future<Response> delete({
    required String url,
    required Map<String, dynamic> body,
    required Map<String, dynamic> query,
    required Map<String, String> headers,
    bool withoutBase = false,
  }) async {
    return _dio!.delete(
      withoutBase ? url : _base + url,
      data: body,
      queryParameters: query,
      options: Options(
        headers: headers,
      ),
    );
  }

  // download request
  Future<Response> download({
    bool withoutBase = false,
    required String url,
    required String dir,
    required Function(int received, int total) onProgressRecived,
  }) =>
      _dio!.download(
        withoutBase ? url : _base + url,
        dir,
        onReceiveProgress: onProgressRecived,
      );
}
