part of 'pages_cubit.dart';

@immutable
sealed class PagesState {}

final class PagesInitial extends PagesState {}
final class PagesLoading extends PagesState {}
final class PagesError extends PagesState {}
final class PagesSuccess extends PagesState {}
