%{
int a_cnt=0;
int b_cnt=0;
int a_seq=0;
int b_seq=0;
%}
A ["a"]
B ["b"]
%%
[ ]+ {;}
{A} {a_seq=1;if(b_seq==0){a_cnt++;}else{return -1;}}
{B} {b_seq=1;if(a_seq==1){b_cnt++;}else{return -1;}}
["\n"] {return 0;}

%%
int yywrap()
{
return 1;
}
int main()
{
printf("Enter the sequence to be checked : ");
yylex();
if((a_cnt==b_cnt)&&(a_seq==b_seq))
{
printf(" anbn Recognized\n");
}
}
