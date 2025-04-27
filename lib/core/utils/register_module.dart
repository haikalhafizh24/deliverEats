// ignore_for_file: deprecated_member_use

import 'package:deliver_eats/core/env/env.dart';
import 'package:deliver_eats/core/routes/app_router.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          printTime: true,
          errorMethodCount: 5,
        ),
      );

  @singleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  Dio dio(Env env) {
    Dio dio = Dio();
    BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),

      // Setup header global
      headers: {
        'Content-Type': 'application/json',
        'apikey': env.apiKey, // Menggunakan apiKey dari env
        'Authorization':
            'Bearer ${env.apiKey}', // Tambahkan header auth jika diperlukan
      },

      baseUrl: env.baseUrl,
    );

    dio.options = options;

    // Menambahkan interceptor untuk logging (opsional)
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      logPrint: (object) {
        logger.d(object.toString());
      },
    ));

    return dio;
  }
}
