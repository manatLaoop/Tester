import 'dart:developer';

num Tests({required String inputStrings}) {
  int Count1 = 0;
  num dataforreturn = 0;
  List<List> charList = [];
  Map<String, List> CharCount = {};
  if (inputStrings.length < 1 || inputStrings.isEmpty) {
    return 0;
  } else {
    for (var i = 0; i < inputStrings.length; i++) {
      // CharCount[] = [];
      CharCount.containsKey('key');
    }
    for (var i = 0; i < inputStrings.length; i++) {
      CharCount[inputStrings[i]]!.add(inputStrings[i]);
    }
    for (var values in CharCount.values) {
      charList.add(values);
    }
    charList.sort((a, b) => a.length.compareTo(b.length));

    if (charList.isNotEmpty) {
      Count1 = charList.length;
      dataforreturn = charList[Count1 - 1].length + charList[Count1 - 2].length;
    }

    inspect(dataforreturn);
    return dataforreturn;
  }
}
