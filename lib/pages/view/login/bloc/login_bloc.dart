import 'package:flutter_bloc/flutter_bloc.dart';

abstract class LoginPageEvent {}

// Kumpulan event yang ada di login
class OnTapMasuk extends LoginPageEvent {
  final String email;
  final String password;
  OnTapMasuk({required this.email, required this.password});
}
class OnTapDaftar extends LoginPageEvent {}
class OnTapLupaPassword extends LoginPageEvent {}


// Kumpulan state yang ada di login
abstract class LoginPageState {}

class LoginInit extends LoginPageState {}
class LoginLoading extends LoginPageState {}
class MasukState extends LoginPageState {}
class DaftarState extends LoginPageState {}
class LoginPageError extends LoginPageState {
  final String? errorMessage;
  LoginPageError({this.errorMessage});
}

// Bloc ini digunakan untuk mengatur state dari login
class LoginBloc extends Bloc<LoginPageEvent, LoginPageState> {
  LoginBloc() : super(LoginInit()) {
    on<OnTapMasuk>((event, emit) async{
      emit(LoginLoading());
      if(event.email.isEmpty || event.password.isEmpty) {
        emit(LoginPageError(errorMessage: "Email dan password tidak boleh kosong"));
        return;
      }

      await Future.delayed(const Duration(seconds: 3), () => emit(MasukState()));
    });
  }
}