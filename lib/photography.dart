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
import 'dart:math';

/// This file contains a number of utilities related specifically to photography.

/// Enum describing the increment of stops to use.
enum Stops { thirds, halves, full }

/// Represents a shutter speed.
class ShutterSpeed {
  final String label;
  final double value;
  const ShutterSpeed({required this.label, required this.value});

  @override
  String toString() {
    return label;
  }
}

/// List of ND filter stops to use.
const List<int> ndfilters = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];

/// List of ISOs in full stops.
const List<int> fullIso = [25,50,100,200,400,800,1600,3200,6400];
/// List of ISOs in half stops.
const List<int> halfIso = [25,50,70,100,140,200,280,400,560,800,1100,1600,2200,3200,6400];
/// List of ISOs in third stops.
const List<int> thirdIso = [12,16,20,25,32,40,50,64,80,100,125,160,200,250,320,400,500,640,800,1000,1250,1600,2000,2500,3200,4000,5000,6400];

/// List of apertures in full stops.
const List<double> fullAperture = [1.0,1.4,2.0,2.8,4.0,5.6,8.0,11.0,16.0,22.0,32.0,45.0,64.0];
/// List of apertures in half stops.
const List<double> halfAperture = [1.0,1.2,1.4,1.7,2.0,2.4,2.8,3.3,4.0,4.8,5.6,6.7,8.0,9.5,11.0,13.0,16.0,19.0,22.0,27.0,32.0,35.0,45.0,54.0,64.0];
/// List of apertures in third stops.
const List<double> thirdAperture = [1.0,1.1,1.2,1.4,1.6,1.8,2.0,2.2,2.5,2.8,3.2,3.5,4.0,4.5,5.0,5.6,6.3,7.1,8.0,9.0,10.0,11.0,13.0,14.0,16.0,18.0,20.0,22.0,25.0,29.0,32.0,35.0,39.0,45.0,51.0,57.0,64.0];

/// List of shutter speeds in full stops.
const List<ShutterSpeed> fullShutter = [
  ShutterSpeed(label: '30\"',value: 30.0), ShutterSpeed(label: '15\"',value: 15.0), ShutterSpeed(label: '8\"',value: 8.0), ShutterSpeed(label: '4\"',value: 4.0),
  ShutterSpeed(label: '2\"',value: 2.0), ShutterSpeed(label: '1\"',value: 1.0), ShutterSpeed(label: '1/2',value: 0.5), ShutterSpeed(label: '1/4',value: 0.25),
  ShutterSpeed(label: '1/8',value: 0.125), ShutterSpeed(label: '1/15',value: 0.06666667), ShutterSpeed(label: '1/30',value: 0.03333333),
  ShutterSpeed(label: '1/60',value: 0.01666667), ShutterSpeed(label: '1/125',value: 0.008), ShutterSpeed(label: '1/250',value: 0.004),
  ShutterSpeed(label: '1/500',value: 0.002), ShutterSpeed(label: '1/1000',value: 0.001), ShutterSpeed(label: '1/2000',value: 0.0005),
  ShutterSpeed(label: '1/4000',value: 0.00025), ShutterSpeed(label: '1/8000',value: 0.000125),
];

/// List of shutter speeds in half stops.
const List<ShutterSpeed> halfShutter = [
  ShutterSpeed(label: '30\"',value: 30.0), ShutterSpeed(label: '15\"',value: 15.0), ShutterSpeed(label: '8\"',value: 8.0), ShutterSpeed(label: '4\"',value: 4.0),
  ShutterSpeed(label: '2\"',value: 2.0), ShutterSpeed(label: '1\"',value: 1.0), ShutterSpeed(label: '1/2',value: 0.5), ShutterSpeed(label: '1/4',value: 0.25),
  ShutterSpeed(label: '1/8',value: 0.125), ShutterSpeed(label: '1/15',value: 0.06666667), ShutterSpeed(label: '1/30',value: 0.03333333),
  ShutterSpeed(label: '1/60',value: 0.01666667), ShutterSpeed(label: '1/125',value: 0.008), ShutterSpeed(label: '1/250',value: 0.004),
  ShutterSpeed(label: '1/500',value: 0.002), ShutterSpeed(label: '1/1000',value: 0.001), ShutterSpeed(label: '1/2000',value: 0.0005),
  ShutterSpeed(label: '1/4000',value: 0.00025), ShutterSpeed(label: '1/8000',value: 0.000125),
];

/// List of shutter speeds in third stops.
const List<ShutterSpeed> thirdShutter = [
  ShutterSpeed(label: '30\"',value: 30.0),
  ShutterSpeed(label: '15\"',value: 15.0),
  ShutterSpeed(label: '8\"',value: 8.0),
  ShutterSpeed(label: '4\"',value: 4.0),
  ShutterSpeed(label: '2\"',value: 2.0),
  ShutterSpeed(label: '1\"',value: 1.0),
  ShutterSpeed(label: '1/2',value: 0.5),
  ShutterSpeed(label: '1/4',value: 0.25),
  ShutterSpeed(label: '1/8',value: 0.125),
  ShutterSpeed(label: '1/15',value: 0.06666667),
  ShutterSpeed(label: '1/30',value: 0.03333333),
  ShutterSpeed(label: '1/60',value: 0.01666667),
  ShutterSpeed(label: '1/125',value: 0.008),
  ShutterSpeed(label: '1/250',value: 0.004),
  ShutterSpeed(label: '1/500',value: 0.002),
  ShutterSpeed(label: '1/1000',value: 0.001),
  ShutterSpeed(label: '1/2000',value: 0.0005),
  ShutterSpeed(label: '1/4000',value: 0.00025),
  ShutterSpeed(label: '1/8000',value: 0.000125),
];

/// Calculate the log for the given base and input.
double logBase(num x, num base) => log(x) / log(base);

/// Calculate the log of base 2 for the given input.
double log2(num x) => logBase(x, 2);

/// Calculate the Exposure Value (EV) for the given aperture, iso and shutter combination.
double calculateExposureValue(double aperture, int iso, double shutter) {
  return log2(((100 * pow(aperture, 2))/(iso*shutter)));
}

/// Calculate the shutter speed for the given EV, aperture and iso combination.
double calculateShutterSpeed(double ev, double aperture, int iso) {
  return ((100 * pow(aperture, 2))/pow(2,ev))/iso;
}

/// Finds the closest shutter speed for the given value.
ShutterSpeed findClosestMatch(List<ShutterSpeed> speeds, double value) {
  if(value > 30) {
    return ShutterSpeed(label: '$value', value: value);
  }
  double min = 30;
  int minIndex = 0;

  for(int i = 0; i < speeds.length; i++) {
    double test = (value - speeds[i].value).abs();
    if(test < min) {
      min = test;
      minIndex = i;
    }
  }

  return speeds[minIndex];
}