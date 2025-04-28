import 'package:flutter/material.dart';

/// 사이드바 상태를 앱 전체에서 공유하기 위한 InheritedWidget
/// InheritedNotifier를 사용하여 상태 변경 시 자동으로 의존하는 위젯들이 리빌드되도록 함
class SidebarState extends InheritedNotifier<SidebarNotifier> {
  const SidebarState({
    super.key,
    required SidebarNotifier super.notifier,
    required super.child,
  });

  /// 위젯 트리 어디에서든 SidebarState.of(context)로 사이드바 상태에 접근할 수 있게 함
  static SidebarNotifier of(BuildContext context) {
    // InheritedWidget을 위젯 트리에서 찾음, 의존성을 등록
    final result = context.dependOnInheritedWidgetOfExactType<SidebarState>();
    assert(result != null, 'SidebarState를 찾을 수 없습니다.');

    // 찾은 InheritedWidget의 notifier를 반환
    return result!.notifier!;
  }
}

/// 사이드바의 열림/닫힘 상태를 관리하는 클래스
/// ChangeNotifier를 상속받아 상태 변경 시 구독자들에게 알림을 보낼 수 있음
class SidebarNotifier extends ChangeNotifier {
  bool _isOpen = true;

  bool get isOpen => _isOpen;

  void toggle() {
    _isOpen = !_isOpen;
    notifyListeners();
  }

  void open() {
    if (!_isOpen) {
      _isOpen = true;
      notifyListeners();
    }
  }

  void close() {
    if (_isOpen) {
      _isOpen = false;
      notifyListeners();
    }
  }
}
