import 'package:blocapp/pages/quote/bloc/bloc/quote_bloc.dart';
import 'package:blocapp/pages/quote/widgets/custom_widget.dart';
import 'package:blocapp/pages/quote/widgets/error_message.dart';
import 'package:blocapp/pages/quote/widgets/qutoe_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuotePageWrapperProvider extends StatelessWidget {
  const QuotePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => QuoteBloc(),
    child:const  QutoeHome(),
    );
  }
}


class QutoeHome extends StatelessWidget {
  const QutoeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote Home"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Center(child: BlocBuilder<QuoteBloc, QuoteState>(
                builder: (context, state) {
                  if (state is QuoteInitial) {
                    return const Text("Your Quote is Waiting ...",style: TextStyle(color: Colors.white,fontSize: 20),);
                  } else if (state is QuoteStateLoading) {
                    return const CircularProgressIndicator(
                      color: Colors.pink,
                    );
                  } else if (state is QuoteStateLoaded) {
                    return QuoteWidget(quotename: state.quote);
                  } else if (state is QuoteStateError) {
                    return ErrorMessages(msg: state.msg);
                  }

                  return const ErrorMessages(msg: "Something went to wrong!");
                },
              )
                  // Text(
                  // "Your Quote is waiting...."
                  // ),
                  ),
            ),
            // QuoteWidget(quotename: "Hello"),
            // ErrorMessage(msg: "Some error occur"),
            // CircularProgressIndicator(
            // color: Colors.purple,
            // ),
           const CustomButton(),
          ],
        ),
      ),
    );
  }
}
