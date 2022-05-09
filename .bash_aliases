
alias nmwlan0='nmcli -f GENERAL,WIFI-PROPERTIES dev show wlan0'
alias nmcshow='nmcli connection show'
alias nmcshowUFMG1='nmcli connection show "UFMG 1"'
# Misc
alias lg="lazygit"
alias ld="sudo /home/mop/Códigos/Softwares/lazydocker/lazydocker"
alias bt="bpytop"
alias ts="sudo termshark -i"
alias sm="sudo sandmap"
# Anaconda
alias cie="conda info --envs"
alias cc="conda create python=3 -y -n"
alias ca="conda activate "
alias cr="conda remove -y "
alias ci="conda install -y -c "
alias cicf="conda install -c conda-forge -y "
alias cer="conda env remove -y -n "
alias clg="conda list | grep "
alias d="conda deactivate"
ccc() {
    conda create -n $1 --clone $2
}
# Jupyter
alias jlb="jupyter lab build"
alias jll="jupyter labextension list"
alias jli="jupyter labextension install"
alias jlu="jupyter labextension uninstall"
alias jnbc="jupyter nbconvert --to script "
# pipy
alias plg="pip list | grep "
alias pi="pip install "
alias pu="pip uninstall "
# apt
alias sauu="sudo apt update -y && sudo apt upgrade -y"
alias alg="apt list --installed | grep "
alias sai="sudo apt install "
alias sar="sudo apt remove -y "
# voila
vl() {
		voila --VoilaConfiguration.extension_language_mapping='{".py": "python"}' $1 --theme=light --debug 
}
v() {
		voila --VoilaConfiguration.extension_language_mapping='{".py": "python"}' $1 --theme=dark --debug 
}
# Streamlit
alias sr="streamlit run "
# Flask
alias efar="export FLASK_APP=run.py"
alias efed="export FLASK_ENV=development"

alias update="sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && snap refresh && flatpak update -y && flatpak uninstall --unused -y"
