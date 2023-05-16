import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _favorito = await secureStorage.getBool('ff_favorito') ?? _favorito;
    _cartEmpty = await secureStorage.getBool('ff_cartEmpty') ?? _cartEmpty;
    _MetodoPago = await secureStorage.getString('ff_MetodoPago') ?? _MetodoPago;
    _CreditCardSelected =
        await secureStorage.getBool('ff_CreditCardSelected') ??
            _CreditCardSelected;
    _TipoEntrega =
        await secureStorage.getString('ff_TipoEntrega') ?? _TipoEntrega;
    _recogerSucursal =
        await secureStorage.getBool('ff_recogerSucursal') ?? _recogerSucursal;
    _consecutivoTarjeta = await secureStorage.getInt('ff_consecutivoTarjeta') ??
        _consecutivoTarjeta;
    _subtotalCarrito =
        await secureStorage.getDouble('ff_subtotalCarrito') ?? _subtotalCarrito;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _favorito = false;
  bool get favorito => _favorito;
  set favorito(bool _value) {
    _favorito = _value;
    secureStorage.setBool('ff_favorito', _value);
  }

  void deleteFavorito() {
    secureStorage.delete(key: 'ff_favorito');
  }

  int _totalCartItems = 1;
  int get totalCartItems => _totalCartItems;
  set totalCartItems(int _value) {
    _totalCartItems = _value;
  }

  double _subtotalProduct = 0;
  double get subtotalProduct => _subtotalProduct;
  set subtotalProduct(double _value) {
    _subtotalProduct = _value;
  }

  int _productosDisponibleTemporal = 0;
  int get productosDisponibleTemporal => _productosDisponibleTemporal;
  set productosDisponibleTemporal(int _value) {
    _productosDisponibleTemporal = _value;
  }

  bool _cartEmpty = true;
  bool get cartEmpty => _cartEmpty;
  set cartEmpty(bool _value) {
    _cartEmpty = _value;
    secureStorage.setBool('ff_cartEmpty', _value);
  }

  void deleteCartEmpty() {
    secureStorage.delete(key: 'ff_cartEmpty');
  }

  String _MetodoPago = 'Efectivo';
  String get MetodoPago => _MetodoPago;
  set MetodoPago(String _value) {
    _MetodoPago = _value;
    secureStorage.setString('ff_MetodoPago', _value);
  }

  void deleteMetodoPago() {
    secureStorage.delete(key: 'ff_MetodoPago');
  }

  bool _CreditCardSelected = false;
  bool get CreditCardSelected => _CreditCardSelected;
  set CreditCardSelected(bool _value) {
    _CreditCardSelected = _value;
    secureStorage.setBool('ff_CreditCardSelected', _value);
  }

  void deleteCreditCardSelected() {
    secureStorage.delete(key: 'ff_CreditCardSelected');
  }

  String _TipoEntrega = 'Recoger en sucursal';
  String get TipoEntrega => _TipoEntrega;
  set TipoEntrega(String _value) {
    _TipoEntrega = _value;
    secureStorage.setString('ff_TipoEntrega', _value);
  }

  void deleteTipoEntrega() {
    secureStorage.delete(key: 'ff_TipoEntrega');
  }

  bool _recogerSucursal = false;
  bool get recogerSucursal => _recogerSucursal;
  set recogerSucursal(bool _value) {
    _recogerSucursal = _value;
    secureStorage.setBool('ff_recogerSucursal', _value);
  }

  void deleteRecogerSucursal() {
    secureStorage.delete(key: 'ff_recogerSucursal');
  }

  int _consecutivoTarjeta = 0;
  int get consecutivoTarjeta => _consecutivoTarjeta;
  set consecutivoTarjeta(int _value) {
    _consecutivoTarjeta = _value;
    secureStorage.setInt('ff_consecutivoTarjeta', _value);
  }

  void deleteConsecutivoTarjeta() {
    secureStorage.delete(key: 'ff_consecutivoTarjeta');
  }

  double _subtotalCarrito = 0;
  double get subtotalCarrito => _subtotalCarrito;
  set subtotalCarrito(double _value) {
    _subtotalCarrito = _value;
    secureStorage.setDouble('ff_subtotalCarrito', _value);
  }

  void deleteSubtotalCarrito() {
    secureStorage.delete(key: 'ff_subtotalCarrito');
  }

  LatLng? _coordEntrega;
  LatLng? get coordEntrega => _coordEntrega;
  set coordEntrega(LatLng? _value) {
    _coordEntrega = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
