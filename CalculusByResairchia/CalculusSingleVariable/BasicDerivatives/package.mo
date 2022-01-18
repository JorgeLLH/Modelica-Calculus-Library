within CalculusSingleVariable;

package BasicDerivatives
  extends CalculusSingleVariable.Icons.Packages;
  extends CalculusSingleVariable.Icons.derivativeIcon;

  package DifferentationRules
    extends Icons.ExamplesPackageIcon;

    model SumRule
      extends Icons.ExampleModelIcon;
      Real x;
      Real fx;
      Real gx;
      Real Dfx;
      Real Dgx;
      Real SumDifferentiableFunctions;
    equation
      x = time;
      fx = sin(x);
      gx = x ^ 2 + 1;
      Dfx = sinX(x);
      Dgx = xToPowerN(x, 2);
      SumDifferentiableFunctions = Dfx + Dgx;
      annotation(
        experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.001),
        Documentation(info = "<html><head></head><body>Two differentiable functions can be added or substracted to result in a new function that is differentiable as well:<div>d(f(x)+g(x))/dx = f'(x) + g'(x)</div></body></html>"));
    end SumRule;

    model ProductRule
      extends Icons.ExampleModelIcon;
      Real x;
      Real fx;
      Real gx;
      Real Dfx;
      Real Dgx;
      Real ProductDifferentiableFunctions;
    equation
      x = time;
      fx = sin(x);
      gx = x ^ 2 + 1;
      Dfx = sinX(x);
      Dgx = xToPowerN(x, 2);
      ProductDifferentiableFunctions = fx * Dgx + Dfx * gx;
      annotation(
        experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.001),
        Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Two differentiable functions can be multiplied resulting in a new function that is differentiable as well:</span><div style=\"font-size: 12px;\">d(f(x)*g(x))/dx = f'(x)g(x) + g'(x)f(x)</div></body></html>"));
    end ProductRule;

    model QuotientRule
      extends Icons.ExampleModelIcon;
      Real x;
      Real fx;
      Real gx;
      Real Dfx;
      Real Dgx;
      Real QuotientDifferentiableFunctions;
    equation
      x = time;
      fx = sin(x);
      gx = x ^ 2 + 1;
      Dfx = sinX(x);
      Dgx = xToPowerN(x, 2);
      QuotientDifferentiableFunctions = (Dfx * gx - fx * Dgx) / gx ^ 2;
      annotation(
        experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.001));
    end QuotientRule;

    model ChainRule
      extends Icons.ExampleModelIcon;
      Real x;
      Real fx;
      Real gx;
      Real Dgx;
      Real DerivativeCompositeFunction;
    equation
      x = time;
      fx = sin(gx);
      gx = x ^ 2 + 1;
      Dgx = xToPowerN(x, 2) + nToPowerX(1, 1);
      DerivativeCompositeFunction = sinX(gx) * Dgx;
      annotation(
        experiment(StartTime = 0, StopTime = 2, Tolerance = 1e-06, Interval = 0.001));
    end ChainRule;
  end DifferentationRules;

  function xToPowerN "inputs: (variable, exponent)"
    extends Internal.baseDerivative;
    input Real exponent = 1;
  protected
  algorithm
    functionDerivative := ((variable + infinitesimal_h) ^ exponent - variable ^ exponent) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs as inputs, respectively, a variable and its exponent.</span><div>Resultant plot of the derivative of a function such as x<sup>3</sup>:<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/derxpow3.png\" alt=\"derxpow3.png\"><div><br></div></div></body></html>"));
  end xToPowerN;

  function eToPowerX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (Modelica.Constants.e ^ (variable + infinitesimal_h) - Modelica.Constants.e ^ variable) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div><span style=\"font-size: 12px;\">Resultant plot of the derivative of a function such as e<sup>x</sup></span><span style=\"font-size: 12px;\">:</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/ePowX.png\" alt=\"ePowX.png\"><div><br></div></div></body></html>"));
  end eToPowerX;

  function nToPowerX "inputs: (variable, n)"
    extends Internal.baseDerivative;
    input Real n = 1;
  protected
  algorithm
    functionDerivative := (n ^ (variable + infinitesimal_h) - n ^ variable) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs as inputs, respectively, a variable as exponent and n as base.</span><div><span style=\"font-size: 12px;\">Resultant plot of the derivative of a function such as 2</span><font size=\"2\"><sup>x</sup></font><span style=\"font-size: 12px;\">:</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/nToPowerX.png\" alt=\"nToPowerX.png\"><div><br></div></div></body></html>"));
  end nToPowerX;

  function lnX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (log(variable + infinitesimal_h) - log(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body>Function needs only one input which needs to be &gt; 0.<div>Resultant plot of the derivative of a function such as ln(x)<font size=\"2\">:</font><br><div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/lnX.png\" alt=\"lnX.png\"></div></div></body></html>"));
  end lnX;

  function logX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (log10(variable + infinitesimal_h) - log10(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input which needs to be &gt; 0.</span><div>Resultant plot of the derivative of a function such as log<sub>10</sub>(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/log10X.png\" alt=\"log10X.png\"><div><br></div></div></body></html>"));
  end logX;

  function sinX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (sin(variable + infinitesimal_h) - sin(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as sin(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/sinX.png\" alt=\"sinX.png\"><div><br></div></div></body></html>"));
  end sinX;

  function cosX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (cos(variable + infinitesimal_h) - cos(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as cos(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/cosX.png\" alt=\"cosX.png\"><div><br></div></div></body></html>"));
  end cosX;

  function tanX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (tan(variable + infinitesimal_h) - tan(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as tan(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/tanX.png\" alt=\"tanX.png\"><div><br></div></div></body></html>"));
  end tanX;

  function arcsinX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (asin(variable + infinitesimal_h) - asin(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input in the range (-1 , 1).</span><div>Resultant plot of the derivative of a function such as arcsin(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arcsinX.png\" alt=\"arcsinX.png\"><div><br></div></div></body></html>"));
  end arcsinX;

  function arccosX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (acos(variable + infinitesimal_h) - acos(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input in the range (-1 , 1).</span><div>Resultant plot of the derivative of a function such as arccos(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arccosX.png\" alt=\"arccosX.png\"><div><br></div></div></body></html>"));
  end arccosX;

  function arctanX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (atan(variable + infinitesimal_h) - atan(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as arctan(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arctanX.png\" alt=\"arctanX.png\"><div><br></div></div></body></html>"));
  end arctanX;

  function cscX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (1 / sin(variable + infinitesimal_h) - 1 / sin(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as csc(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/cscX.png\" alt=\"cscX.png\"><div><br></div></div></body></html>"));
  end cscX;

  function secX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (1 / cos(variable + infinitesimal_h) - 1 / cos(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as sec(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/secX.png\" alt=\"secX.png\"><div><br></div></div></body></html>"));
  end secX;

  function cotX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (1 / tan(variable + infinitesimal_h) - 1 / tan(variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as cot(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/cotX.png\" alt=\"cotX.png\"><div><br></div></div></body></html>"));
  end cotX;

  function arccscX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (asin(1 / (variable + infinitesimal_h)) - asin(1 / variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input which needs to be in the interval (-inf , -1) or (1 , inf).</span><div>Resultant plot of the derivative of a function such as arccsc(x)<font size=\"2\">:</font><br><!--EndFragment--><div><span style=\"font-size: 12px;\">&nbsp;</span>

<!--EndFragment--><div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arccscX.png\" alt=\"arccscX.png\"><div><br></div></div></div></div></body></html>"));
  end arccscX;

  function arcsecX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (acos(1 / (variable + infinitesimal_h)) - acos(1 / variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input which needs to be in the interval (-inf , -1) or (1 , inf).</span><div>Resultant plot of the derivative of a function such as arcsec(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arcsecX.png\" alt=\"arcsecX.png\"><div><br></div></div></body></html>"));
  end arcsecX;

  function arccotX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (atan(1 / (variable + infinitesimal_h)) - atan(1 / variable)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as arccot(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arccotX.png\" alt=\"arccotX.png\"><div><br></div></div></body></html>"));
  end arccotX;

  function sinhX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (0.5 * (Modelica.Constants.e ^ (variable + infinitesimal_h) - Modelica.Constants.e ^ ((-variable) - infinitesimal_h)) - 0.5 * (Modelica.Constants.e ^ variable - Modelica.Constants.e ^ (-variable))) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as sinh(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/sinhX.png\" alt=\"sinhX.png\"><div><br></div></div></body></html>"));
  end sinhX;

  function coshX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (0.5 * (Modelica.Constants.e ^ (variable + infinitesimal_h) + Modelica.Constants.e ^ ((-variable) - infinitesimal_h)) - 0.5 * (Modelica.Constants.e ^ variable + Modelica.Constants.e ^ (-variable))) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as cosh(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/coshX.png\" alt=\"coshX.png\"><div><br></div></div></body></html>"));
  end coshX;

  function tanhX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := ((Modelica.Constants.e ^ (2 * variable + 2 * infinitesimal_h) - 1) / (Modelica.Constants.e ^ (2 * variable + 2 * infinitesimal_h) + 1) - (Modelica.Constants.e ^ (2 * variable) - 1) / (Modelica.Constants.e ^ (2 * variable) + 1)) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body>
<pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'MS Shell Dlg 2'; font-size: 12px; white-space: normal;\">Function needs only one input.</span><!--EndFragment--></pre><pre style=\"margin-top: 0px; margin-bottom: 0px;\"><span style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\">Resultant plot of the derivative of a function such as tanh(x)</span><font size=\"2\" style=\"font-family: 'MS Shell Dlg 2'; white-space: normal;\">:</font></pre><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/tanhX.png\" alt=\"tanhX.png\"><div><br></div></body></html>"));
  end tanhX;

  function arcsinhX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (log(variable + infinitesimal_h + sqrt(1 + (variable + infinitesimal_h) ^ 2)) - log(variable + sqrt(1 + variable ^ 2))) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input.</span><div>Resultant plot of the derivative of a function such as arcsinh(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arcsinhX.png\" alt=\"arcsinhX.png\"><div><br></div></div></body></html>"));
  end arcsinhX;

  function arccoshX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (log(variable + infinitesimal_h + sqrt(1 + variable + infinitesimal_h) * sqrt((-1) + variable + infinitesimal_h)) - log(variable + sqrt(1 + variable) * sqrt((-1) + variable))) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input which needs to be&nbsp;</span>&gt;=1.<div>Resultant plot of the derivative of a function such as arccosh(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arccoshX.png\" alt=\"arccoshX.png\"><div><br></div></div></body></html>"));
  end arccoshX;

  function arctanhX "inputs: (variable)"
    extends Internal.baseDerivative;
  protected
  algorithm
    functionDerivative := (0.5 * log((1 + variable + infinitesimal_h) / (1 - (variable + infinitesimal_h))) - 0.5 * log((1 + variable) / (1 - variable))) / infinitesimal_h;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Function needs only one input in the range (-1 , 1).</span><div>Resultant plot of the derivative of a function such as arctanh(x)<font size=\"2\">:</font><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/DerivativePics/arctanhX.png\" alt=\"arctanhX.png\"><div><br></div><div>p</div></div></body></html>"));
  end arctanhX;

  package Internal
    extends Icons.InternalUse;

    partial function baseDerivative
      extends Icons.derivativeIcon;
      input Real variable = 1;
      output Real functionDerivative;
    protected
      parameter Real infinitesimal_h = 0.0000000001;
    end baseDerivative;
  end Internal;
end BasicDerivatives;
