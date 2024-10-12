import 'dart:async';

import 'package:flutter/material.dart';

class HomePageCarousel extends StatefulWidget {
  const HomePageCarousel({super.key});

  @override
  State<HomePageCarousel> createState() => _HomePageCarouselState();
}

final List<String> caroselTexts = [
  'Petition to National Assemby. Concerning the Leasing of JKIA to ADANI GROUP',
  'Petition to National Assemby. Concerning the Leasing of JKIA to ADANI GROUP',
  'Petition to National Assemby. Concerning the Leasing of JKIA to ADANI GROUP',
  'Petition to National Assemby. Concerning the Leasing of JKIA to ADANI GROUP'
];

late List<Widget> _pages;

int _currentPage = 0;

final PageController _pageController = PageController(initialPage: 0,);

Timer? _timer;

class _HomePageCarouselState extends State<HomePageCarousel> {
  void startTimer() {
    const fiveSec = Duration(seconds: 5);
    _timer = Timer.periodic(
      fiveSec,
      (Timer timer) {
        if (_currentPage < caroselTexts.length - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }

        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = List.generate(caroselTexts.length, (index) => ContentHolder(caroselText: caroselTexts[index],));
    startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          controller: _pageController,
          itemCount: caroselTexts.length,
          itemBuilder: (context, index) {
            return _pages[index];
          },
        ),
        Positioned(
          bottom: 10,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(_pages.length, (index) {
              return InkWell(
                onTap: () {
                  _pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == _pages.indexOf(_pages[index])
                        ? Colors.blue
                        : Colors.grey,
                  ),
                ),
              );
            })
          ),
        )
      ],
    );
  }
}

class ContentHolder extends StatelessWidget {
  final String caroselText;
  const ContentHolder({super.key, required this.caroselText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amberAccent[100],
      ),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
      child: Center(
        child: Text(
          caroselText,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}