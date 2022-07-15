import 'package:bloc/bloc.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<Bottombutton> {
  BottomNavCubit() : super(BottomNavInitial());
  void index(int index) => emit(Bottombutton(currentindex: index));
}
