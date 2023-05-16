import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Registro
  {
    'wo57cpnw': {
      'es': 'Nombre de Usuario',
      'en': 'Username',
    },
    '5vok6uo8': {
      'es': 'Nombre Completo',
      'en': 'Full name',
    },
    'h7sdkkio': {
      'es': 'Correo Electronico',
      'en': 'Email',
    },
    'poypivx0': {
      'es': 'Ingrese su correo electronico',
      'en': 'Enter your email',
    },
    '55eeuy98': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'gqamau38': {
      'es': 'Ingrese su Contraseña',
      'en': 'Enter your Password',
    },
    'cfm5tt8e': {
      'es': 'Confirme su Contraseña',
      'en': 'Confirm your Password',
    },
    's8xzqxwp': {
      'es': 'Ingrese Nuevamente su Contraseña',
      'en': 'Re-enter your Password',
    },
    'rs462rfa': {
      'es': 'Roles',
      'en': 'roles',
    },
    'q1h7ndq0': {
      'es': 'Ingrese Nuevamente su Contraseña',
      'en': 'Re-enter your Password',
    },
    'dyl8n2sj': {
      'es': 'Registrarme',
      'en': 'sign up',
    },
    'iwclsm6l': {
      'es': 'Iniciar Sesion',
      'en': 'Log in',
    },
    'srjjyyes': {
      'es': 'Registrarse',
      'en': 'Sign Up',
    },
    'yzjs9kxp': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Inicio
  {
    'slz31pi8': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Login
  {
    '8kt1zcnh': {
      'es': 'Correo',
      'en': 'Mail',
    },
    '6yiaiyko': {
      'es': 'Ingrese su Correo ',
      'en': 'Enter your Email',
    },
    'dskbvz4n': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    '8kzybn2q': {
      'es': 'Contraseña',
      'en': 'Password',
    },
    'vj2ixm4h': {
      'es': 'Olvide mI Contraseña',
      'en': 'I forgot my password',
    },
    'be9om73c': {
      'es': 'Iniciar Sesion',
      'en': 'Log in',
    },
    'bztdqhwh': {
      'es': 'Ingresar con Google',
      'en': 'Sign in with Google',
    },
    '0zcfdoxx': {
      'es': 'Registrarme',
      'en': 'sign up',
    },
    'vj9v6mom': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // adminRegistroProductos
  {
    'lnuqcqyf': {
      'es': 'Agregar Productos',
      'en': 'Add Products',
    },
    '8g7u2m07': {
      'es': 'Nombre Producto',
      'en': 'Product Name',
    },
    'zy8di1wk': {
      'es': 'Precio Producto',
      'en': 'Product Price',
    },
    '55thy86l': {
      'es': 'Subir Imagen',
      'en': 'Upload Image',
    },
    'f880o1y0': {
      'es': 'Agregar Producto',
      'en': 'Add Product',
    },
    'p5kr7zag': {
      'es': 'Farmacia Colonial',
      'en': 'Farmacia Colonial',
    },
    '8l889779': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // RestaurarContrasena
  {
    '58nzlhf1': {
      'es': 'Digite su Correo',
      'en': 'Enter your email',
    },
    '7opl0d42': {
      'es': 'Correo Electronico',
      'en': 'Email',
    },
    '0xn18p6k': {
      'es': 'Enviar',
      'en': 'Send',
    },
    'sz3r0dk2': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'hhjyau8q': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'w4c9oez0': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // ConfirmacionCompra
  {
    'ben1u0mh': {
      'es': 'Volver al carrito',
      'en': 'Back to cart',
    },
    'dqy5h2bm': {
      'es': 'Tipo de entrega',
      'en': 'delivery type',
    },
    'ncn0jze6': {
      'es': 'Método de pago',
      'en': 'Payment method',
    },
    'nji54xwm': {
      'es': 'Desgloce del pago',
      'en': 'payment breakdown',
    },
    '3xomcjwc': {
      'es': 'Subtotal',
      'en': 'Subtotal',
    },
    '5gwxmc9h': {
      'es': 'Costo del envìo',
      'en': 'Cost of delivery',
    },
    'ipvyrr4j': {
      'es': 'Impuesto (13%)',
      'en': 'Tax (13%)',
    },
    '1jev8ytn': {
      'es': 'Descuento',
      'en': 'Discount',
    },
    '2t6m5ak3': {
      'es': 'Total a pagar',
      'en': 'Total to pay',
    },
    'kqyfl72h': {
      'es': 'Proceder con la compra',
      'en': 'Proceed with the purchase',
    },
    'obkiklx9': {
      'es': 'Detalles de la compra',
      'en': 'purchase details',
    },
    'bb7z9kcz': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'f8uztcao': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'yk2ly3ej': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'w8h4t94i': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'olwisxv1': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'fssodx65': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    'cnk64u8i': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    '9r50r02j': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    'ivniaix7': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // MapaEntrega
  {
    'wjymmtoj': {
      'es': 'Seleccione el destino para la entrega',
      'en': 'Select the destination for delivery',
    },
    'yuqqxokd': {
      'es': 'Agregar dirección',
      'en': 'Make an order',
    },
    'o66zywyt': {
      'es': 'Farmacia Colonial',
      'en': 'Colonial Pharmacy',
    },
    'fpigzxrr': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // ListaMedicamentos
  {
    'pigkt72k': {
      'es': '    Buscar',
      'en': 'Search',
    },
    'qqp2r86y': {
      'es': 'Seleccione una opción del menú',
      'en': 'Select a menu option',
    },
    'pmy1ocl7': {
      'es': 'Ver producto',
      'en': 'see product',
    },
    'hmv7x3ev': {
      'es': 'Farmacia Colonial',
      'en': 'Colonial Pharmacy',
    },
    'jlbziuzw': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // BuscarMedicamento
  {
    '8iwkex52': {
      'es': 'Productos',
      'en': 'Products',
    },
    'bv8d6lw8': {
      'es': '      Buscar',
      'en': 'Search',
    },
    'dvjy91ke': {
      'es': 'Farmacia Colonial',
      'en': 'Colonial Pharmacy',
    },
    '8psj4pf4': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // CompraFinalizada
  {
    'ragbmy2y': {
      'es': 'Éxito al procesar tu orden',
      'en': 'Success in processing your order',
    },
    'zhj7h6i1': {
      'es': 'Número de orden',
      'en': 'Number of order',
    },
    'a7jf57bo': {
      'es':
          'Tu orden ha sido procesada exitosamente, pronto nos estaremos poniendo en contacto para la entrega',
      'en':
          'Your order has been successfully processed, we will be contacting you soon for delivery',
    },
    '170w9mjw': {
      'es': 'Rastrear',
      'en': 'Track',
    },
    'jae24zzd': {
      'es': 'Farmacia Colonial',
      'en': 'Colonial Pharmacy',
    },
    'dv1lqu22': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    '70h59sjm': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    '9312i6gu': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'mxksdsqr': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'c4498z8f': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    '2g9w569d': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    '6zkostmc': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'daskw2zt': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    'vv1omqk8': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // DetalleMedicamento
  {
    'e0q8go3t': {
      'es': 'Detalles del medicamento',
      'en': 'drug details',
    },
    'gwmu61jb': {
      'es': 'Agregar al carrito',
      'en': 'Add to cart',
    },
    'a57kw9cy': {
      'es': 'Detalles del medicamento',
      'en': 'drug details',
    },
    'mrdhtyup': {
      'es': 'ver más detalles',
      'en': 'see more details',
    },
    'opb2hoth': {
      'es': 'Farmacia Colonial',
      'en': 'Colonial Pharmacy',
    },
    '9ymlsykr': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'reewj3aq': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'yi5ndizn': {
      'es': 'Editar Direccion',
      'en': 'Edit Address',
    },
    '8zmcbqsi': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'e0lglrgo': {
      'es': 'Servicios',
      'en': 'Services',
    },
    '8qbw6g4e': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    '34dgmd47': {
      'es': 'Mis Ordenes',
      'en': 'my orders',
    },
    'ccve2coo': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    'he7cqa29': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'ju7nptx5': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    'uaopgpjb': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // ListaDeseos
  {
    '66r0apbm': {
      'es': 'Detalles del medicamento',
      'en': 'drug details',
    },
    '409bbkz5': {
      'es': 'Detalles del producto',
      'en': 'Product Details',
    },
    'xkfe2bw6': {
      'es': 'Detalles del medicamento',
      'en': 'drug details',
    },
    'ouv21f8r': {
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    },
    '6xr5n1f3': {
      'es': 'Farmacia Colonial',
      'en': 'Farmacia Colonial',
    },
    '11ag6q3k': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'izfp80pp': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'qr4uqigd': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'kzowa0ew': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'pnlz1zx4': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    '7j96yof9': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    '1xwxy7bv': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    '20cv9itr': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    'r4s6n8z5': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Home
  {
    'y3pikjn5': {
      'es': 'Hola, ',
      'en': 'Hello,',
    },
    'jmjg1kzr': {
      'es': 'Ordenar con mi prescripción',
      'en': 'order with my prescription',
    },
    'wfe8oggf': {
      'es': '5% de descuento',
      'en': '5% discount',
    },
    'w2aoq2ae': {
      'es': 'Adjuntar imagen',
      'en': 'Attach image',
    },
    'zg5w13f5': {
      'es': 'Seleccione una opción del menú',
      'en': 'Select a menu option',
    },
    's28aqmna': {
      'es': 'Buscar medicamento',
      'en': 'search medication',
    },
    'qlvqk990': {
      'es': 'Mis ordenes',
      'en': 'my orders',
    },
    '8613ua7b': {
      'es': 'Mi Dirección',
      'en': 'My adress',
    },
    'cdh9rt3f': {
      'es': 'Mi lista de deseos',
      'en': 'my wish list',
    },
    'ur5be7as': {
      'es': 'Mis citas',
      'en': 'My dates',
    },
    'gl7yuy7v': {
      'es': 'Servicios Adicionales',
      'en': 'Additional services',
    },
    '48mahrw0': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    '0jfxglgs': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    '2j7on4p4': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    '0aivoow8': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'oyuew32i': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'lfl5i7j7': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    'gbryuw91': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'n9ftzdau': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    'pimcbmxf': {
      'es': 'Farmacia Colonial',
      'en': 'Farmacia Colonial',
    },
    'moard3l9': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Carrito
  {
    'q0gjeofw': {
      'es': 'Mis productos',
      'en': 'My products',
    },
    'b3g9vf0k': {
      'es': 'Precio unitario',
      'en': 'Unit price',
    },
    'epz0p4v4': {
      'es': 'Subtotal',
      'en': 'Subtotal',
    },
    'ldbde36b': {
      'es': 'Eliminar',
      'en': 'Eliminate',
    },
    '2lujhi51': {
      'es': 'Agregar más productos',
      'en': 'Add more products',
    },
    'x6ovwl0e': {
      'es': 'Finalizar compra',
      'en': 'checkout',
    },
    '2wix3idb': {
      'es': 'Carrito',
      'en': 'Trolley',
    },
    'mj3qii2m': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'bb8f3pgk': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    '60namnyp': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'ok76a32d': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'oc6lmglh': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'u8i256v2': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    'e3z0dl8y': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'aogh36k5': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    '710brm6v': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // Servicios
  {
    'ct8tjjmt': {
      'es': 'Seleccione el servicio...',
      'en': 'Select service...',
    },
    'akrnzofd': {
      'es': 'Seleccione el servicio...',
      'en': 'Select service...',
    },
    '2t62b5ix': {
      'es': 'Seleccione la Fecha y Hora deseada:',
      'en': 'Select the desired Date and Time:',
    },
    't97zqclz': {
      'es': 'Fecha Seleccionada:',
      'en': 'Selected date:',
    },
    'kgg2z8j3': {
      'es': 'Agendar Cita',
      'en': 'Schedule Appointment',
    },
    'l7douk0h': {
      'es': 'Servicios Adicionales',
      'en': 'Additional services',
    },
    'aegknkx3': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    't1295o1s': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'qqukn9ct': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    '0qmlnmu6': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'dy9vfphh': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    '08dmofhj': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    '8r50v16p': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'eiduaii6': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    'wef9lf0t': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // MetodoPago
  {
    'cyqmcem2': {
      'es': 'Volver',
      'en': 'Return',
    },
    'ec5zysnu': {
      'es': 'Método de pago',
      'en': 'Payment method',
    },
    'khfro01w': {
      'es': 'Efectivo',
      'en': 'Cash',
    },
    '8jqacozi': {
      'es': 'Tarjeta de Crédito',
      'en': 'Credit card',
    },
    'rxvd8vii': {
      'es': 'Agregar método de pago',
      'en': 'Add payment method',
    },
    'z2luj6re': {
      'es': 'Métodos de pago',
      'en': 'Payment methods',
    },
    'sioirzws': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'uhyed06d': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'gjqbo92y': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'j62knkcf': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'z38mg7vo': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'fep13mlo': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    '8hmsg8e2': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'xyx6ormr': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    'ykaqrke3': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // EditarPerfil
  {
    '6kqelcav': {
      'es': 'Subir Foto',
      'en': 'Upload photo',
    },
    'ey1aaw39': {
      'es': 'Guardar Foto',
      'en': 'Save photo',
    },
    '9jabnips': {
      'es': 'Nombre',
      'en': 'Name',
    },
    '9o76y7d6': {
      'es': '[Some hint text...]',
      'en': '[Some hint text...]',
    },
    'ulgougw8': {
      'es': 'Telefono',
      'en': 'Phone',
    },
    'ow7npjb1': {
      'es': 'Email',
      'en': 'E-mail',
    },
    'q1xu6unx': {
      'es': '[Some hint text...]',
      'en': '[Some hint text...]',
    },
    'ds9ucwbi': {
      'es': 'Guardar Cambios',
      'en': 'Save Changes',
    },
    'o5bg9xzd': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'oi3win0d': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'udt0pwcl': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    '36lug4tu': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'mjw96hqh': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'd4j5vrva': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'vl2l8s37': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    '7mc2cb90': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    '3gcfrgk6': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    'sxo4lymq': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // InformacionFarmacia
  {
    'b8vyq58c': {
      'es': 'Farmacia Colonial',
      'en': 'Colonial Pharmacy',
    },
    '2fi8wlsb': {
      'es':
          '\"Toma de presion arterial, inyectables, \nmedias para varices y diabeticos, amplio \nsurtido en medicamentos y cosmeticos.\"',
      'en':
          '\"Blood pressure measurement, injectables,\nstockings for varicose veins and diabetics, wide\nassortment of medicines and cosmetics.',
    },
    'o9i4d7z9': {
      'es': 'Ubicacion',
      'en': 'Location',
    },
    'd0bf0kb3': {
      'es': '200 mts.  Oeste del Mercado Municipal\nNaranjo, Alajuela',
      'en': '200 meters. West of the Municipal Market\nNaranjo, Alajuela',
    },
    'eniv9xn6': {
      'es': 'Horario',
      'en': 'Schedule',
    },
    'gzqwgash': {
      'es': 'Lunes a Sabado de 8 a.m. a 8 p.m.\nDomingos de 9 a.m. a 12 m.d.',
      'en':
          'Monday to Saturday from 8 a.m. to 5 p.m. to 8 p.m.\nSundays from 9 a.m. to at 12 m.d.',
    },
    '46i6cd45': {
      'es': 'Telefono',
      'en': 'Phone',
    },
    '3xydzovf': {
      'es': '2450 00 74',
      'en': '2450 00 74',
    },
    't52n8ph1': {
      'es': 'Correo',
      'en': 'Mail',
    },
    'ky3n2hkl': {
      'es': 'farmaciacolonialnaranjo@gmail.com',
      'en': 'farmaciacolonialnaranjo@gmail.com',
    },
    '3mcfc3gw': {
      'es': 'Informacion de la Farmacia',
      'en': 'Pharmacy Information',
    },
    '7rg90aag': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'yclp7lgm': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'lu2g8ut4': {
      'es': 'Editar Direccion',
      'en': 'Edit Address',
    },
    '5p67lrir': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    '4lb41eeo': {
      'es': 'Mis Ordenes',
      'en': 'my orders',
    },
    '8dy31j98': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    '6v3wgcnl': {
      'es': 'Cerrar Sesion',
      'en': 'Sign Out',
    },
    'es3s5vp4': {
      'es': 'Inicio',
      'en': 'home',
    },
  },
  // CitasAgendadas
  {
    'zigykpn1': {
      'es': 'Citas Agendadas',
      'en': 'Scheduled Appointments',
    },
    '2kw4sdhh': {
      'es': 'Cancelar',
      'en': 'Cancel',
    },
    'wlfh9t0q': {
      'es': 'Citas Anteriores',
      'en': 'Previous Appointments',
    },
    'xqp8gosb': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'c1jjxo22': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    '7kfbeup9': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'lh68cz1m': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'slyn40vb': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'gvr6cmt5': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'o3w1d0i4': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    'hvhbsos4': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'ouovkg6r': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    '0q2olee2': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // AgregarMetodoPago
  {
    'wxzuthw3': {
      'es': 'Volver',
      'en': 'Return',
    },
    'pngr7btf': {
      'es': 'Método de pago',
      'en': 'Payment method',
    },
    'dwz15xeh': {
      'es': 'Nombre',
      'en': 'Name',
    },
    '41tki3vr': {
      'es': 'Nombre',
      'en': 'Name',
    },
    'nwfpawdj': {
      'es': 'Tarjeta de crédito',
      'en': 'Credit card',
    },
    'jdz2f2q3': {
      'es': '****************',
      'en': '****************',
    },
    '9ek5rxdv': {
      'es': 'Fecha de expiración',
      'en': 'Expiration date',
    },
    'mjnyddv2': {
      'es': 'CVV',
      'en': 'CVV',
    },
    'p5klrf95': {
      'es': 'MM/AA',
      'en': 'MM/YY',
    },
    'ovqvqtgz': {
      'es': '123',
      'en': '123',
    },
    'xhdpa3m7': {
      'es': 'Agregar método de pago',
      'en': 'Add payment method',
    },
    '5u9doa4w': {
      'es': 'Métodos de pago',
      'en': 'Payment methods',
    },
    'gd5wn0yn': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'el9igrna': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'hrb6ukic': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'ew2q52d9': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'yx8uxybi': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'kn259iv8': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    'lnmig02o': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'l1bzzv2e': {
      'es': 'Cerrar Sesion',
      'en': 'Sign off',
    },
    '35d8gtp9': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // TipoEntrega
  {
    '9wy3nxwl': {
      'es': 'Volver',
      'en': 'Return',
    },
    '90p0ud26': {
      'es': '¿Cómo deea recibir tu orden?',
      'en': 'How do you want to receive your order?',
    },
    'ja8rrhc6': {
      'es': 'Recoger en sucursal',
      'en': 'Pick up at branch',
    },
    'epklz91e': {
      'es': 'Entrega a domicilio',
      'en': 'Home delivery',
    },
    'k6a5r3nb': {
      'es': 'Método de entrega',
      'en': 'Payment methods',
    },
    'hy6dxutu': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    '3v3btm2p': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'ha2fuwql': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'vqvcc3j6': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'xu7j3mcw': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'a6fo7qbg': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    'hc4o4pgv': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    'e929tga8': {
      'es': 'Cerrar Sesion',
      'en': 'Sign Out',
    },
    'rhh3li95': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // listaOrdenes
  {
    'a7rpge1u': {
      'es': 'Lista de ordenes',
      'en': 'order list',
    },
    'mmscbp11': {
      'es': 'Más',
      'en': 'Further',
    },
    'kv9v1lpy': {
      'es': 'Historial de Ordenes',
      'en': 'Order History',
    },
    '1vvyail1': {
      'es': 'Editar Perfil',
      'en': 'Edit profile',
    },
    'wy2uvhbn': {
      'es': 'Restaurar Contraseña',
      'en': 'Reset Password',
    },
    'ciksazuv': {
      'es': 'Buscar Productos',
      'en': 'Search Products',
    },
    'y3rd2for': {
      'es': 'Servicios',
      'en': 'Services',
    },
    'eyfru8kh': {
      'es': 'Mis Citas',
      'en': 'My dates',
    },
    'kqhqi055': {
      'es': 'Mi Lista de Deseos',
      'en': 'My Wish List',
    },
    'odfab1jz': {
      'es': 'Ver Informacion',
      'en': 'See information',
    },
    '6wwklq4k': {
      'es': 'Cerrar Sesion',
      'en': 'Sign Out',
    },
    'p6h81010': {
      'es': 'Inicio',
      'en': 'Home',
    },
  },
  // productListNOFuncional
  {
    'rvwnapd8': {
      'es': '\$450',
      'en': '\$450',
    },
    'u7jopnl5': {
      'es': 'Randy Mcdonald',
      'en': 'Randy mcdonald',
    },
    '1iori1fl': {
      'es': 'Agregar al carrito',
      'en': 'Add to cart',
    },
  },
  // searchBar
  {
    'pxb3jjp0': {
      'es': 'Buscar',
      'en': 'Search',
    },
  },
  // productListFuncional
  {
    'n2te5h52': {
      'es': 'Ver producto',
      'en': 'See Product',
    },
  },
  // detalleProducto
  {
    '2ob423np': {
      'es': 'Agregar al carrito',
      'en': 'Add to cart',
    },
  },
  // btsAgregarCarrito
  {
    't4oq0lqi': {
      'es': 'El producto ha sido agregado exitosamente!',
      'en': 'The product has been successfully added!',
    },
    'e157heee': {
      'es': 'Continuar Comprando',
      'en': 'Continue shopping',
    },
    'j5ou1f3p': {
      'es': 'Finalizar Compra',
      'en': 'Checkout',
    },
  },
  // Miscellaneous
  {
    'rg90o82h': {
      'es':
          'In order to search nearby, this app requires access to your current location.',
      'en':
          'In order to search nearby, this app requires access to your current location.',
    },
    'xwbn8ayb': {
      'es':
          'In order to take a picture or video, this app requires permission to access the camera.',
      'en':
          'In order to take a picture or video, this app requires permission to access the camera.',
    },
    'k8pb6wqx': {
      'es':
          'In order to upload data, this app requires permission to access the photo library.',
      'en':
          'In order to upload data, this app requires permission to access the photo library.',
    },
    'p3zl6dit': {
      'es': 'Error',
      'en': 'Error',
    },
    'ofrv804k': {
      'es': '',
      'en': 'Password sent!',
    },
    'umbodyzh': {
      'es': '',
      'en': 'Email required!',
    },
    'te3jlul3': {
      'es': '',
      'en': 'Phone number required',
    },
    'mxdcag6n': {
      'es': '',
      'en': 'Password dont match',
    },
    '8bksd3mh': {
      'es': '',
      'en': 'Enter SMS verification code.',
    },
    '8sblbvmv': {
      'es': '',
      'en': 'Too long since most recent sign in. ',
    },
    'xa9fmoyu': {
      'es': '',
      'en': '',
    },
    'pmhouvlb': {
      'es': '',
      'en': 'Uploading file...',
    },
    'if1c0hz6': {
      'es': '',
      'en': 'Success!',
    },
    'hiq3gcka': {
      'es': '',
      'en': 'F',
    },
    '7okcriyw': {
      'es': '',
      'en': '',
    },
    '6ltn6hip': {
      'es': '',
      'en': '',
    },
    'l93masol': {
      'es': '',
      'en': '',
    },
    'c0jfl2yu': {
      'es': '',
      'en': 'Gallery (Photo)',
    },
    'os4y7jt9': {
      'es': '',
      'en': 'Gallery (Video)',
    },
    'ugzczz1c': {
      'es': '',
      'en': 'Camera',
    },
    '1h9ipyxt': {
      'es': '',
      'en': '',
    },
    '7ujut9bu': {
      'es': '',
      'en': '',
    },
    'co09zmlh': {
      'es': '',
      'en': '',
    },
    'csw8pnyi': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
