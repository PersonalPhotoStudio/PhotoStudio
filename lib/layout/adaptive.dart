import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';

/// 窗口是否为 medium 或 large 尺寸, 即为：非 small 尺寸
///
/// 适配响应式布局
bool isDisplayDesktop(BuildContext context) =>
    getWindowType(context) >= AdaptiveWindowType.medium;

/// 窗口是否为 medium 尺寸
/// 
/// 适配响应式布局
bool isDisplaySmallDesktop(BuildContext context) {
  return getWindowType(context) == AdaptiveWindowType.medium;
}
