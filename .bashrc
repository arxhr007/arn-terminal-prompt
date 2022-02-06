VAR25=$(date +%H)
if [[ $VAR25 -gt 17 ]] || [[ $VAR25 -lt 6 ]]
then
  TI=" \e[0;36m☾\e[m"
else
  TI="$(tput setaf 202)☀$(tput sgr0)" 
fi
clear
echo -e "Hello $(hostname)!\n" 
echo "$(date +"%A %d %B") "
PS1="\n\e[0;36m❖\e[m $(tput setaf 220)─$(tput sgr0)《$TI 》$(tput setaf 220)─$(tput sgr0) «\e[0;31m$([[ "$((( VAR=$(id -u)==1000 )))" == "0" ]] && echo "ROOT" || echo "NOT ROOT")\e[m»〔\e[0;32m\w\e[m〕〈\e[0;35m$(date +"%I:%M:%S")\e[m 〉"
PS1+="\n$(tput setaf 220)❘$(tput sgr0)\n\e[0;36m❖\e[m$(tput setaf 220)⊣$(tput sgr0) $(tput setaf 154)>>>$(tput sgr0)"
