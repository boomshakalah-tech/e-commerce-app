import 'package:get_storage/get_storage.dart';

class CLocalStorage {
  static final CLocalStorage _instance = CLocalStorage._internal();

  factory CLocalStorage() {
    return _instance;
  }

  CLocalStorage._internal();

  final _storage = GetStorage();

  //Save data locally
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Read data locally
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //Removed data locally
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
