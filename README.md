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