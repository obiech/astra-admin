import 'package:astra_admin_app/infrastructure/auth/DTOs/auth_info_dto.dart';

/// Describe local storage methods.
abstract class ILocalStorage {
  /// Check if user already registered.
  // Future<bool> chekUserHasAlreadyRegistered(String phoneNumber);

  /// Add auth information to database.
  Future<void> putAuthInfo(AuthInfoDTO authIndfo);

  /// Get auth information from database by phone number.
  Future<AuthInfoDTO> getAuthInfoByPhone(String phoneNumber);

  /// Get auth information from database.
  Future<AuthInfoDTO?> getAuthInfo();

  /// Remove auth info from data base.
  Future<void> removeAuthInfo();
}
