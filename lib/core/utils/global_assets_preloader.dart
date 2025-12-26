// // ignore_for_file: lines_longer_than_80_chars, use_build_context_synchronously

// import 'dart:developer';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:draftea_pokemon_challenge/gen/assets.gen.dart';

// class GlobalAssetsPreloader {
//   static bool _assetsPreloaded = false;

//   /// Lista de TODOS los iconos SVG de la aplicación
//   static final List<SvgGenImage> _allSvgIcons = [
//     // Iconos principales
//     ...Assets.icons.values,
//   ];

//   /// Lista de TODAS las imágenes PNG/JPG de la aplicación
//   static final List<AssetGenImage> _allImageAssets = [

//   ];

//   /// Lista de TODOS los archivos de sonido de la aplicación

//   /// Lista de archivos Lottie

//   /// Precarga TODOS los assets de la aplicación
//   /// Los iconos SVG se precargan de forma síncrona (son rápidos y críticos para la UI)
//   /// El resto de assets se precargan en segundo plano
//   static Future<void> preloadAllAssets() async {
//     // Durante hot restart, _assetsPreloaded se resetea pero la caché de SVG puede persistir
//     // putIfAbsent es eficiente: si el asset ya está en caché, lo devuelve inmediatamente
//     // sin recargarlo, así que es seguro llamarlo incluso si ya están precargados
//     if (_assetsPreloaded) {
//       if (kDebugMode) {
//         log('Assets ya marcados como precargados, omitiendo recarga');
//       }
//       return;
//     }

//     try {
//       if (kDebugMode) {
//         log('Iniciando precarga de TODOS los assets de la aplicación...');
//       }

//       // Asegurar que el binding esté inicializado
//       WidgetsFlutterBinding.ensureInitialized();

//       // Precargar iconos SVG de forma síncrona (son críticos para la UI inicial)
//       // putIfAbsent verifica internamente si ya están en caché y no los recarga
//       await _preloadSvgIcons();

//       // Marcar como precargado después de los iconos SVG (lo más crítico)
//       _assetsPreloaded = true;

//       if (kDebugMode) {
//         log('Iconos SVG precargados exitosamente');
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         log('Error general precargando assets de la aplicación: $e');
//       }
//     }
//   }

//   /// Precarga los assets no críticos en segundo plano (sonidos, Lottie, etc.)
//   /// Se debe llamar después de preloadAllAssets() para no bloquear la UI
//   static Future<void> preloadNonCriticalAssets() async {
//     try {
//       if (kDebugMode) {
//         log('Iniciando precarga de assets no críticos en segundo plano...');
//       }

//       // Precargar archivos Lottie (rootBundle tiene caché interna)
//       //await _preloadLottieAssets();

//       if (kDebugMode) {
//         log('Assets no críticos precargados exitosamente');
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         log('Error precargando assets no críticos: $e');
//       }
//     }
//   }

//   /// Precarga solo los iconos SVG
//   /// putIfAbsent es eficiente y no recargará si ya están en caché
//   /// Carga los iconos en lotes para evitar saturar el sistema
//   /// Fuerza el parseo completo del SVG para que esté listo para renderizar
//   static Future<void> _preloadSvgIcons() async {
//     if (kDebugMode) {
//       log('Precargando ${_allSvgIcons.length} iconos SVG...');
//     }

//     final stopwatch = Stopwatch()..start();
//     var loadedCount = 0;
//     var cachedCount = 0;

//     // Cargar iconos en lotes de 20 para balance entre velocidad y uso de recursos
//     const batchSize = 20;
//     for (var i = 0; i < _allSvgIcons.length; i += batchSize) {
//       final batch = _allSvgIcons.skip(i).take(batchSize).toList();

//       await Future.wait(
//         batch.map((icon) async {
//           try {
//             final loader = SvgAssetLoader(icon.path);
//             final cacheKey = loader.cacheKey(null);

//             // Cargar los bytes en caché
//             final beforeLoad = Stopwatch()..start();
//             final bytesFuture = svg.cache.putIfAbsent(
//               cacheKey,
//               () => loader.loadBytes(null),
//             );

//             // Esperar a que los bytes estén cargados
//             await bytesFuture;
//             beforeLoad.stop();

//             // Si fue muy rápido (< 1ms), probablemente estaba en caché
//             if (beforeLoad.elapsedMilliseconds < 1) {
//               cachedCount++;
//             } else {
//               loadedCount++;
//             }
//           } catch (e) {
//             if (kDebugMode) {
//               log('Error precargando icono SVG ${icon.path}: $e');
//             }
//           }
//         }),
//       );
//     }

//     stopwatch.stop();

//     if (kDebugMode) {
//       log(
//         'Iconos SVG precargados: $loadedCount cargados, $cachedCount desde caché, '
//         'tiempo total: ${stopwatch.elapsedMilliseconds}ms',
//       );
//     }
//   }

