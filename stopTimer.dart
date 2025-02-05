  void _stopTimer() {
    _timer.cancel();
    setState(() {
      _isRunning = false;
    });
  }