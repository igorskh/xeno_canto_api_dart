# xeno-canto API v3 Dart client

## Usage

API description: [https://xeno-canto.org/explore/api](https://xeno-canto.org/explore/api)

Sample usage:
```dart
final env = DotEnv(includePlatformEnvironment: true)..load();
final apiClient = XenoCantoApi(key: env['XENO_CANTO_API_KEY']!);

final query = XenoCantoQuery(sp: "parus major");
apiClient.fetchRecordings(query).then((recordings) {
    print('Found ${recordings.numRecordings} recordings');
});
```

In this example the API key will be loaded from .env file, e.g.
```text
XENO_CANTO_API_KEY=[your_key]
```

Using custom http client, e.g. for using with [mockito](https://github.com/dart-lang/mockito)
```dart
final client = http.Client()

var apiClient = XenoCantoApi(httpClient: client, key: 'test');
```

## Decoding types
By default the API client returns list of recording types as a string, in order to decode it to a list of enum values `XenoCantoType` you can use `XenoCantoTypeExtension`:
```dart
List<XenoCantoType> types = XenoCantoTypeExtension.fromEnumString('call, flight call');
```

Recording types that are not listed in the [API description](https://xeno-canto.org/help/search) (section *Sound type*) will be decoded as `XenoCantoType.unknown`.


Single value can be decoded using `XenoCantoTypeExtension.fromName` method:
```dart
XenoCantoType type = XenoCantoTypeExtension.fromName('call');
```

Similarly, values for recording method, e.g. `XenoCantoRecordingMethodExtension.fromName` and recording quality, e.g. `XenoCantoGroupExtension.fromName`, e.g. `XenoCantoRecordingQualityExtension.fromName` can be decoded using their respective extension methods.