set S := {1..6};

param p{S};
param d{S};
param w{S};

var x{S} binary;

maximize ONTIME: sum{j in S} w[j] * x[j];
    
subject to C1{j in S}:
    sum{i in {1..j}} p[i] * x[i] <= d[j];
	
	
