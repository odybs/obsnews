import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obsnews/data/constant/colorconfig.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        leadingWidth: 160,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset(
            'assets/images/obslogofixed.png',
            fit: BoxFit.scaleDown,
          ),
        ),
        backgroundColor: AppColorConfig.black,
        toolbarHeight: 80,
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: AppColorConfig.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.home, 
                color: AppColorConfig.white,
              ),
              onPressed: () {
                // Handle home button press
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: AppColorConfig.white,
              ),
              onPressed: () {
                // Handle search button press
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: AppColorConfig.white,
              ),
              onPressed: () {
                // Handle notifications button press
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: AppColorConfig.white,
              ),
              onPressed: () {
                // Handle profile button press
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: CarouselSlider(
                  items: [
                    'https://www.jagoanhosting.com/blog/wp-content/uploads/2023/11/Template-Website-Portal-Berita-Cover-1-1200x675.png',
                    'https://asset.kompas.com/crops/bfn4LTCrlgAPlIK-Pf1NyG994fo=/201x85:2799x1817/750x500/data/photo/2022/01/05/61d5542b32188.jpg',
                    'https://cdn-web.ruangguru.com/landing-pages/assets/82808666-a60c-47cf-a315-8cc4e0aa0514.png',
                  ].map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: Get.width,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColorConfig.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(item, fit: BoxFit.scaleDown),
                          ),
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: Get.height * 0.3,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    pauseAutoPlayOnTouch: true,
                    enableInfiniteScroll: true,
                    initialPage: 0,
                    viewportFraction: 1.0,
                    aspectRatio: 2.0,
                    enlargeFactor: 2.0,
                    enlargeStrategy: CenterPageEnlargeStrategy.scale,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      // Handle page change if needed
                    },
                  ),
                ),
              ),
              // Berita terbaru disini
              // ...
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: AppColorConfig.whiteGrey,
                child: Row(
                  children: [
                    Text(
                      'Berita Terbaru',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColorConfig.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Lihat Semua >>',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColorConfig.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Replace with your data length
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: Get.width * 0.9,
                            height: Get.height * 0.15,
                            decoration: BoxDecoration(
                              color: AppColorConfig.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                              child: Image.network(
                                'https://www.jagoanhosting.com/blog/wp-content/uploads/2023/11/Template-Website-Portal-Berita-Cover-1-1200x675.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: Get.width * 0.9,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColorConfig.greyblur,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Judul Berita ${index + 1}',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppColorConfig.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Deskripsi berita ${index + 1} sdsadad asdad ada sda d sdada jfijf fidfjdif',
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColorConfig.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Berita populer disini
              // ...
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: AppColorConfig.whiteGrey,
                child: Row(
                  children: [
                    Text(
                      'Berita Populer',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppColorConfig.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Lihat Semua >>',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColorConfig.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.3,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: Get.height * 0.15,
                            width: Get.width * 0.9,
                            decoration: BoxDecoration(
                              color: AppColorConfig.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                              child: Image.network(
                                'https://cdn-web.ruangguru.com/landing-pages/assets/82808666-a60c-47cf-a315-8cc4e0aa0514.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Container(
                            width: Get.width * 0.9,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: AppColorConfig.greyblur,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Judul Berita ${index + 1}',
                                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    color: AppColorConfig.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Deskripsi berita ${index + 1} sdsadad asdad ada sda d sdada jfijf fidfjdif',
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColorConfig.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}