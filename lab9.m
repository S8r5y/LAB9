
  % Define the function
  function y = f(x)
  y = (cos(x) - x) / (1 + x);
  end
  
  % Set the limits of integration
  a = 0;
  b = 1;
  
  % Set the number of steps
  n = 6;
  
  % Calculate the width of each step
  h = (b - a) / n;
  
  % Initialize the sum for the trapezoidal rule
  sum = 0;
  
  % Calculate the first and last term (f(a) and f(b))
  sum = sum + f(a) + f(b);
  
  % Calculate the sum of the function values at interior points
  for i = 1:n-1
  x = a + i*h;
  sum = sum + 2*f(x);
  end
  
  % Apply the trapezoidal rule formula
  integral = h/2 * sum;
  
  % Print the result
  fprintf('The integral using the trapezoidal rule is: %f\n',integral);
  
  % Define the function
  function y = g(x)
  y = (cos(x) - x) / (1 + x);
  end
  
  % Set the limits of integration
  a = 0;
  b = 1;
  
  % Set the number of steps
  n = 2;
  
  % Calculate the width of each step
  h = (b - a) / n;
  
  % Initialize the sum for the trapezoidal rule

  sum = 0;
  
  % Calculate the first and last term (f(a) and f(b))
  sum = sum + f(a) + f(b);
  
  % Calculate the sum of the function values at interior points
  for i = 1:n-1
  x = a + i * h;
  sum = sum + 2 * f(x);
  end
  
  % Apply the trapezoidal rule formula
  integral = h / 2 * sum;
  
  % Print the result
  fprintf('The integral using the trapezoidal rule with n=2 is: %f\n', integral);
  
  % Define the function
  function y = w(x)
  y = (cos(x) - x) / (1 + x);
  end 
  % Set the limits of integration
  a = 0;
  b = 1;
  
  % Set the number of intervals (Simpson's 1/3 rule needs an even number, here n=2 
for one segment)
  n = 2;
  
  % Calculate the width of each interval
  h = (b - a) / n;
  
  % Initialize the variables for the sum using Simpson's 1/3 rule
  fa = f(a);
  fb = f(b);
  fm = f((a + b) / 2); % Midpoint evaluation
  
  % Apply Simpson's 1/3 rule formula
  integral = (h / 3) * (fa + 4*fm + fb);
  
  % Print the result
  fprintf('The integral using Simpson''s 1/3 rule is: %f\n', integral);
  
  % Define the function
  function y = s(x)
  y = (cos(x) - x) / (1 + x);
  end
 
  % Set the limits of integration
  a = 0;
 b = 1;
 
 % Set the number of intervals
 n = 3; % Simpson's 3/8 rule uses 3 intervals
 
 % Calculate the width of each interval
 h = (b - a) / n;
 
 % Calculate the values at the four points needed for Simpson's 3/8 rule
 f0 = f(a);
 f1 = f(a + h);
 f2 = f(a + 2*h);
 f3 = f(b);
 
 % Apply Simpson's 3/8 rule formula
 integral = (3 * h / 8) * (f0 + 3*f1 + 3*f2 + f3);
 
 % Print the result
 fprintf('The integral using Simpson''s 3/8 rule is: %f\n', integral);