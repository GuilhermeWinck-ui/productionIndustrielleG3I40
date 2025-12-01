param m;

set tasks := {1..7};
set slots := {1..m};

param p{tasks};

var x{tasks, slots} binary;

minimize LOAD: sum{i in tasks, j in slots} p[i] * x[i, j];

subject to C1{i in tasks}:
    sum{j in slots} x[i, j] <= 1;
    
subject to C2{j in slots}:
    sum{i in tasks} x[i, j] = 1;
    
    
    
    