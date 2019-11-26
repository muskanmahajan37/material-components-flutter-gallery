// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'package:gallery/studies/shrine/model/product.dart';
import 'package:gallery/studies/shrine/supplemental/product_card.dart';

class TwoProductCardColumn extends StatelessWidget {
  const TwoProductCardColumn({
    @required this.bottom,
    this.top,
    @required this.imageAspectRatio,
  }) : assert(bottom != null);

  static const double spacerHeight = 44;
  static const double horizontalPadding = 28;

  final Product bottom, top;
  final double imageAspectRatio;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: horizontalPadding),
            child: top != null
                ? MobileProductCard(
                    imageAspectRatio: imageAspectRatio,
                    product: top,
                  )
                : SizedBox(
                    height: spacerHeight,
                  ),
          ),
          const SizedBox(height: spacerHeight),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: horizontalPadding),
            child: MobileProductCard(
              imageAspectRatio: imageAspectRatio,
              product: bottom,
            ),
          ),
        ],
      );
    });
  }
}

class OneProductCardColumn extends StatelessWidget {
  const OneProductCardColumn({
    this.product,
    @required this.reverse,
  });

  final Product product;

  // Whether the product column should align to the bottom.
  final bool reverse;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      reverse: reverse,
      children: [
        const SizedBox(
          height: 40,
        ),
        MobileProductCard(
          product: product,
        ),
      ],
    );
  }
}
