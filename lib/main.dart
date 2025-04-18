import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:obsnews/bloc_obs.dart';
import 'package:obsnews/pages/view/counter/bloc/counter_bloc.dart';
import 'package:obsnews/pages/view/login/bloc/login_bloc.dart';
import 'package:obsnews/pages/view/login/login_view.dart';
import 'package:obsnews/pages/view/app/cubit/theme_cubit.dart';

void main() {
  Bloc.observer = const AppBlocObserver();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => LoginBloc()),
      ],
      // create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: const LoginView(),
          );
        },
      ), //const AppView(),
    );
  }
}
