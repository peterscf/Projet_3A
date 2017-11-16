belief network "unknown"
node Pollution {
  type : discrete [ 2 ] = { "low", "high" }; 0   1
}
node Smoker {
  type : discrete [ 2 ] = { "True", "False" }; 0   1
}
node Cancer {
  type : discrete [ 2 ] = { "True", "False" };
}
node Xray {
  type : discrete [ 2 ] = { "positive", "negative" };
}
node Dyspnoea {
  type : discrete [ 2 ] = { "True", "False" };
}
probability ( Pollution ) {
   0.9, 0.1;   0   1
}
probability ( Smoker ) {
   0.3, 0.7;   0   1
}
probability ( Cancer | Pollution, Smoker ) {
  (0, 0) : 0.03, 0.97;
  (1, 0) : 0.05, 0.95;   1   0  car (high, True) vraie = 5%
  (0, 1) : 0.001, 0.999;
  (1, 1) : 0.02, 0.98;
}
probability ( Xray | Cancer ) {
  (0) : 0.9, 0.1;   1   0
  (1) : 0.2, 0.8;   
}
probability ( Dyspnoea | Cancer ) {  shortness of breath
  (0) : 0.65, 0.35;   1   0 
  (1) : 0.3, 0.7;
}
