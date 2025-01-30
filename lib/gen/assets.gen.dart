/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngsGen {
  const $AssetsPngsGen();

  /// File path: assets/pngs/ganapathy.jpg
  AssetGenImage get ganapathy =>
      const AssetGenImage('assets/pngs/ganapathy.jpg');

  /// File path: assets/pngs/guru.jpg
  AssetGenImage get guru => const AssetGenImage('assets/pngs/guru.jpg');

  /// File path: assets/pngs/guruimage.png
  AssetGenImage get guruimage =>
      const AssetGenImage('assets/pngs/guruimage.png');

  /// File path: assets/pngs/sarada.jpg
  AssetGenImage get sarada => const AssetGenImage('assets/pngs/sarada.jpg');

  /// File path: assets/pngs/sivan.jpg
  AssetGenImage get sivan => const AssetGenImage('assets/pngs/sivan.jpg');

  /// File path: assets/pngs/snd.jpg
  AssetGenImage get snd => const AssetGenImage('assets/pngs/snd.jpg');

  /// File path: assets/pngs/snd_two.png
  AssetGenImage get sndTwo => const AssetGenImage('assets/pngs/snd_two.png');

  /// File path: assets/pngs/subr.jpg
  AssetGenImage get subr => const AssetGenImage('assets/pngs/subr.jpg');

  /// File path: assets/pngs/vishnu.jpg
  AssetGenImage get vishnu => const AssetGenImage('assets/pngs/vishnu.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [ganapathy, guru, guruimage, sarada, sivan, snd, sndTwo, subr, vishnu];
}

class Assets {
  Assets._();

  static const $AssetsPngsGen pngs = $AssetsPngsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
