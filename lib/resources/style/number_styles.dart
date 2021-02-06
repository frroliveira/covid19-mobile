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

import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:intl/number_symbols.dart';

///TODO: [WIP] User comma separated values instead of dot
/// Helpful Links
/// - https://stackoverflow.com/a/50142875/1199145
///
class NumberStyles {
  NumberStyles() {
    // ignore: missing_required_param
    numberFormatSymbols['pt'] = NumberSymbols(
      NAME: "pt",
      DECIMAL_SEP: ',',
    );
  }

  static String decimalFormat(decimal) {
    return NumberFormat("pt").format(decimal);
  }
}
