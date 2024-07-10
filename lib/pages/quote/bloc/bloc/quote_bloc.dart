import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) async{
      emit(QuoteStateLoading());
      print("Quote request triggered");

     await Future.delayed(const Duration(seconds: 2), () async {
       emit(QuoteStateLoaded(quote:"”The trouble is, you think you have time.”"
       ));
      });

      
    });
  }
}
