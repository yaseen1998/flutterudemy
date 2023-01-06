import 'dart:async';

void main() async {
  print('f0');
  try {
  final int f1 = await Future.delayed(const Duration(seconds: 2), () => 2);
  print('f1: $f1');
  } catch (e) {
    print(e);
  }
  print('f2');
  final s1 = Stream.periodic(const Duration(seconds: 1), (x) => x);
  
  await for(var value in s1){
    if (value > 5) break;
    print('value: $value');
  }

}
