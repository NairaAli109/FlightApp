import 'package:fligth_app/presentation/core/widgets/padding.dart';
import 'package:flutter/material.dart';

class FlightTourStepper extends StatefulWidget {
  const FlightTourStepper({super.key});

  @override
  State<FlightTourStepper> createState() => _FlightTourStepperState();
}

class _FlightTourStepperState extends State<FlightTourStepper> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return PaddingStart(
        value: 10,
        child: Stepper(
            controlsBuilder: (context, details) {
              return const Row(
                children: [],
              );
            },
            onStepTapped: (int index) {
              setState(() {
                currentStep = index;
              });
            },
            currentStep: currentStep,
            steps: [
              Step(
                title: const Text("Kronstadt"),
                content: const Text(""),
                isActive: currentStep == 0,
              ),
              Step(
                isActive: currentStep == 1,
                title: const Text("Gulf of Finland"),
                content: const Text(""),
              ),
              Step(
                isActive: currentStep == 2,
                title: const Text("Forts"),
                content: const Text(""),
              ),
              Step(
                isActive: currentStep == 3,
                title: const Text("Dam"),
                content: const Text(""),
              ),
            ]));
  }
}
