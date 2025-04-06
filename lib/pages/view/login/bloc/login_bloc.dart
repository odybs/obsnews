import 'package:flutter_bloc/flutter_bloc.dart';

abstract class LoginPageEvent {}

class OnTapLogin extends LoginPageEvent {}
class OnTapDaftar extends LoginPageEvent {}
class OnTapLupaPassword extends LoginPageEvent {}

abstract class LoginNavState {}

class HomePageState extends LoginNavState {}
class DaftarPageState extends LoginNavState {}
class LupaPasswordPageState extends LoginNavState {}

class LoginBloc extends Bloc<LoginPageEvent, LoginNavState> {
  LoginBloc() : super(HomePageState()) {
    on<OnTapLogin>((event, emit) => emit(HomePageState()));
    on<OnTapDaftar>((event, emit) => emit(DaftarPageState()));
    on<OnTapLupaPassword>((event, emit) => emit(LupaPasswordPageState()));
  }
}