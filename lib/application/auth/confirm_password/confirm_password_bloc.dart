import 'dart:developer';

import 'package:astra_admin_app/domain/auth/entities/auth_info.dart';
import 'package:astra_admin_app/domain/auth/i_auth_api_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'confirm_password_event.dart';
part 'confirm_password_state.dart';
part 'confirm_password_bloc.freezed.dart';

@injectable
class ConfirmPasswordBloc
    extends Bloc<ConfirmPasswordEvent, ConfirmPasswordState> {
  final IAuthApiService _apiService;
  ConfirmPasswordBloc(this._apiService)
      : super(ConfirmPasswordState.initial()) {
    on<ConfirmPasswordEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          emit(
            state.copyWith(
                confirmePassword: e.confirmePassword,
                phoneNumber: e.phoneNumber),
          );
        },
        changedPassword: (e) async {
          final isValid =
              e.password.length == 4 && state.confirmePassword == e.password;
          emit(
            state.copyWith(isEnableBtn: isValid, isShowError: false),
          );
        },
        submittedPassword: (e) async {
          final isVaid = state.confirmePassword == e.password;
          emit(
            state.copyWith(
              isShowError: !isVaid,
              isEnableBtn: isVaid,
            ),
          );
        },
        pressedButn: (e) async {
          final response = await _apiService.signUp(
            AuthInfo(
                phoneNumber: state.phoneNumber,
                password: state.confirmePassword,
                isSignIn: true),
          );
          response.fold(
            (l) => log("что-то пошло не так."),
            (r) => emit(
              state.copyWith(isSuccessfullySubmitted: true),
            ),
          );
        },
      );
    });
  }
}
