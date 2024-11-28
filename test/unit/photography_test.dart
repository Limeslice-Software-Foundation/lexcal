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
import 'package:lexcal/photography.dart';
import 'package:test/test.dart';

void main() {

  double aperture = 8.0;
  int iso = 64;
  double shutter = 1/2;
  double ev = 7.643856189774724;

  test('Calculate EV', () {
    double actual = calculateExposureValue(aperture, iso, shutter);
    expect(actual, ev);
  });

  test('Calculate Shutter', () {
    double actual = calculateShutterSpeed(ev-9, aperture, iso);
    expect(actual, 256.00000000000006);
  });

  test('ND Filters contain correct values', () {
    expect(true, ndfilters.contains(0));
    expect(true, ndfilters.contains(3));
    expect(true, ndfilters.contains(6));
    expect(true, ndfilters.contains(9));
    expect(true, ndfilters.contains(10));
    expect(true, ndfilters.contains(13));
    expect(true, ndfilters.contains(16));
    expect(true, ndfilters.contains(19));
  });

  test('ISO Third stops contain correct values', () {
    expect(true, thirdIso.contains(32));
    expect(true, thirdIso.contains(40));
    expect(true, thirdIso.contains(64));
    expect(true, thirdIso.contains(80));
  });
}