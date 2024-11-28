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

class DropDownWithIcon<T> extends StatefulWidget {
  final AssetImage image;
  final Function(T?) onSelected;
  final List<T> data;
  final Widget label;
  const DropDownWithIcon({super.key, required this.image, required this.data, required this.label, required this.onSelected});

  @override
  State<DropDownWithIcon<T>> createState() => _DropDownWithIconState<T>();
}

class _DropDownWithIconState<T> extends State<DropDownWithIcon<T>> {
  final TextEditingController shutterController = TextEditingController();

  @override
  void dispose() {
    shutterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 30,
              child: Image(
                image: widget.image,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: DropdownMenu<T>(
                  expandedInsets: EdgeInsets.zero,
                  initialSelection: widget.data[0],
                  controller: shutterController,
                  requestFocusOnTap: true,
                  label: widget.label,
                  onSelected: widget.onSelected,
                  dropdownMenuEntries: widget.data.map<DropdownMenuEntry<T>>((T t) {
                    return DropdownMenuEntry<T>(
                      value: t,
                      label: t.toString(),
                    );
                  }).toList(),
                )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
