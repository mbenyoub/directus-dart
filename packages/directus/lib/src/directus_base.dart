import 'package:directus/src/shared_preferences_storage.dart';
import 'package:directus_core/directus_core.dart';
import 'package:hive/hive.dart';

class Directus extends DirectusCore {
  Directus(
    super.url, {
    super.client,
    super.key,
    DirectusStorage? storage,
    required Box hivestore
  }) : super(storage: storage ?? HiveStorage(hivestore));
}
