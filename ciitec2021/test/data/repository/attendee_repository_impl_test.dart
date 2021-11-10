import 'package:ciitec2021/Data/datasource/attendee_local_data_source.dart';
import 'package:ciitec2021/Data/datasource/attendee_remote_data_source.dart';
import 'package:ciitec2021/core/network_connectivity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockAttendeeRemoteDataSource extends Mock
    implements AttendeeRemoteDataSource {}

class MockAttendeeLocalDataSource extends Mock
    implements AttendeeLocalDataSource {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockNetworkConnectivity extends Mock implements NetworkConnectivity {}

void main() {
  setUp(() {});

  test(
      "fetchAttendeeList_hasNetworkConnectivityButCacheIsEmpty_updatesCacheAndReturnsNetworkData",
      () async {});

  test(
      "fetchAttendeeList_hasNetworkConnectivityAndCacheIsNotStale_returnsLocalData",
      () async {});

  test(
      "fetchAttendeeList_hasNetworkConnectivityAndCacheIsStale_updatesCacheAndReturnsFromNetwork",
      () async {});

  test("fetchAttendeeList_doesNotHaveNetworkConnectivity_returnsCacheData",
      () async {});
}
