import 'package:flutter/material.dart';
import 'package:my_sneaker_shop/components/button.dart';
import 'package:my_sneaker_shop/theme/ThemeProvider.dart';
import 'package:provider/provider.dart';

class Settingscreen extends StatefulWidget {
  const Settingscreen({super.key});

  @override
  State<Settingscreen> createState() => _SettingscreenState();
}

class _SettingscreenState extends State<Settingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Light/Dark Mode',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            MyButton(
                color: Theme.of(context).colorScheme.secondary,
                onTap: () {
                  Provider.of<Themeprovider>(context, listen: false)
                      .toggleTheme();
                }),
          ],
        ));
  }
}
