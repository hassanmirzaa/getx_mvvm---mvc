
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:getx_mvvmmvc/res/colors/app_colors.dart';

class GenerlExceptionWidget extends StatefulWidget {
   final VoidCallback onPres;
  const GenerlExceptionWidget({super.key, required this.onPres});

  @override
  State<GenerlExceptionWidget> createState() => _GenerlExceptionWidgetState();
}

class _GenerlExceptionWidgetState extends State<GenerlExceptionWidget> {
 
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Icon(Icons.cloud_off,color: AppColors.Purple,size: 50,),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(child: Text('general_exception'.tr,textAlign: TextAlign.center,)),
        ),
        SizedBox(height: 30,),
        InkWell(
          onTap: widget.onPres,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.Purple,
              borderRadius: BorderRadius.circular(50)
            ),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text('Retry',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),),
            ),
          ),
        )
      ],
    ),
    );
  }
}