cd Content


function latex_build {
    pdflatex -interaction=nonstopmode '\newcommand{\studentCompleted}{'"$5 $6"'}\newcommand{\student}{'"$1 $2"'}\newcommand{\group}{'"$3"'}\input{main}'
    biber main 
    pdflatex -interaction=nonstopmode '\newcommand{\studentCompleted}{'"$5 $6"'}\newcommand{\student}{'"$1 $2"'}\newcommand{\group}{'"$3"'}\input{main}'
    pdflatex -interaction=nonstopmode '\newcommand{\studentCompleted}{'"$5 $6"'}\newcommand{\student}{'"$1 $2"'}\newcommand{\group}{'"$3"'}\input{main}'
    cp main.pdf /$4.pdf
}

declare -a cases
names=(
    "Макогон А.А."
)
groups=(
    "206"
)
files=(
    "Makogon"
)
completed=(
    "Выполнил студент"
)


for ((i = 0; i < ${#names[@]}; i+= 1)) do
    latex_build ${names[$i]} ${groups[$i]} ${files[$i]} ${completed[$i]} 
done 

# ls /github/workspace
