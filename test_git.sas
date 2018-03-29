/* This is a test program. */
/* Testing Git.            */


PROC SORT DATA=SASHELP.BASEBALL
	OUT=Baseball(LABEL="Sorted SASHELP.BASEBALL")
	;
	BY Team;

RUN;

proc means data=baseball;
output out=avg_salary;
var salary;
by team;
run;



proc print data=avg_salary;
var salary;
run;
