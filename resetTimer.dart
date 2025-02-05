 void _resetTimer() {
    _timer.cancel();
    setState(() {
      _timeInSeconds = 0;
      _isRunning = false;
    });
  }