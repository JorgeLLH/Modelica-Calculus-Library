within CalculusSingleVariable;

package BasicIntegrals
extends CalculusSingleVariable.Icons.Packages;
extends CalculusSingleVariable.Icons.integralIcon;
  //  extends Icons.integralIcon;

  function oneOverX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := log(abs(variable));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function 1/x. Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Input variable value must be &gt;0.<div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/oneOverX.png\" alt=\"oneOverX.png\"><div><br></div></body></html>"));
  end oneOverX;

  function eToPowerXn "inputs: (variable, constant of integration,N)"
    extends Internal.baseIntegral;
    input Real n = 1;
  algorithm
    function_aux := 1 / n * Modelica.Constants.e ^ (n * variable);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function e<font size=\"2\"><sup>nx</sup></font>. Function inputs are the variable value, the constant of integration and n. If the function is called with only one input, the constant of integration is set to 0 and n to 1.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/eToPowerXn.png\" alt=\"eToPowerXn.png\"><div><br></div></body></html>"));
  end eToPowerXn;

  function XToPowerN "inputs: (variable, constant of integration,n)"
    extends Internal.baseIntegral;
    input Real n = 1;
  algorithm
    function_aux := variable ^ (n + 1) / (n + 1);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function x<sup>n</sup>. Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0 and n to 1.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/XToPowerN-X-0-3.png\" alt=\"XToPowerN-X-0-3.png\"><div><br></div></body></html>"));
  end XToPowerN;

  function nToPowerX "inputs: (variable, constant of integration,n)"
    extends Internal.baseIntegral;
    input Real n = 1;
  algorithm
    function_aux := 1 / log(n) * n ^ variable;
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function n<sup>x</sup>. Function inputs are the variable value, the constant of integration and n. If the function is called with only one input, the constant of integration is set to 0 and n to 1.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/nToPowerX-x-0-3.png\" alt=\"nToPowerX-x-0-3.png\"><div><br></div></body></html>"));
  end nToPowerX;

  function lnX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * log(variable) - variable;
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function ln(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Input variable value must be &gt;0.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/lnX.png\" alt=\"lnX.png\"><div><br></div></body></html>"));
  end lnX;

  function logX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * log10(variable) - variable / log(10);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function log<sub>10</sub>(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Input variable value must be &gt;0.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/logX.png\" alt=\"logX.png\"><div><br></div></body></html>"));
  end logX;

  function sinX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := -cos(variable);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function sin(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/sinX.png\" alt=\"sinX.png\"><div><br></div></body></html>"));
  end sinX;

  function cosX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := sin(variable);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function cos(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/cosX.png\" alt=\"cosX.png\"><div><br></div></body></html>"));
  end cosX;

  function tanX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := -log(abs(cos(variable)));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function tan(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/tanX.png\" alt=\"tanX.png\"><div><br></div></body></html>"));
  end tanX;

  function cotX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := log(abs(sin(variable)));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function cot(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Input variable value must be &gt;0.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/cotX.png\" alt=\"cotX.png\"><div><br></div></body></html>"));
  end cotX;

  function secX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := log(abs(1 / cos(variable) + tan(variable)));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function sec(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/secX.png\" alt=\"secX.png\"><div><br></div></body></html>"));
  end secX;

  function cscX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := log(abs(1 / sin(variable) - 1 / tan(variable)));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body>Antiderivative of the function sec(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Input variable value must be not 0.<br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/cscX.png\" alt=\"cscX.png\"><div><br></div></body></html>"));
  end cscX;

  function sinSquaredX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := 0.5 * (variable - sin(variable) * cos(variable));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function sin<sup>2</sup>(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/sinSquaredX.png\" alt=\"sinSquaredX.png\"><div><br></div></body></html>"));
  end sinSquaredX;

  function cosSquaredX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := 0.5 * (variable + sin(variable) * cos(variable));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function cos</span><sup>2</sup><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/cosSquaredX.png\" alt=\"cosSquaredX.png\"><div><br></div></body></html>"));
  end cosSquaredX;

  function tanSquaredX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := (-variable) + tan(variable);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function tan</span><sup>2</sup><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/tanSquaredX.png\" alt=\"tanSquaredX.png\"><div><br></div></body></html>"));
  end tanSquaredX;

  function secSquaredX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := tan(variable);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function sec</span><sup>2</sup><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/secSquaredX.png\" alt=\"secSquaredX.png\"><div><br></div></body></html>"));
  end secSquaredX;

  function cscSquaredX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := -1 / tan(variable);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function csc</span><sup>2</sup><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/cscSquaredX.png\" alt=\"cscSquaredX.png\"><div><br></div></body></html>"));
  end cscSquaredX;

  function cotSquaredX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := (-variable) - 1 / tan(variable);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function cot</span><sup>2</sup><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/IntegralPics/cotSquaredX.png\" alt=\"cotSquaredX.png\"><div><br></div></body></html>"));
  end cotSquaredX;

  function arcsinX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * asin(variable) + sqrt(1 - variable ^ 2);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arcsin</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.&nbsp;</span><span style=\"font-size: 12px;\">Defined in the interval (-1 , 1) for the input x.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arcsinX.png\" alt=\"arcsinX.png\"><div><br></div></body></html>"));
  end arcsinX;

  function arccosX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * acos(variable) - sqrt(1 - variable ^ 2);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arccos</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Defined in the interval (-1 , 1) for the input x.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arccosX.png\" alt=\"arccosX.png\"><div><br></div></body></html>"));
  end arccosX;

  function arctanX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * atan(variable) - log(sqrt(1 + variable ^ 2));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arctan</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arctanX.png\" alt=\"arctanX.png\"><div><br></div></body></html>"));
  end arctanX;

  function arccotX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * atan(1 / variable) + log(sqrt(1 + variable ^ 2));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arccot</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arccotX.png\" alt=\"arccotX.png\"><div><br></div></body></html>"));
  end arccotX;

  function arcsecX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * atan(1 / variable) - log(abs(variable + sqrt((-1) + variable ^ 2)));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arcsec</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Undefined in the interval (-1 , 1) for the input x.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arcsecX.png\" alt=\"arcsecX.png\"><div><br></div></body></html>"));
  end arcsecX;

  function arccscX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * asin(1 / variable) + log(abs(variable + sqrt((-1) + variable ^ 2)));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arccsc</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Undefined in the interval (-1 , 1) for the input x.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arccscX.png\" alt=\"arccscX.png\"><div><br></div></body></html>"));
  end arccscX;

  function sinhX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := 0.5 * (Modelica.Constants.e ^ variable + Modelica.Constants.e ^ (-variable));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function sinh</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/sinhX.png\" alt=\"sinhX.png\"><div><br></div></body></html>"));
  end sinhX;

  function coshX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := 0.5 * (Modelica.Constants.e ^ variable - Modelica.Constants.e ^ (-variable));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function cosh</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/coshX.png\" alt=\"coshX.png\"><div><br></div></body></html>"));
  end coshX;

  function tanhX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := log(0.5 * (Modelica.Constants.e ^ variable + Modelica.Constants.e ^ (-variable)));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function tanh</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Undefined in the interval (-1 , 1) for the input x.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/tanhX.png\" alt=\"tanhX.png\"><div><br></div></body></html>"));
  end tanhX;

  function arcsinhX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * log(variable + sqrt(1 + variable ^ 2)) - sqrt(1 + variable ^ 2);
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arcsinh</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arcsinhX.png\" alt=\"arcsinhX.png\"><div><br></div></body></html>"));
  end arcsinhX;

  function arccoshX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * log(variable + sqrt(1 + variable) * sqrt((-1) + variable)) - (1 + variable) * sqrt((variable - 1) / (variable + 1));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arccosh</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Input x must be &gt;=1.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arccoshX.png\" alt=\"arccoshX.png\"><div><br></div></body></html>"));
  end arccoshX;

  function arctanhX "inputs: (variable, constant of integration)"
    extends Internal.baseIntegral;
  algorithm
    function_aux := variable * (0.5 * (log(1 + variable) - log(1 - variable))) + 0.5 * log(abs(variable ^ 2 - 1));
    functionIntegral := function_aux + C;
    annotation(
      Documentation(info = "<html><head></head><body><span style=\"font-size: 12px;\">Antiderivative of the function arccsc</span><span style=\"font-size: 12px;\">(x). Function inputs are the variable value and the constant of integration. If the function is called with only one input, the constant of integration is set to 0. Undefined in the interval (-1 , 1) for the input x.</span><br><div><br></div><img src=\"modelica://CalculusSingleVariable/Resources/Images/IntegralPics/arctanhX.png\" alt=\"arctanhX.png\"><div><br></div></body></html>"));
  end arctanhX;

  package Internal
    extends Icons.InternalUse;

    partial function baseIntegral
      extends Icons.integralIcon;
      input Real variable = 1;
      input Real C = 0;
      output Real functionIntegral;
    protected
      Real function_aux;
    end baseIntegral;
  end Internal;
end BasicIntegrals;
