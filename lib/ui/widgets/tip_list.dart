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

class TipList extends StatelessWidget {
  const TipList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: const [
        ListTile(
          title: Text('1. Compose the shot without the ND filter'),
          subtitle: Text(''),
        ),
        ListTile(
          title: Text('2. Set your camera to AV (aperture priority)'),
          subtitle: Text(''),
        ),
        ListTile(
          title: Text('3. Take a test shot without the ND filter'),
          subtitle: Text(''),
        ),
        ListTile(
          title: Text('4. Switch off autofocus and set camera to bulb mode'),
          subtitle: Text(''),
        ),
        ListTile(
          title: Text('5. Mount the ND filter'),
          subtitle: Text(''),
        ),
        ListTile(
          title: Text('6. Calculate the exposure time'),
          subtitle: Text(''),
        ),
      ],
    );
  }
}
