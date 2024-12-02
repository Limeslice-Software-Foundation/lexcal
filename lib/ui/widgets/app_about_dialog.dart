// Licensed to the Limeslice Software Foundation (LSF) under one or more
// contributor license agreements.  See the NOTICE file distributed with
// this work for additional information regarding copyright ownership.
// The LSF licenses this file to You under the MIT License (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// https://limeslice.org/license.txt
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String lsfUrl = 'https://limeslice.org';
const String poppinsFontUrl = 'https://github.com/itfoundry/Poppins';
const String iconsUrl = 'https://www.flaticon.com';

class AppAboutDialog extends StatelessWidget {
  const AppAboutDialog({super.key});

  static Future<void> show(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('About'),
          content: const AppAboutDialog(),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'LExCal',
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          '1.0.0',
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 11,
        ),
        const Text(
          'Copyright 2024 The Limeslice Software Foundation.',
          style: TextStyle(fontSize: 11),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () async {
                if (!await launchUrl(Uri.parse(lsfUrl))) {

                }
              },
              child: const Text(
                lsfUrl,
                style: TextStyle(fontSize: 11, color: Colors.blue),
              )),
        ),

        /// ======================================================[ FONT ]
        const SizedBox(
          height: 11,
        ),
        const Text(
          'Poppins Font, Copyright 2020 The Poppins Project Authors',
          style: TextStyle(fontSize: 11),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () async {
                if (!await launchUrl(Uri.parse(poppinsFontUrl))) {

                }
              },
              child: const Text(
                poppinsFontUrl,
                style: TextStyle(fontSize: 11, color: Colors.blue),
              )),
        ),
        const Text(
          'This Font Software is licensed under the',
          style: TextStyle(fontSize: 11),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () async {
                if (!await launchUrl(Uri.parse('https://openfontlicense.org/open-font-license-official-text/'))) {

                }
              },
              child: const Text(
                'SIL Open Font License, Version 1.1 ',
                style: TextStyle(fontSize: 11, color: Colors.blue),
              )),
        ),


        ///============================================================[Icons]
        const SizedBox(
          height: 11,
        ),
        const Text(
          'Icons made by Freepik from',
          style: TextStyle(fontSize: 11),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () async {
                if (!await launchUrl(Uri.parse(iconsUrl))) {
                  // todo display error message
                }
              },
              child: const Text(
                iconsUrl,
                style: TextStyle(fontSize: 11, color: Colors.blue),
              )),
        ),
      ],
    );
  }
}
