///     This program is free software: you can redistribute it and/or modify
///    it under the terms of the GNU General Public License as published by
///    the Free Software Foundation, either version 3 of the License, or
///    (at your option) any later version.
///
///    This program is distributed in the hope that it will be useful,
///    but WITHOUT ANY WARRANTY; without even the implied warranty of
///    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
///    GNU General Public License for more details.
///
///    You should have received a copy of the GNU General Public License
///    along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid19mobile/ui/assets/colors.dart';

mixin SvgIcons {
  static Widget phoneSvg = SvgPicture.asset(
    'assets/icon_action_phone.svg',
    color: Covid19Colors.vostBlue,
  );

  static Widget emailSvg = SvgPicture.asset(
    'assets/icon_action_email.svg',
    color: Covid19Colors.vostBlue,
  );

  static Widget linkSvg(
          {Color color = Covid19Colors.vostBlue, double size = 18.0}) =>
      SvgPicture.asset(
        'assets/icon_action_link.svg',
        color: color,
        width: size,
        height: size,
      );

  static Widget logoVost(
          {Color color = Covid19Colors.lightGrey,
          double width = 92.0,
          double height = 28.0}) =>
      SvgPicture.asset(
        'assets/logo_vost.svg',
        color: color,
        width: width,
        height: height,
      );

  static Widget meteoSvg(
          {Color color = Covid19Colors.white, double size = 62.0}) =>
      SvgPicture.asset(
        'assets/icon_meteo.svg',
        color: color,
        width: size,
        height: size,
      );

  static Widget coronavirusSvg(
          {Color color = Covid19Colors.white, double size = 62.0}) =>
      SvgPicture.asset(
        'assets/icon_coronavirus.svg',
        color: color,
        width: size,
        height: size,
      );

  static Widget portugalContinental() => SvgPicture.asset(
        'assets/portugal_continental.svg',
      );

  static Widget portugalAcores() => SvgPicture.asset(
        'assets/portugal_acores.svg',
        height: 60,
      );

  static Widget portugalMadeira() => SvgPicture.asset(
        'assets/portugal_madeira.svg',
        height: 60,
      );
}
