import 'package:dio/dio.dart';
import 'package:eclipse_app/constants/api_constants.dart';
import 'package:eclipse_app/presentation/authentication/pages/login/cubit/login_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState());

  Future<void> loginWithEmailandPassword({
    required String email,
    required String password,
    required Function onSuccess,
  }) async {
    emit(state.copyWith(isLoading: true));
    try {
      await Dio().post(loginUrl, data: {
        "email": email,
        "password": password,
      });
      onSuccess();

      emit(state.copyWith(isError: false));
    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response!.statusCode == 401) {
          emit(state.copyWith(isError: true, error: "Invalid Credentials"));
        } else if (e.response!.statusCode == 500) {
          emit(state.copyWith(
              isError: true, error: "500 Internal Server Error"));
        } else {
          emit(state.copyWith(
              isError: true, error: "Something went wrong please try again"));
        }
      } else {
        emit(state.copyWith(isError: true, error: "500 Internal Server Error"));
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(state.copyWith(
          isError: true, error: "Something went wrong please try again"));
    }
    emit(state.copyWith(isLoading: false));
  }
}
