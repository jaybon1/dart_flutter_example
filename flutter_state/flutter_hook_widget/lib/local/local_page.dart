import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalPage extends HookWidget {
  const LocalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prefs = useMemoized(() => SharedPreferences.getInstance());
    final localData = useState<String?>(null);

    useEffect(() {
      prefs.then((value) {
        localData.value = value.getString('key');
      });
    }, []);

    useEffect(() {
      if(localData.value == null) return;
      prefs.then((value) => value.setString("key", localData.value ?? "읏"));
    }, [localData]);

    return Column(
      children: [
        Text(localData.value ?? "읏"),
        ElevatedButton(
          onPressed: () => localData.value = "헬로",
          child: Text("바꾸기"),
        )
      ],
    );
  }
}
