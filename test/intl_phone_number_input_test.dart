import 'package:dlibphonenumber/exceptions/number_parse_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:intl_phone_number_input/src/utils/formatter/as_you_type_formatter.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("AsYouTypeFormatter Test", () {
    test("Construct AsYouTypeFormatter with empty isoCode/dialCode", () {
      // isoCode and dialCode are required non-nullable Strings, so an empty
      // String is a valid (if meaningless) value and construction succeeds.
      expect(
        () => AsYouTypeFormatter(
          isoCode: "",
          dialCode: "",
          onInputFormatted: (_) {},
        ),
        returnsNormally,
      );
    });
  });

  group("Phone Number Object Test", () {
    test("Assert Test getRegionInfoFromPhoneNumber", () {
      expect(
        PhoneNumber.getRegionInfoFromPhoneNumber('', ""),
        throwsA(isA<NumberParseException>()),
      );
    });
  });
}
