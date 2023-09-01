class Project {
  String title;
  int price;
  DateTime receivingDate;
  DateTime deadline;
  bool _isUiDone = false;
  bool _isFlutterDone = false;
  bool _isBackendDone = false;
  bool _isProjectDone = false;

  Project({
    required this.title,
    required this.price,
    required this.receivingDate,
    required this.deadline,
  });

  get isUiDone => _isUiDone;
  get isFlutterDone => _isFlutterDone;
  get isBackendDone => _isBackendDone;
  get isProjectDone => _isProjectDone;

  void uiFinished() {
    _isUiDone = true;
    if (_isBackendDone && _isFlutterDone) {
      _isProjectDone = true;
    }
  }

  void flutterFinished() {
    _isFlutterDone = true;
    if (_isBackendDone && _isUiDone) {
      _isProjectDone = true;
    }
  }

  void backendFinished() {
    _isBackendDone = true;
    if (_isUiDone && _isFlutterDone) {
      _isProjectDone = true;
    }
  }

  @override
  String toString() {
    return '''
    project title : $title 
    project price : $price 
    project receivingDate : $receivingDate 
    project title : $deadline 
    ''';
  }
}
