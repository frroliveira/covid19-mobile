import 'package:covid19mobile/ui/assets/colors.dart';

///    This program is free software: you can redistribute it and/or modify
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

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(
        left: 8,
        right: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        height: 18.098360061645508,
        margin: const EdgeInsets.only(
          left: 26.88525390625,
          right: 26.88525390625,
        ),
        decoration: BoxDecoration(
          color: Covid19Colors.vostBlue,
          borderRadius: BorderRadius.circular(1),
        ),
      ),
    );
  }
}
