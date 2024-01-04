import 'package:freezed_annotation/freezed_annotation.dart';

part 'house_model.freezed.dart';
part 'house_model.g.dart';

@freezed
class HouseState with _$HouseState {
  const factory HouseState(
      {@Default(0) int totalSaving,
      @Default(0) int targetHousePrice,
      @Default(0.0) double monthlyProjection,
      @Default(<MonthlyContributionState>[])
      List<MonthlyContributionState> monthlyContribution,
      @Default('') String targetDate}) = _HouseState;

  factory HouseState.fromJson(Map<String, dynamic> json) =>
      _$HouseStateFromJson(json);
}

@freezed
class MonthlyContributionState with _$MonthlyContributionState {
  const factory MonthlyContributionState({
    @Default('') String dateTime,
    @Default(0) int amount,
  }) = _MonthlyContributionState;

  factory MonthlyContributionState.fromJson(Map<String, dynamic> json) =>
      _$MonthlyContributionStateFromJson(json);
}