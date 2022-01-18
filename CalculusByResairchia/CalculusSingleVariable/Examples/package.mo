within CalculusSingleVariable;
package Examples
extends Icons.ExamplesPackageIcon;
  model UseExample
    extends Icons.ExampleModelIcon;
    Real x;
    Real builtin;
    Real functionDerivative;
    Real functionAntiderivative;
  equation
    x = time;
    builtin = der(sin(x));
    functionDerivative = BasicDerivatives.sinX(x);
    functionAntiderivative = BasicIntegrals.sinX(x);
    annotation(
      experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.001));
  end UseExample;

  model InputExample
    extends Icons.ExampleModelIcon;
    parameter Real x = Modelica.Constants.pi;
    Real builtin;
    Real functionDerivative;
    Real functionAntiderivative;
  equation
    builtin = der(sin(Modelica.Constants.pi));
    functionDerivative = BasicDerivatives.sinX(x);
    functionAntiderivative = BasicIntegrals.sinX(x);
    annotation(
      experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.001));
  end InputExample;
end Examples;
