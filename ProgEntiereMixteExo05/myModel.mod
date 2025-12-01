set tasks := {1..6};
set slots := {1..3};
set machines := {1..3};

param p{tasks};
param v{machines};

var x{tasks, slots, machines} binary;

var opt;

minimize OPT: opt;

subject to C1{i in slots, m in machines}:
    sum{j in tasks} x[j, i, m] <= 1;
    
subject to C2{j in tasks}:
    sum{m in machines, i in slots} x[j, i, m] = 1;
    
subject to C3{m in machines}:
	opt >= sum{j in tasks, i in slots} ( p[j] / v[m] ) * x[j, i, m];
	
	
	