import 'package:beer_app/bloc/beerBloc.dart';
import 'package:beer_app/bloc/beerEvent.dart';
import 'package:beer_app/repository/beerRepo.dart';
import 'package:beer_app/widgets/beerBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BeerBloc(
        beerRepository: BeerRepository(),
      )..add(BeerFetchEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Text('All Beers \u{1F37A}'),
          centerTitle: true,
        ),
        body: BeerBody(),
      ),
    );
  }
}
