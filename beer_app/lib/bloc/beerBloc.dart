import 'dart:convert';

import 'package:beer_app/bloc/beerEvent.dart';
import 'package:beer_app/bloc/beerState.dart';
import 'package:beer_app/models/beerModel.dart';
import 'package:beer_app/repository/beerRepo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class BeerBloc extends Bloc<BeerEvent, BeerState> {
  final BeerRepository beerRepository;
  int page = 1;
  bool isFetching = false;

  BeerBloc({
    @required this.beerRepository,
  }) : super(BeerInitialState());

  @override
  Stream<BeerState> mapEventToState(BeerEvent event) async* {
    if (event is BeerFetchEvent) {
      yield BeerLoadingState(message: 'Loading Beers');
      final response = await beerRepository.getBeers(page: page);
      if (response is http.Response) {
        if (response.statusCode == 200) {
          final beers = jsonDecode(response.body) as List;
          yield BeerSuccessState(
            beers: beers.map((beer) => BeerModel.fromJson(beer)).toList(),
          );
          page++;
        } else {
          yield BeerErrorState(error: response.body);
        }
      } else if (response is String) {
        yield BeerErrorState(error: response);
      }
    }
  }
}
