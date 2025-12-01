set S := {1..5};

param p{S};
param d{S};

var x{S, S} binary;
var t{S} >= 0;

minimize TARDINESS: sum{k in S} t[k];

subject to C1{i in S}:
    sum{k in S} x[i, k] == 1;
    
subject to C2{k in S}:
    sum{i in S} x[i, k] == 1;
    
subject to C3{k in S}:
    sum{i in S} p[i] * sum{u in {1..k}} x[i,u] - sum{i in S} d[i] * x[i,k] <= t[k];
    
    
	