/* import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<bool> checkInternetConnection() async {
  /* InternetConnectionChecker().onStatusChange.listen(
    (event) {
      CustomSnackBar(
              text: event.name,
              isError: event.name == "disconnected" ? true : false)
          .show();
    },
  ); */
  return await InternetConnectionChecker().hasConnection;
}
 */
