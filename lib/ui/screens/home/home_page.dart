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

import 'package:covid19mobile/generated/l10n.dart';
import 'package:covid19mobile/resources/constants.dart';
import 'package:covid19mobile/resources/icons_svg.dart';
import 'package:covid19mobile/ui/assets/colors.dart';
import 'package:covid19mobile/ui/core/base_stream_service_screen_page.dart';
import 'package:covid19mobile/ui/screens/home/components/home_logo.dart';
import 'package:covid19mobile/ui/widgets/card_border_arrow.dart';
import 'package:flutter/material.dart';

import 'components/home_info_button.dart';

/// Creates an HomePage extending [BasePage]
/// that is a StatefulWidget
class HomePage extends StatefulWidget {
  /// Home page view
  HomePage({Key key, this.title}) : super(key: key);

  /// Title of the page view
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 16.0,
          ),
          SafeArea(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 24.0),
              child: Center(
                child: HomeLogo(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  HomeInfoButton(
                    callback: () =>
                        Navigator.of(context).pushNamed(routeStatistics),
                    title: 'Estatísticas',
                    subtitle: 'COVID-19',
                    leftBackgroundColor: Covid19Colors.blueCovid,
                    rightBackgroundColor: Covid19Colors.blueCovidLight,
                    icon: SvgIcons.coronavirusSvg(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  HomeInfoButton(
                    callback: () =>
                        // todo (GP) add callback
                        print("Todo"),
                    title: 'Avisos e Alertas',
                    subtitle: 'Metereologia',
                    leftBackgroundColor: Covid19Colors.blueMeteo,
                    rightBackgroundColor: Covid19Colors.blueMeteoLight,
                    icon: SvgIcons.meteoSvg(),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  SafeArea(
                    child: Column(
                      children: [
                        CardBorderArrow(
                          text: S
                              .of(context)
                              .screenNotificationsTitle
                              .toUpperCase(),
                          callback: () => Navigator.of(context)
                              .pushNamed(routeNotifications),
                          textColor: Covid19Colors.darkGrey,
                          borderColor: Covid19Colors.lightGrey,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        CardBorderArrow(
                          text: S.of(context).screenAboutTitle.toUpperCase(),
                          callback: () =>
                              Navigator.of(context).pushNamed(routeAbout),
                          textColor: Covid19Colors.darkGrey,
                          borderColor: Covid19Colors.lightGrey,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
