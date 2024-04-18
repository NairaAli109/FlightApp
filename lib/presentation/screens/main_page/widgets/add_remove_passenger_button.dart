import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class AddRemovePassengersButton extends StatefulWidget {
  const AddRemovePassengersButton({super.key});

  @override
  State<AddRemovePassengersButton> createState() => _AddRemovePassengersButtonState();
}

class _AddRemovePassengersButtonState extends State<AddRemovePassengersButton> {

  int passengerCount = 1 ;

  void addPassengers(){
    setState(() {
      passengerCount += 1;
    });
  }


  void removePassengers(){
    setState(() {
      if(passengerCount > 1){
        passengerCount -= 1;
      }
      else{
        passengerCount = 1;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 28,
          width: 28,
          decoration: BoxDecoration(
              color:AppColors.greyColor,
              borderRadius: BorderRadius.circular(5)
          ),
          child: InkWell(
            onTap: (){
              removePassengers();
            },
            child: const Icon(Icons.remove),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
         Text(
          "$passengerCount",
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 28,
          width: 28,
          decoration: BoxDecoration(
              color:AppColors.greyColor,
              borderRadius: BorderRadius.circular(5)
          ),
          child: InkWell(
            onTap: (){
              addPassengers();
            },
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}

