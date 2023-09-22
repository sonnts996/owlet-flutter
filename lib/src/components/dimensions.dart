/*
 Created by Thanh Son on 06/09/2023.
 Copyright (c) 2023 . All rights reserved.
*/
import 'package:flutter/cupertino.dart';

extension DimensionInsets on double {
  EdgeInsets get horizontalInsets => EdgeInsets.symmetric(horizontal: this);

  EdgeInsets get verticalInsets => EdgeInsets.symmetric(vertical: this);

  EdgeInsets get topInsets => EdgeInsets.only(top: this);

  EdgeInsets get bottomInsets => EdgeInsets.only(bottom: this);

  EdgeInsets get rightInsets => EdgeInsets.only(right: this);

  EdgeInsets get leftInsets => EdgeInsets.only(left: this);

  EdgeInsets get allInsets => EdgeInsets.all(this);

  EdgeInsets get topLeftInsets => EdgeInsets.only(top: this, left: this);

  EdgeInsets get topRightInsets => EdgeInsets.only(top: this, right: this);

  EdgeInsets get bottomLeftInsets => EdgeInsets.only(bottom: this, left: this);

  EdgeInsets get bottomRightInsets =>
      EdgeInsets.only(bottom: this, right: this);

  EdgeInsets get horizontalTopInsets =>
      EdgeInsets.only(top: this, right: this, left: this);

  EdgeInsets get horizontalBottomInsets =>
      EdgeInsets.only(bottom: this, right: this, left: this);

  EdgeInsets get verticalLeftInsets =>
      EdgeInsets.only(top: this, bottom: this, left: this);

  EdgeInsets get verticalRightInsets =>
      EdgeInsets.only(bottom: this, right: this, top: this);
}

extension DimensionSpacing on double {
  SizedBox get horizontalSpacing => SizedBox(height: this);

  SizedBox get verticalSpacing => SizedBox(width: this);
}

extension DimensionBorderRadius on double {
  BorderRadius get circleBorderRadius => BorderRadius.circular(this);
}

extension IntDimensionInsets on int {
  EdgeInsets get horizontalInsets =>
      EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsets get verticalInsets => EdgeInsets.symmetric(vertical: toDouble());

  EdgeInsets get topInsets => EdgeInsets.only(top: toDouble());

  EdgeInsets get bottomInsets => EdgeInsets.only(bottom: toDouble());

  EdgeInsets get rightInsets => EdgeInsets.only(right: toDouble());

  EdgeInsets get leftInsets => EdgeInsets.only(left: toDouble());

  EdgeInsets get allInsets => EdgeInsets.all(toDouble());

  EdgeInsets get topLeftInsets =>
      EdgeInsets.only(top: toDouble(), left: toDouble());

  EdgeInsets get topRightInsets =>
      EdgeInsets.only(top: toDouble(), right: toDouble());

  EdgeInsets get bottomLeftInsets =>
      EdgeInsets.only(bottom: toDouble(), left: toDouble());

  EdgeInsets get bottomRightInsets =>
      EdgeInsets.only(bottom: toDouble(), right: toDouble());

  EdgeInsets get horizontalTopInsets =>
      EdgeInsets.only(top: toDouble(), right: toDouble(), left: toDouble());

  EdgeInsets get horizontalBottomInsets =>
      EdgeInsets.only(bottom: toDouble(), right: toDouble(), left: toDouble());

  EdgeInsets get verticalLeftInsets =>
      EdgeInsets.only(top: toDouble(), bottom: toDouble(), left: toDouble());

  EdgeInsets get verticalRightInsets =>
      EdgeInsets.only(bottom: toDouble(), right: toDouble(), top: toDouble());
}

extension IntDimensionSpacing on int {
  SizedBox get horizontalSpacing => SizedBox(width: toDouble());

  SizedBox get verticalSpacing => SizedBox(height: toDouble());
}

extension IntDimensionBorderRadius on int {
  BorderRadius get circleBorderRadius => BorderRadius.circular(toDouble());
}
