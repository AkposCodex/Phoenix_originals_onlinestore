import 'package:flutter/material.dart';

const LargeTextSize = 26.0;
const MediumTextSize = 20.0;
const BodyTextSize = 16.0;

const String FontNameDefault = 'Lora';
const String FontNameRegular = 'Lora-Regular.ttf';

const AppBarStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: MediumTextSize,
  color: Colors.yellow,
);

const RegularStyle = TextStyle(
  fontFamily: FontNameRegular,
  fontWeight: FontWeight.w200,
  fontSize: MediumTextSize,
  color: Colors.black,
);

const TitleStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: Colors.white,
);

const TitleStyle_dark = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w300,
  fontSize: LargeTextSize,
  color: Colors.black,
);

const SubtitleStyle = TextStyle(
  fontFamily: FontNameRegular,
  fontWeight: FontWeight.w100,
  fontSize: MediumTextSize,
  color: Colors.white,
);

const BodyStyle1 = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.w600,
  fontSize: LargeTextSize,
  color: Colors.black,
);