Future<void> _setTimer() async {
    int? newTime = await showDialog<int>(
      context: context,
      builder: (context) {
        int tempTime = 0;
        return AlertDialog(
          title: const Text('Set Timer'),
          content: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              tempTime = int.tryParse(value) ?? 0;
            },
            decoration: const InputDecoration(labelText: 'Seconds'),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(tempTime),
              child: const Text('Set'),
            ),
          ],
        );
      },
    );
    if (newTime != null) {
      setState(() {
        _timeInSeconds = newTime;
      });
    }
}