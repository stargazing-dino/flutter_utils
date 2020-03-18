/// Returns a string representation for common android status codes
String getStatusCodeError(int statusCode) {
  assert(statusCode != null);

  switch (statusCode) {
    // case 0:
    //   return 'The operation was successful.';
    case -1:
      return 'The operation was successful, but was used the device\'s cache. If this is a write, the data will be written when the device is online; errors will be written to the logs. If this is a read, the data was read from a device cache and may be stale.';
    case 2:
      return 'The installed version of Google Play services is out of date. The calling activity should pass this error code to getErrorDialog(Activity, int, int) to get a localized error dialog that will resolve the error when shown.';
    case 3:
      return 'The installed version of Google Play services has been disabled on this device. The calling activity should pass this error code to getErrorDialog(Activity, int, int) to get a localized error dialog that will resolve the error when shown.';
    case 5:
      return 'The client attempted to connect to the service with an invalid account name specified.';
    case 6:
      return 'Completing the operation requires some form of resolution. A resolution will be available to be started with startResolutionForResult(Activity, int). If the result returned is RESULT_OK, then further attempts should either complete or continue on to the next issue that needs to be resolved.';
    case 7:
      return 'A network error occurred. Retrying should resolve the problem.';
    case 8:
      return 'An internal error occurred. Retrying should resolve the problem.';
    case 10:
      return 'The application is misconfigured. This error is not recoverable and will be treated as fatal. The developer should look at the logs after this to determine more actionable information.';
    case 13:
      return 'The operation failed with no more detailed information.';
    case 14:
      return 'A blocking call was interrupted while waiting and did not run to completion.';
    case 15:
      return 'Timed out while awaiting the result.';
    case 16:
      return 'The result was canceled either due to client disconnect or cancel().';
    case 17:
      return 'The client attempted to call a method from an API that failed to connect. Possible reasons include: The API previously failed to connect with a resolvable error, but the user declined the resolution. The device does not support GmsCore. The specific API cannot connect on this device.';
    default:
      throw ArgumentError(statusCode);
  }
}
