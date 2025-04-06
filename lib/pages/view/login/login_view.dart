import 'package:flutter/material.dart';
import 'package:obsnews/data/constant/colorconfig.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColorConfig.black.withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to OBS News',
                    style: TextStyle(
                      color: AppColorConfig.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Image(
                    image: AssetImage('assets/images/obslogofixed.png'),
                    fit: BoxFit.scaleDown,
                    width: 300,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'always keep us up to date',
                    style: TextStyle(
                      color: AppColorConfig.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
