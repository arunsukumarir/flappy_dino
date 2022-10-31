import 'package:cool_alert/cool_alert.dart';
import '../homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        height: deviceHeight,
        width: deviceWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/start_wallpaper.jpg',
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8,
          ),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                'assets/images/bird.png',
                width: deviceWidth / 2,
              ),
              const Text(
                'Dragon Rider',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.of(context).pushNamed(HomePage.ROUTE_NAME);
                    },
                    child: const Text('Start Game')),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.loading,
                        text: "Developed By\n\nArun Sukumar",
                      );
                    },
                    child: const Text('Credits')),
              ),
              const SizedBox(
                height: 16,
              ),
              MenuButton(
                color: const Color.fromARGB(255, 255, 0, 0),
                width: deviceWidth,
                textColor: Colors.white,
                text: 'Quit',
                onPress: () {
                  SystemNavigator.pop();
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final double width;
  final String text;
  final Color textColor;
  final Color color;
  final Function onPress;

  const MenuButton({
    required this.width,
    required this.text,
    required this.textColor,
    required this.color,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {
          onPress;
        },
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
