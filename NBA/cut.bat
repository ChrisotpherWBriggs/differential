for /F "tokens=1,2 delims=," %%A in (gamesList.csv) do (

	for /F "tokens=1 delims=," %%H in (%%A) do (

		gawk -F"," '$1=="%%H" {print $0}' avg.csv >> %%B  

	)
)