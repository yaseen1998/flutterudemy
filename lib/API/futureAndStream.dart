import 'dart:async';

void main() {
  final Future<String> f1 = Future(info);
  f1.then((value) => print(value)).catchError((error) => print(error));

  final f2 = Future.value('f4');
  f2.then((value) => print(value)).catchError((error) => print(error));

  final Future<String> f3 = Future.delayed(const Duration(seconds: 2), () => 'f6');
  f3.then((value) => print(value)).catchError((error) => print(error));

  final s1 = Stream.periodic(const Duration(seconds: 1), (x) => x);
  // final StreamSubscription<int> sub = s1.take(5).listen((_) => (_));
  // sub.onDone(() => print('done'));
  // sub.onData((event) => 
  // event>2 ? sub.cancel() : print('data: $event')
  // );
  // sub.onError((error) => print(error));
  final Stream<int> s2 = s1.where((event) => event > 1);
  s2.listen((event) => print('s2: $event'));
  print('f2');
}

String info() {
  return ('info');
}
