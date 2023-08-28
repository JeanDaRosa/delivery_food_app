import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'pages_state.dart';

class PagesCubit extends Cubit<PagesState> {
  PagesCubit() : super(PagesInitial());

  
}
