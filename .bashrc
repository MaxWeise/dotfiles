# Update terminal window when resized
shopt -q -s checkwinsize
shopt -s extglob; set -H

# Aliases
alias la='ls -a'
alias cls='clear'
alias csl='clear'
alias cd..='cd ..'
alias python='winpty py.exe'    # Start python interpreter
alias py='winpty py.exe'        # Start python interpreter
alias pytest='winpty py.exe -m pytest'        # Start python pytest

# Commands to streamline the workflow with university related projects
alias FH_INIT='cp C:/Users/fenci/Documents/Latex/templates/FH_abgabe.tex . && mv FH_abgabe.tex 767028_weise_max.tex && mkdir Aufgaben && mkdir Abgaben && mkdir IMG && mkdir QUELLEN && mkdir SCRIPTS' 
alias FH_GRUPPE_INIT='cp C:/Users/fenci/Documents/Latex/templates/FH_gruppen_abgabe.tex . && mv FH_gruppen_abgabe.tex gruppe_x.tex && mkdir Aufgaben && mkdir Abgaben && mkdir IMG && mkdir QUELLEN && mkdir SCRIPTS'

# Commands to streamline git workflows
alias _UPDATE_PROJECT="git add . | git commit -m \"[Update Project] Automatic Save\""

# Commands to streamline tex
alias TEX_INIT='cp C:/Users/fenci/Documents/Latex/templates/std_tex_document.tex . && mv std_tex_document.tex main.tex && mkdir IMG && mkdir PARTS && mkdir QUELLEN && mkdir SCRIPTS'
alias TEX_CLEAN="rm !(*.tex|*.sty|*.pdf)"
alias TEX_SWIPE='rm !(*.tex|*.sty)'
