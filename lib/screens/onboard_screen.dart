import 'package:flutter/material.dart';
import 'package:study_jam_shop/models/onboard.dart';

import 'components/onboard_content.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                  child: Text("Skip"),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onbordData.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder:
                      (context, index) => OnboardContent(
                        title: onbordData[index].title,
                        image: onbordData[index].image,
                        description: onbordData[index].description,
                      ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ...List.generate(
                        onbordData.length,
                        (index) => Container(
                          margin: EdgeInsets.only(right: 4),
                          height: _currentIndex == index ? 12 : 4,
                          width: 4,
                          decoration: BoxDecoration(
                            color:
                                _currentIndex == index
                                    ? Color(0xFF7B61FF)
                                    : Color(0xFFCAC0FF),
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 260),
                        curve: Curves.easeIn,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF7B61FF),
                      shape: CircleBorder(),
                      fixedSize: Size(48, 48),
                    ),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