//   /// Precarga las imágenes PNG/JPG
//   // static Future<void> _preloadImageAssets(BuildContext context) async {
//   //   if (kDebugMode) {
//   //     log('Precargando ${_allImageAssets.length} imágenes...');
//   //   }

//   //   for (final image in _allImageAssets) {
//   //     try {
//   //       await precacheImage(image.provider(), context);
//   //     } catch (e) {
//   //       if (kDebugMode) {
//   //         log('Error precargando imagen ${image.path}: $e');
//   //       }
//   //     }
//   //   }

//   //   if (kDebugMode) {
//   //     log('Imágenes precargadas exitosamente');
//   //   }
//   // }

//   /// Precarga los archivos de sonido
//   // static Future<void> _preloadSoundAssets() async {
//   //   if (kDebugMode) {
//   //     log('Precargando ${_allSoundAssets.length} archivos de sonido...');
//   //   }

//   //   for (final sound in _allSoundAssets) {
//   //     try {
//   //       await rootBundle.load(sound);
//   //     } catch (e) {
//   //       if (kDebugMode) {
//   //         log('Error precargando sonido $sound: $e');
//   //       }
//   //     }
//   //   }

//   //   if (kDebugMode) {
//   //     log('Archivos de sonido precargados exitosamente');
//   //   }
//   // }

//   // /// Precarga los archivos Lottie
//   // static Future<void> _preloadLottieAssets() async {
//   //   if (kDebugMode) {
//   //     log('Precargando ${_allLottieAssets.length} archivos Lottie...');
//   //   }

//   //   // Los archivos Lottie se cargan desde rootBundle que tiene su propia caché
//   //   // No hay forma directa de verificar si están en caché, pero rootBundle
//   //   // maneja la caché internamente, así que es seguro intentar cargarlos
//   //   for (final lottie in _allLottieAssets) {
//   //     try {
//   //       // rootBundle.load() usa caché interna, así que es seguro llamarlo múltiples veces
//   //       await rootBundle.load(lottie.path);
//   //     } catch (e) {
//   //       if (kDebugMode) {
//   //         log('Error precargando Lottie ${lottie.path}: $e');
//   //       }
//   //     }
//   //   }

//   //   if (kDebugMode) {
//   //     log('Archivos Lottie precargados exitosamente');
//   //   }
//   // }

//   /// Verifica si los assets ya fueron precargados
//   static bool get isPreloaded => _assetsPreloaded;

//   /// Fuerza la recarga de los assets (útil para testing)
//   static void reset() {
//     _assetsPreloaded = false;
//   }

//   /// Método para precargar solo assets específicos por tipo
//   static Future<void> preloadSpecificAssets({
//     required BuildContext context,
//     List<SvgGenImage>? svgIcons,
//     List<AssetGenImage>? images,
//     List<String>? sounds,
//     List<LottieGenImage>? lottieFiles,
//   }) async {
//     try {
//       if (kDebugMode) {
//         log('Precargando assets específicos...');
//       }

//       if (svgIcons != null) {
//         for (final icon in svgIcons) {
//           try {
//             final loader = SvgAssetLoader(icon.path);
//             await svg.cache.putIfAbsent(
//               loader.cacheKey(null),
//               () => loader.loadBytes(null),
//             );
//           } catch (e) {
//             if (kDebugMode) {
//               log('Error precargando icono SVG ${icon.path}: $e');
//             }
//           }
//         }
//       }

//       if (images != null) {
//         for (final image in images) {
//           try {
//             await precacheImage(image.provider(), context);
//           } catch (e) {
//             if (kDebugMode) {
//               log('Error precargando imagen ${image.path}: $e');
//             }
//           }
//         }
//       }

//       if (sounds != null) {
//         for (final sound in sounds) {
//           try {
//             await rootBundle.load(sound);
//           } catch (e) {
//             if (kDebugMode) {
//               log('Error precargando sonido $sound: $e');
//             }
//           }
//         }
//       }

//       if (lottieFiles != null) {
//         for (final lottie in lottieFiles) {
//           try {
//             await rootBundle.load(lottie.path);
//           } catch (e) {
//             if (kDebugMode) {
//               log('Error precargando Lottie ${lottie.path}: $e');
//             }
//           }
//         }
//       }

//       if (kDebugMode) {
//         log('Assets específicos precargados exitosamente');
//       }
//     } catch (e) {
//       if (kDebugMode) {
//         log('Error precargando assets específicos: $e');
//       }
//     }
//   }

//   /// Obtiene estadísticas de assets precargados
//   static Map<String, int> getPreloadStats() {
//     return {
//       'svgIcons': _allSvgIcons.length,
//       'images': _allImageAssets.length,
//       'sounds': _allSoundAssets.length,
//       'lottieFiles': _allLottieAssets.length,
//       'total':
//           _allSvgIcons.length +
//           _allImageAssets.length +
//           _allSoundAssets.length +
//           _allLottieAssets.length,
//     };
//   }
// }
