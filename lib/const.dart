import 'package:flutter/material.dart';

class Const {
  static const apiUrl = "https://valorant-api.com";
  static const youtubeUrlList = [
    {"name": "Gekko", "url": "https://www.youtube.com/watch?v=ksjKoHwFU0c&t=56s"},
    {
      "name": "Fade",
      "url": "https://www.youtube.com/watch?v=3lH5yo57aRg&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=5"
    },
    {
      "name": "Breach",
      "url": "https://www.youtube.com/watch?v=Rux0HjzKQbw",
    },
    {
      "name": "Deadlock",
      "url": "https://www.youtube.com/watch?v=T0EJZdd8Zq8&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=1"
    },
    {"name": "Raze", "url": "https://www.youtube.com/watch?v=bx40eRL7Zio&t=1s"},
    {
      "name": "Chamber",
      "url": "https://www.youtube.com/watch?v=REqdVMvs4A8&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=10",
    },
    {
      "name": "KAY/O",
      "url": "https://www.youtube.com/watch?v=_nKVcFcoBZ8&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=11",
    },
    {
      "name": "Skye",
      "url": "https://www.youtube.com/watch?v=PNm_s2lZMLA&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=14",
    },
    {
      "name": "Cypher",
      "url": "https://www.youtube.com/watch?v=9MASIzN5y6c&t=2s",
    },
    {
      "name": "Sova",
      "url": "https://www.youtube.com/watch?v=UnuYArmWQdo",
    },
    {
      "name": "Sova",
      "url": "https://www.youtube.com/watch?v=UnuYArmWQdo",
    },
    {
      "name": "Killjoy",
      "url": "https://www.youtube.com/watch?v=cGMwIXuOCH4&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=15",
    },
    {
      "name": "Harbor",
      "url": "https://www.youtube.com/watch?v=5jQzQRnmb-c&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=3",
    },
    {
      "name": "Viper",
      "url": "https://www.youtube.com/watch?v=ITEblQSaNHg&t=9s",
    },
    {
      "name": "Phoenix",
      "url": "https://www.youtube.com/watch?v=59qObAp1-qo&t=4s",
    },
    {
      "name": "Astra",
      "url": "https://www.youtube.com/watch?v=AI6GYBPwCFA&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=12",
    },
    {
      "name": "Brimstone",
      "url": "https://www.youtube.com/watch?v=0QMIf08XVVg",
    },
    {
      "name": "Neon",
      "url": "https://www.youtube.com/watch?v=KMM3FkDf0rg&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=9",
    },
    {
      "name": "Yoru",
      "url": "https://www.youtube.com/watch?v=eERhWGEPkZI&list=PLQ0EeAm8otgxeyzvH65lfuEM-dYqpnF20&index=13",
    },
    {
      "name": "Sage",
      "url": "https://www.youtube.com/watch?v=RKn3-iRlTr0&t=1s",
    },
    {
      "name": "Reyna",
      "url": "https://www.youtube.com/watch?v=UcuBeaK-nqg&t=4s",
    },
    {
      "name": "Omen",
      "url": "https://www.youtube.com/watch?v=_jJdWy6bDj4&t=2s",
    },
    {
      "name": "Jett",
      "url": "https://www.youtube.com/watch?v=-cPLXswVsvc&t=1s",
    }
  ];
}

class Colorss {
  static const mainColor01 = Color(0xffBD3944);
  static const mainColor02 = Color(0xffFD4556);
  static const mainColor03 = Color(0xff53212B);
  static const textColor = Color(0xffafaeb6);
}

class Styles {
  static TextStyle get smallTextStyle =>
      const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colorss.textColor, fontFamily: "valorant");
  static TextStyle get mediumTextStyle =>
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colorss.textColor, fontFamily: "valorant");
  static TextStyle get bigTextStyle =>
      const TextStyle(fontSize: 19, fontWeight: FontWeight.w500, color: Colorss.textColor, fontFamily: "valorant");
  static TextStyle get smallTitleStyle =>
      const TextStyle(fontSize: 19, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: "valorant");
  static TextStyle get bigTitleStyle =>
      const TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: "valorant");
}
