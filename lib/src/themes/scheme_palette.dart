/*
 Created by Thanh Son on 15/10/2023.
 Copyright (c) 2023 . All rights reserved.
*/
import 'package:flutter/material.dart';

class SchemePalette extends StatefulWidget {
  const SchemePalette({super.key});

  @override
  State<SchemePalette> createState() => _SchemePaletteState();
}

class _SchemePaletteState extends State<SchemePalette> {
  ColorScheme get scheme => Theme.of(context).colorScheme;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Scheme Test'), centerTitle: true),
        body: GridView(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 8,
          ),
          children: [
            ColorView(
              color: scheme.primary,
              onColor: scheme.onPrimary,
              colorName: '.primary',
            ),
            ColorView(
              color: scheme.secondary,
              onColor: scheme.onSecondary,
              colorName: '.secondary',
            ),
            ColorView(
              color: scheme.tertiary,
              onColor: scheme.onTertiary,
              colorName: '.tertiary',
            ),
            ColorView(
              color: scheme.error,
              onColor: scheme.onError,
              colorName: '.error',
            ),
            ColorView(
              color: scheme.primaryContainer,
              onColor: scheme.onPrimaryContainer,
              colorName: '.primaryContainer',
            ),
            ColorView(
              color: scheme.secondaryContainer,
              onColor: scheme.onSecondaryContainer,
              colorName: '.secondaryContainer',
            ),
            ColorView(
              color: scheme.tertiaryContainer,
              onColor: scheme.onTertiaryContainer,
              colorName: '.tertiaryContainer',
            ),
            ColorView(
              color: scheme.errorContainer,
              onColor: scheme.onErrorContainer,
              colorName: '.errorContainer',
            ),
            ColorView(
              color: scheme.background,
              onColor: scheme.onBackground,
              colorName: '.background',
            ),
            ColorView(
              color: scheme.surface,
              onColor: scheme.onSurface,
              colorName: '.surface',
            ),
            ColorView(
              color: scheme.inverseSurface,
              onColor: scheme.onInverseSurface,
              colorName: '.inverseSurface',
            ),
            ColorView(
              color: scheme.inversePrimary,
              colorName: '.inversePrimary',
            ),
            ColorView(
              color: scheme.surfaceVariant,
              onColor: scheme.onSurfaceVariant,
              colorName: '.surfaceVariant',
            ),
            ColorView(
              color: scheme.outline,
              colorName: '.outline',
            ),
            ColorView(
              color: scheme.shadow,
              colorName: '.shadow',
            ),
          ],
        ),
      );
}

class ColorView extends StatelessWidget {
  const ColorView({
    super.key,
    required this.color,
    this.colorName,
    this.onColor,
  });

  final Color color;
  final String? colorName;
  final Color? onColor;

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.computeLuminance() > 0.5 ? Colors.grey : Colors.transparent),
        ),
        alignment: Alignment.centerLeft,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  color: onColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: color.computeLuminance() > 0.5 ? Colors.grey : Colors.transparent),
                ),
              ),
              SizedBox(height: 8),
              Text(
                colorName ?? color.toString(),
                style: TextStyle(color:onColor ??(color.computeLuminance() > 0.5 ? Colors.black : Colors.white)),
              ),
            ]),
      );
}
