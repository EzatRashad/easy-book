import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm_bookly/Features/onboardig/presentation/model.dart';
import 'package:mvvm_bookly/Features/onboardig/presentation/views/widgets/build_board_item.dart';
import 'package:mvvm_bookly/Features/onboardig/presentation/views/widgets/button_section.dart';
import 'package:mvvm_bookly/core/utils/app_router.dart';
import 'package:mvvm_bookly/core/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbardingViewBody extends StatefulWidget {
  const OnbardingViewBody({super.key});

  @override
  State<OnbardingViewBody> createState() => _OnbardingViewBodyState();
}

class _OnbardingViewBodyState extends State<OnbardingViewBody> {
  var boardControllar = PageController();
  bool isLast = false;
  void submit() {
    GoRouter.of(context).push(AppRouter.getStartView);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(42.0.r),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {
                    submit();
                  },
                  child: const Text(
                    "Skip ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
            ),
            Expanded(
              child: PageView.builder(
                controller: boardControllar,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => buildBoardItem(board[index]),
                itemCount: board.length,
                onPageChanged: (index) {
                  if (index == board.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    isLast = false;
                  }
                },
              ),
            ),
            90.ph,
            ButtonSection(
                boardControllar: boardControllar,
                submit: () {
                  if (isLast) {
                    submit();
                  } else {
                    boardControllar.nextPage(
                      duration: const Duration(milliseconds: 750),
                      curve: Curves.fastOutSlowIn,
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
