import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'user_entity.freezed.dart';
// part 'user_entity.g.dart';

/// Entity yang merepresentasikan data user setelah otentikasi
/// Digunakan untuk menyimpan informasi pengguna dari respons API
@freezed
class UserEntity with _$UserEntity {
  // Konstruktor privat untuk menambahkan metode instance
  const UserEntity._();

  /// Konstruktor utama untuk membuat UserEntity
  factory UserEntity({
    required String id, // ID unik pengguna
    required String email, // Email pengguna
    required String displayName, // Nama tampilan pengguna
    required bool emailVerified, // Status verifikasi email
    required bool isAnonymous, // Status pengguna anonim
  }) = _UserEntity;

  /// Membuat entity kosong (untuk nilai default atau error handling)
  factory UserEntity.empty() => UserEntity(
        id: '',
        email: '',
        displayName: '',
        emailVerified: false,
        isAnonymous: true,
      );

  // Logger untuk mencatat aktivitas dan error
  static final _logger = Logger();

  /// Mengkonversi JSON dari respons API menjadi UserEntity
  /// Menangani berbagai format JSON, terutama dari Supabase Auth
  /// @param json Map berisi data pengguna dari API
  /// @return UserEntity yang berisi informasi pengguna
  factory UserEntity.fromJson(Map<String, dynamic> json) {
    _logger.d('UserEntity.fromJson: ${json.keys.toList()}');

    final userData = json['user'] as Map<String, dynamic>;
    _logger.d('User data: ${userData.keys.toList()}');

    // Ekstrak data pengguna dari respons Supabase
    final String email = userData['email'] as String;
    // Gunakan bagian depan email sebagai nama tampilan jika tidak ada display_name
    final String displayName = email.split('@')[0];

    return UserEntity(
      id: userData['id'] as String,
      email: email,
      displayName: displayName,
      // email_confirmed_at menunjukkan email sudah diverifikasi
      emailVerified: userData['email_confirmed_at'] != null,
      isAnonymous: false, // Login berhasil berarti bukan pengguna anonim
    );
  }
}
