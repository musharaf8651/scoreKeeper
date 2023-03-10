import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:scorekeeper/constants/const.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Settings',
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: const Text(
                  'Done',
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Number of Sets',
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  DropdownButton(
                    value: dropdownValue,
                    dropdownColor: Colors.black,
                    items: items.map((int items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(
                          items.toString(),
                          style: const TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (int? newVal) {
                      setState(() {
                        dropdownValue = newVal!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
