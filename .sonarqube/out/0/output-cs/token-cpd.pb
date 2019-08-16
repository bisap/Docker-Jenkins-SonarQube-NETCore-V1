¨
SC:\source\Sonar\Docker-Jenkins-SonarQube-NETCore-V1\calculation-console\Addition.cs
	namespace 	
calculation_console
 
{ 
public 

class 
Addition 
: 
ICalculation (
{ 
private 
readonly 
decimal  
x! "
;" #
private 
readonly 
decimal  
y! "
;" #
public

 
Addition

 
(

 
decimal

 
x

  !
,

! "
decimal

# *
y

+ ,
)

, -
{ 	
this 
. 
x 
= 
x 
; 
this 
. 
y 
= 
y 
; 
} 	
public 
decimal 
	Calculate  
(  !
)! "
{ 	
return 
x 
+ 
y 
; 
} 	
} 
} ¨
SC:\source\Sonar\Docker-Jenkins-SonarQube-NETCore-V1\calculation-console\Division.cs
	namespace 	
calculation_console
 
{ 
public 

class 
Division 
: 
ICalculation '
{ 
private 
readonly 
decimal  
x! "
;" #
private 
readonly 
decimal  
y! "
;" #
public 
Division 
( 
decimal 
x  !
,! "
decimal# *
y+ ,
), -
{		 	
this

 
.

 
x

 
=

 
x

 
;

 
this 
. 
y 
= 
y 
; 
} 	
public 
decimal 
	Calculate  
(  !
)! "
{ 	
return 
x 
/ 
y 
; 
} 	
} 
} å
WC:\source\Sonar\Docker-Jenkins-SonarQube-NETCore-V1\calculation-console\ICalculation.cs
	namespace 	
calculation_console
 
{ 
public 

	interface 
ICalculation !
{ 
decimal 
	Calculate 
( 
) 
; 
} 
} º
YC:\source\Sonar\Docker-Jenkins-SonarQube-NETCore-V1\calculation-console\Multiplication.cs
	namespace 	
calculation_console
 
{ 
public 

class 
Multiplication 
:  !
ICalculation" .
{ 
private 
readonly 
decimal  
x! "
;" #
private 
readonly 
decimal  
y! "
;" #
public 
Multiplication 
( 
decimal %
x& '
,' (
decimal) 0
y1 2
)2 3
{		 	
this

 
.

 
x

 
=

 
x

 
;

 
this 
. 
y 
= 
y 
; 
} 	
public 
decimal 
	Calculate  
(  !
)! "
{ 	
return 
x 
* 
y 
; 
} 	
} 
} ³
RC:\source\Sonar\Docker-Jenkins-SonarQube-NETCore-V1\calculation-console\Program.cs
	namespace 	
calculation_console
 
{ 
class 	
Program
 
{ 
	protected 
static 
void 
Main !
(! "
string" (
[( )
]) *
args+ /
)/ 0
{ 	
Console		 
.		 
	WriteLine		 
(		 
$str		 ,
)		, -
;		- .
}

 	
} 
} ±
VC:\source\Sonar\Docker-Jenkins-SonarQube-NETCore-V1\calculation-console\Subtraction.cs
	namespace 	
calculation_console
 
{ 
public 

class 
Subtraction 
: 
ICalculation +
{ 
private 
readonly 
decimal  
x! "
;" #
private 
readonly 
decimal  
y! "
;" #
public 
Subtraction 
( 
decimal "
x# $
,$ %
decimal& -
y. /
)/ 0
{ 	
this 
. 
x 
= 
x 
; 
this 
. 
y 
= 
y 
; 
} 	
public 
decimal 
	Calculate  
(  !
)! "
{ 	
return 
x 
- 
y 
; 
} 	
} 
} 