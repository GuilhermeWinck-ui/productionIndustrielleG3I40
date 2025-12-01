set produits := {1..2};
set matiereP := {1..3};

param profit{produits};
param dispo{matiereP};
param utilisation{matiereP, produits};

var x{produits} >= 0 integer;

maximize profit_total: sum{p in produits} profit[p] * x[p];

subject to contrainte{m in matiereP}:
    sum{p in produits} utilisation[m,p] * x[p] <= dispo[m];
    
    
    