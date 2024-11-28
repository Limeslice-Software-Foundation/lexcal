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

import '../../photography.dart';

class StopSelector extends StatelessWidget {
  final Stops stops;
  final Function(Set<Stops>) onSelectionChanged;
  const StopSelector({super.key, required this.stops, required this.onSelectionChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: SegmentedButton<Stops>(
              segments: const <ButtonSegment<Stops>>[
                ButtonSegment<Stops>(
                  value: Stops.thirds,
                  label: Text('Third'),
                ),
                ButtonSegment<Stops>(
                  value: Stops.halves,
                  label: Text('Half'),
                ),
                ButtonSegment<Stops>(
                  value: Stops.full,
                  label: Text('Full'),
                ),
              ],
              selected: <Stops>{stops},
              onSelectionChanged: onSelectionChanged,
            ),
          ),
        ),
      ],
    );
  }
}
