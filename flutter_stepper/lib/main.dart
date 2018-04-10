import 'package:flutter/material.dart';

void main() {
  runApp(new StepperExampleApp());
}

class StepperExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Stepper Example",
      home: new StepperHome(),
    );
  }
}

class StepperHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new StepperHomeState();
  }
}

class StepperHomeState extends State<StepperHome> {
  int _currentStep = 0;
  List<Step> _steps = [
    new Step(
        title: new Text("Step 1"),
        content: new Text("Flutter"),
        state: StepState.indexed,
        isActive: true),
    new Step(
        title: new Text("Step 2"),
        content: new Text("Is"),
        state: StepState.editing,
        isActive: true),
    new Step(
        title: new Text("Step 3"),
        content: new Text("Awesome"),
        state: StepState.complete,
        isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
      child: Column(
        children: <Widget>[
          new Stepper(
            steps: this._steps,
            type: StepperType.vertical,
            currentStep: this._currentStep,
            onStepCancel: () {
              if (this._currentStep > 0) {
                this._currentStep--;
              }
              this.setState(() {
                _currentStep = _currentStep;
              });
            },
            onStepContinue: () {
              if (this._currentStep < this._steps.length - 1) {
                this._currentStep++;
              }
              this.setState(() {
                _currentStep = _currentStep;
              });
            },
            onStepTapped: (step) {
              this.setState(() {
                _currentStep = step;
              });
            },
          ),
          new RaisedButton(child: new Text("Reset"), onPressed: () {
            this.setState(() {
              _currentStep = 0;
            });
          })
        ],
      ),
    ));
  }
}
