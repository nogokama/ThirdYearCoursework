cd Content
mkdir /pdfoutput

function latex_build {
    pdflatex -interaction=nonstopmode '\input{'$1'}'
    biber $1 
    pdflatex -interaction=nonstopmode '\input{'$1'}'
    pdflatex -interaction=nonstopmode '\input{'$1'}'
    cp $1.pdf /pdfoutput/$1.pdf
}

names=(
    "report"
    "presentation"
)

for ((i = 0; i < ${#names[@]}; i+= 1)) do
    latex_build ${names[$i]}
done 

# ls /github/workspace
