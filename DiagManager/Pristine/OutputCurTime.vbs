option explicit 

dim m
dim d
dim h
dim n
dim e

m= Month(Date)
d= Day(Date)
h= Hour(Time)
n= Minute(Time)
e= Second(Time)

if len(m)<2 then m="0" & m

if len(d)<2 then d="0"& d

if len(h)<2 then h="0"& h

if len(n)<2 then n="0"& n

if len(e)<2 then e="0"& e

dim s
s="Current time: " & Year(Date) & "-" & m & "-" & d & " " & h & ":" & n & ":" & e

dim p

p=""
dim i
For i = 0 to WScript.Arguments.Count - 1
   p = p & WScript.Arguments(i) & " "
Next


if (WScript.Arguments.Count)>0 then s=s & " - " & p


WScript.Echo s