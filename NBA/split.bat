if exist .\games rmdir /s /q .\games
if exist .\opp rmdir /s /q .\opp
if exist .\stats rmdir /s /q .\stats

mkdir .\games
mkdir .\opp
mkdir .\stats


for /F "tokens=1,2 delims=," %%A in (list.csv) do (
tail -10 %%A| gawk -F"," '{print $7}' >> %%B

)

for /F "tokens=1,2,3 delims=," %%A in (list.csv) do (
	gawk -F"," '{print $7","$10","$11}' %%A >> %%C

)