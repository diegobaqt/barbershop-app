import 'package:barbershop_app/components/geek_text_style.dart';
import 'package:barbershop_app/extensions/color.dart';
import 'package:barbershop_app/extensions/colors.dart';
import 'package:barbershop_app/extensions/material_state_property.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class GeekButton extends StatelessWidget {
  final double _height;
  final double? _width;
  final String? _text;
  final VoidCallback _onPressed;
  final bool _showLoading;
  final bool _isEnabled;
  final Widget? _icon;
  final TextStyle? _textStyle;
  final Color _backgroundColor;
  final Color? _iconColor;
  final bool _hasElevation;
  final bool _iconStart;
  final String? _asset;
  final Color? _borderColor;
  final MaterialStateProperty<EdgeInsetsGeometry?>? _padding;
  final TextAlign? _textAlign;

  GeekButton(
      {double height = 32,
      double? width,
      required String text,
      required VoidCallback onPressed,
      TextStyle? textStyle,
      bool showLoading = false,
      bool isEnabled = true,
      Widget? icon,
      String? asset,
      Color backgroundColor = Colors.white,
      Color? iconColor,
      bool hasElevation = false,
      bool iconStart = true,
      Color? borderColor,
      TextAlign textAlign = TextAlign.center,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding})
      : _height = height,
        _width = width,
        _onPressed = onPressed,
        _text = text,
        _textStyle = textStyle,
        _showLoading = showLoading,
        _isEnabled = isEnabled,
        _icon = icon,
        _asset = asset,
        _backgroundColor = backgroundColor,
        _iconColor = iconColor,
        _hasElevation = hasElevation,
        _iconStart = iconStart,
        _borderColor = borderColor,
        _padding = padding,
        _textAlign = textAlign;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: _height,
        width: _width,
        child: ButtonTheme(
          child: ElevatedButton(
            style: ButtonStyle(
                side: MaterialStateProperty.resolveWith<BorderSide>((states) =>
                    BorderSide(
                        color: _borderColor ?? _backgroundColor, width: 1)),
                backgroundColor: _backgroundColor.resolveProperty(),
                elevation: (_hasElevation ? 4.0 : 0.0).resolveProperty(),
                shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))
                    .resolveProperty(),
                padding: _padding),
            child: Row(
              children: [
                _getIcon(_iconStart),
                Expanded(
                  child: Text(
                    _text ?? "",
                    style: _textStyle,
                    textAlign: _textAlign,
                  ),
                ),
                _getIcon(!_iconStart)
              ],
            ),
            onPressed: !_isEnabled ? null : _onPressed,
          ),
        ),
      ),
    );
  }

  Widget _getIcon(bool show) {
    if (!show) return Container();
    if (_showLoading) {
      return Container(
        height: 20,
        width: 20,
        child: const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
      );
    } else if (_icon != null) {
      return _icon!;
    } else if (_asset != null) {
      return WebsafeSvg.asset(_asset!, color: _iconColor);
    } else {
      return Container();
    }
  }

  GeekButton.primary(
      {double height = 32,
      double width = 100,
      TextStyle? textStyle,
      String? text,
      required VoidCallback onPressed,
      bool showLoading = false,
      bool isEnabled = true,
      Widget? icon,
      String? asset,
      bool hasElevation = true,
      bool iconStart = true,
      TextAlign textAlign = TextAlign.center,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding})
      : _height = height,
        _width = width,
        _onPressed = onPressed,
        _text = text,
        _textStyle = textStyle ?? GeekTextStyle.boldWhite14(),
        _showLoading = showLoading,
        _isEnabled = isEnabled,
        _icon = icon,
        _asset = asset,
        _backgroundColor = isEnabled ? Colors.black : GeekColors.smokeDark,
        _iconColor = Colors.white,
        _hasElevation = hasElevation,
        _iconStart = iconStart,
        _borderColor = isEnabled ? Colors.black : GeekColors.smokeDark,
        _padding = padding,
        _textAlign = textAlign;

  GeekButton.white(
      {double height = 32,
      double? width,
      String? text,
      required VoidCallback onPressed,
      bool showLoading = false,
      bool isEnabled = true,
      Widget? icon,
      String? asset,
      bool hasElevation = true,
      bool iconStart = true,
      TextAlign textAlign = TextAlign.center,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding})
      : _height = height,
        _width = width,
        _onPressed = onPressed,
        _text = " " + (text ?? "-"),
        _textStyle = GeekTextStyle.semiboldPrimary12(),
        _showLoading = showLoading,
        _isEnabled = isEnabled,
        _icon = icon,
        _asset = asset,
        _backgroundColor = GeekColor.white,
        _iconColor = Colors.white,
        _hasElevation = hasElevation,
        _iconStart = iconStart,
        _borderColor = GeekColor.white,
        _padding = padding,
        _textAlign = textAlign;

  GeekButton.transparent(
      {double height = 32,
      double? width,
      String? text,
      required VoidCallback onPressed,
      bool showLoading = false,
      bool isEnabled = true,
      Widget? icon,
      String? asset,
      bool hasElevation = true,
      bool iconStart = true,
      TextAlign textAlign = TextAlign.center,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding})
      : _height = height,
        _width = width,
        _onPressed = onPressed,
        _text = text,
        _textStyle = GeekTextStyle.semiboldPrimary12(),
        _showLoading = showLoading,
        _isEnabled = isEnabled,
        _icon = icon,
        _asset = asset,
        _backgroundColor = Colors.transparent,
        _iconColor = Colors.white,
        _hasElevation = hasElevation,
        _iconStart = iconStart,
        _borderColor = Colors.transparent,
        _padding = padding,
        _textAlign = textAlign;

  GeekButton.secondary(
      {double height = 32,
      double? width,
      String? text,
      required VoidCallback onPressed,
      bool showLoading = false,
      bool isEnabled = true,
      Widget? icon,
      String? asset,
      bool hasElevation = true,
      bool iconStart = true,
      TextAlign textAlign = TextAlign.center,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding})
      : _height = height,
        _width = width,
        _onPressed = onPressed,
        _text = text,
        _textStyle = GeekTextStyle.semiboldBlack14(),
        _showLoading = showLoading,
        _isEnabled = isEnabled,
        _icon = icon,
        _asset = asset,
        _backgroundColor = Colors.transparent,
        _iconColor = GeekColors.primaryDark,
        _hasElevation = hasElevation,
        _iconStart = iconStart,
        _borderColor = Colors.black,
        _padding = padding,
        _textAlign = textAlign;
}
