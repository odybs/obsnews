import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:obsnews/pages/bloc/bloc_obs.dart';
import 'package:obsnews/pages/bloc/counter_bloc.dart';
import 'package:obsnews/pages/view/login/login_view.dart';
import 'package:obsnews/pages/cubit/theme_cubit.dart';

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
      ],
      // create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            home: const LoginView(),
          );
        },
      ), //const AppView(),
    );
  }
}
