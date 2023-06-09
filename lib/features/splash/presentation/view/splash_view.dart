import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplahViewState extends ConsumerStatefulWidget {
  const SplahViewState({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplahViewStateState();
}

class _SplahViewStateState extends ConsumerState<SplahViewState> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.popAndPushNamed(context, '/');
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}