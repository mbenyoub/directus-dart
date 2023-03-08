import 'package:directus_core/directus_core.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

/// Use shared preferences as storage engine
class HiveStorage extends DirectusStorage {
  //final SharedPreferences? _instance;
  Box store ;
  HiveStorage(this.store);

  /// Get item from storage
  @override
  Future<Object?> getItem(String key) async {
    return store.get(key);
  }

  /// Set item to storage
  ///
  /// Value can be either [String], [bool], [int] or [double].
  /// For any other type, it will throw [DirectusError].
  @override
  Future<void> setItem(String key, Object value) async {
    store.put(key, value);
  }

  /// Remove item from storage
  @override
  Future<void> removeItem(String key) async {
    store.delete(key);
  }
}
