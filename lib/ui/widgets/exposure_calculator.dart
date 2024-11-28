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
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lexcal/photography.dart';
import 'package:lexcal/ui/widgets/drop_down.dart';

import '../../state/providers.dart';
import 'stop_selector.dart';

class ExposureCalculator extends ConsumerStatefulWidget {
  const ExposureCalculator({super.key});

  @override
  ConsumerState<ExposureCalculator> createState() => _ExposureCalculatorState();
}

class _ExposureCalculatorState extends ConsumerState<ExposureCalculator> {
  double apertureValue = 8.0;
  int isoValue = 64;
  double shutterSpeed = 1 / 2;
  int ndFilterValue = 0;
  double calculatedExposureValue = 7.643856189774724;

  Stops stops = Stops.thirds;
  List<int> isos = thirdIso;
  List<double> apertures = thirdAperture;
  List<ShutterSpeed> shutters = thirdShutter;

  @override
  void dispose() {
    super.dispose();
  }

  calculateShutter() {
    setState(() {
      calculatedExposureValue = calculateExposureValue(apertureValue, isoValue, shutterSpeed);
    });
    // Calculate the shutter speed taking the ND filter value into account.
    double calculatedShutterSpeed = calculateShutterSpeed(calculatedExposureValue - ndFilterValue, apertureValue, isoValue);
    ref.read(uiStateProvider.notifier).setCalculatedShutterSpeed(calculatedShutterSpeed);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StopSelector(
            stops: stops,
            onSelectionChanged: (Set<Stops> newSelection) {
              setState(() {
                stops = newSelection.first;
                switch (stops) {
                  case Stops.thirds:
                    {
                      isos = thirdIso;
                      apertures = thirdAperture;
                      shutters = thirdShutter;
                      break;
                    }
                  case Stops.halves:
                    {
                      isos = halfIso;
                      apertures = halfAperture;
                      shutters = halfShutter;
                      break;
                    }
                  case Stops.full:
                    {
                      isos = fullIso;
                      apertures = fullAperture;
                      shutters = fullShutter;
                      break;
                    }
                }
              });
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Test Shot settings'),
                  const SizedBox(
                    height: 6,
                  ),
                  DropDownWithIcon<int>(
                    image: const AssetImage('assets/iso.png'),
                    data: isos,
                    label: const Text('ISO'),
                    onSelected: (int? iso) {
                      if (iso != null) {
                        setState(() {
                          isoValue = iso;
                        });
                        calculateShutter();
                      }
                    },
                  ),
                  DropDownWithIcon<double>(
                    image: const AssetImage('assets/aperture.png'),
                    data: apertures,
                    label: const Text('Aperture'),
                    onSelected: (double? aperture) {
                      if (aperture != null) {
                        setState(() {
                          apertureValue = aperture;
                        });
                        calculateShutter();
                      }
                    },
                  ),
                  DropDownWithIcon<ShutterSpeed>(
                    image: const AssetImage('assets/clock.png'),
                    data: shutters,
                    label: const Text('Shutter'),
                    onSelected: (ShutterSpeed? shutter) {
                      if (shutter != null) {
                        setState(() {
                          shutterSpeed = shutter.value;
                        });
                        calculateShutter();
                      }
                    },
                  ),
                  DropDownWithIcon<int>(
                    image: const AssetImage('assets/filter.png'),
                    data: ndfilters,
                    label: const Text('ND Filter'),
                    onSelected: (int? nd) {
                      if (nd != null) {
                        setState(() {
                          ndFilterValue = nd;
                        });
                        calculateShutter();
                      }
                    },
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: Text('EV:'),
                      ),
                      Expanded(
                        child: Text('$calculatedExposureValue'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: Text('Shutter:'),
                      ),
                      Expanded(
                        child: Text('${findClosestMatch(shutters, ref.read(uiStateProvider).calculatedShutterSpeed).label}'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
