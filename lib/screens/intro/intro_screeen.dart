import 'package:delivery_demo/screens/home/home_screen.dart';
import 'package:delivery_demo/screens/intro/models/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';
import '../../utils/helper.dart';
import '../../const/colors.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = "/introScreen";
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late PageController _controller;

  final indexPage = RxNotifier<int>(0);

  final _pages = <IntroPage>[];

  void addPage() {
    _pages.add(IntroPage(image: "vector1.png", desc: "Descubra as melhores comidas nos mais diversos restaurantes", title: "Várias opções"));
    _pages.add(IntroPage(image: "vector2.png", desc: "Entrega rápida de comida em sua casa, escritório ou onde você estiver", title: "Entrega rápida"));
    _pages.add(IntroPage(image: "vector3.png", desc: "Rastreamento em tempo real de sua comida no aplicativo assim que você fizer o pedido", title: "Rastramento ao vivo"));
  }

  @override
  void initState() {
    addPage();

    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    indexPage.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const Spacer(),
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (value) {
                      indexPage.value = value;
                    },
                    itemBuilder: (final context, final index) {
                      return Image.asset(Helper.getAssetName(_pages[index].image, "virtual"));
                    },
                    itemCount: _pages.length,
                  ),
                ),
                RxBuilder(
                    builder: (_) => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: indexPage.value == 0 ? AppColor.orange : AppColor.placeholder,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: indexPage.value == 1 ? AppColor.orange : AppColor.placeholder,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: indexPage.value == 2 ? AppColor.orange : AppColor.placeholder,
                            )
                          ],
                        )),
                const Spacer(),
                Text(
                  _pages[indexPage.value].title,
                  style: Helper.getTheme(context).labelSmall,
                ),
                const Spacer(),
                Text(
                  _pages[indexPage.value].desc,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                    },
                    child: const Text(
                      "Next",
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
