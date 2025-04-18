import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obsnews/data/constant/colorconfig.dart';

class DaftarView extends StatelessWidget {
  const DaftarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daftar",
          style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(
              color: AppColorConfig.lightGrey,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
        ),
        foregroundColor: AppColorConfig.lightGrey,
        backgroundColor: AppColorConfig.black,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: (){
        
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColorConfig.black,
            foregroundColor: AppColorConfig.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Selanjutnya',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(
                  color: AppColorConfig.lightGrey,
                  fontSize: 16,
                ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(
                      color: AppColorConfig.black,
                    ),
                decoration: InputDecoration(
                  hintText: 'Referal (Opsional)',
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}