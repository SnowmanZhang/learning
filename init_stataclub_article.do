gen content=""

set trace on
forvalue i=1/`=_N'{
		replace content=fileread(http[`i']) in `i'

}
set trace off
