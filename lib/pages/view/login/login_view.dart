import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obsnews/data/constant/colorconfig.dart';
import 'package:obsnews/pages/controllers/login/login_controller.dart';
import 'package:obsnews/pages/view/app/cubit/theme_cubit.dart';
import 'package:obsnews/pages/view/login/bloc/login_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController ctrl = Get.put(LoginController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // color: AppColorConfig.white,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColorConfig.black,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/obslogofixed.png'),
                          fit: BoxFit.scaleDown,
                          width: 300,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Update Dunia Ada di Genggaman Anda',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: AppColorConfig.lightGrey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Masuk',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            'Silakan masuk dengan akun anda',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColorConfig.black,
                                ),
                            decoration: InputDecoration(
                              hintText: 'Email',
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            obscureText: true,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: AppColorConfig.black,
                                ),
                            decoration: InputDecoration(
                              hintText: 'Password',
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lupa password?',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(width: 5),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Reset',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // context.read<LoginBloc>().add(OnTapLogin());
                              ctrl.onMasuk();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColorConfig.black,
                              foregroundColor: AppColorConfig.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              'Masuk',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: AppColorConfig.lightGrey,
                                    fontSize: 16,
                                  ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Belum punya akun?',
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // context.read<ThemeCubit>().toggleTheme();
                              ctrl.onDaftar();
                            },
                            child: Text(
                              'Daftar',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: 16,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Dibuat dengan 💞 oleh Tim OBS News",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColorConfig.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
