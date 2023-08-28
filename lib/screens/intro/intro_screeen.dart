import 'package:flutter/material.dart';
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

  late int count;
  final List<Map<String, String>> _pages = [
    {
      "image": "vector1.png",
      "title": "Várias opções",
      "desc": "Descubra as melhores comidas nos mais diversos restaurantes",
    },
    {
      "image": "vector2.png",
      "title": "Entrega rápida",
      "desc": "Entrega rápida de comida em sua casa, escritório ou onde você estiver",
    },
    {
      "image": "vector3.png",
      "title": "Rastramento ao vivo",
      "desc": "Rastreamento em tempo real de sua comida no aplicativo assim que você fizer o pedido",
    },
  ];

  @override
  void initState() {
    _controller = PageController();
    count = 0;
    super.initState();
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
                      setState(() {
                        count = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(Helper.getAssetName(_pages[index]["image"]!, "virtual"));
                    },
                    itemCount: _pages.length,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: count == 0 ? AppColor.orange : AppColor.placeholder,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: count == 1 ? AppColor.orange : AppColor.placeholder,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: count == 2 ? AppColor.orange : AppColor.placeholder,
                    )
                  ],
                ),
                const Spacer(),
                Text(
                  _pages[count]["title"]!,
                  style: Helper.getTheme(context).labelSmall,
                ),
                const Spacer(),
                Text(
                  _pages[count]["desc"]!,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        // Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
                      },
                      child: const Text("Next")),
                ),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
