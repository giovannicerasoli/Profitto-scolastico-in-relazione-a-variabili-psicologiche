data dataset;
 set "C:\Users\giova\Giogiò\Universita\Modelli Lineari\psycol_vs_acad.sas7bdat"; 
 run;
proc means data= dataset;
 var read write science locus_of_control motivation self_concept; run;
proc freq data = dataset;
tables prog;
run;
proc sort data=dataset;
by prog;
run;
proc boxplot data=dataset;
plot read*prog/boxstyle = schematicid;
run;
proc boxplot data=dataset;
plot science*prog/boxstyle = schematicid;
run;
proc boxplot data=dataset;
plot write*prog/boxstyle = schematicid;
run;
proc boxplot data=dataset;
plot SELF_CONCEPT*prog/boxstyle = schematicid;
run;
proc boxplot data=dataset;
plot locus_of_control*prog/boxstyle = schematicid;
run;
proc boxplot data=dataset;
plot motivation*prog/boxstyle = schematicid;
run;

proc corr data=dataset pearson nosimple noprob plots=none;
var self_concept locus_of_control motivation write read science;
run;

/*SCATTERPLOT PER VARIABILI ACCADEMICHE*/
proc gplot data=dataset;
 plot read*science=prog;
run;
proc gplot data=dataset;
 plot write*science=prog;
run;
proc gplot data=dataset;
 plot read*write=prog;
run;

/*SCATTERPLOT PER VARIABILI PSICOLOGICHE*/
proc gplot data=dataset;
 plot motivation*locus_of_control=prog;
run;
proc gplot data=dataset;
 plot motivation*self_concept=prog;
run;
proc gplot data=dataset;
 plot locus_of_control*self_concept=prog;
run;

/*SCATTERPLOT VARIABILI PSICOLOGICHE PER VARIABILI ACCADEMICHE*/
proc gplot data=dataset;
 plot motivation*science=prog;
run;
proc gplot data=dataset;
 plot motivation*write=prog;
run;
proc gplot data=dataset;
 plot motivation*read=prog;
run;
proc gplot data=dataset;
 plot self_concept*science=prog;
run;
proc gplot data=dataset;
 plot self_concept*write=prog;
run;
proc gplot data=dataset;
 plot self_concept*read=prog;
run;
proc gplot data=dataset;
 plot locus_of_control*science=prog;
run;
proc gplot data=dataset;
 plot locus_of_control*write=prog;
run;
proc gplot data=dataset;
 plot locus_of_control*read=prog;
run;



/******************************
Analisi Covarianza
******************************/
proc glm data = dataset;
class prog;
model self_concept locus_of_control motivation = prog;
lsmeans prog / pdiff;
run;

proc glm data = dataset;
class prog;
model self_concept locus_of_control motivation = prog read science write / solution;
manova h=_all_;
run;

proc glm data = dataset;
class prog;
model self_concept locus_of_control motivation = prog read;
lsmeans prog / pdiff;
run;

proc glm data = dataset;
class prog;
model self_concept locus_of_control motivation = prog write;
lsmeans prog / pdiff;
run;

