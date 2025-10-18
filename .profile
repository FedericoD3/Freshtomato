/usr/sbin/mymotd

# Colorear el prompt para que resalte
export PS1='\e[0;36m \u@\h:\w\$ \e[m'

alias ls='ls --color=auto'
alias ll='echo "-S size, -t time, -X extension" && ls -Al'
alias ping='ping -c 4 $1'
alias mkdir="mkdir -pv"
alias hg='history | grep $@'
alias hn='history $1'
alias hostse='nano /etc/hosts'
alias puertos='netstat -tulpn | grep LISTEN '
alias sudo=' '

alias nginxe='nano /etc/nginx/nginx.conf && nginx -t && service nginx restart'
alias hostse='nano /etc/hosts && service dnsmasq restart'

alias iptl='(
  clear
  echo -e "\033[0;30;42m### FILTER ###\033[0m"
  iptables -L -n -v --line-numbers -t filter | sed "/^$/d" | sed "s/^\([0-9]\)/ \1/"  | sed "s/^num/ num/" | sed "s/Chain/CHAIN/"
  echo -e "\033[0;30;42m### NAT ###\033[0m"
  iptables -L -n -v --line-numbers -t nat    | sed "/^$/d" | sed "s/^\([0-9]\)/ \1/"  | sed "s/^num/ num/" | sed "s/Chain/CHAIN/"
  echo -e "\033[0;30;42m### MANGLE ###\033[0m"
  iptables -L -n -v --line-numbers -t mangle | sed "/^$/d" | sed "s/^\([0-9]\)/ \1/"  | sed "s/^num/ num/" | sed "s/Chain/CHAIN/"
)'

alias iptx='(
  clear
  echo -e "\033[0;30;42m### FILTER ###\033[0m"
  iptables -S -t filter
  echo -e "\033[0;30;42m### NAT ###\033[0m"
  iptables -S -t nat
  echo -e "\033[0;30;42m### MANGLE ###\033[0m"
  iptables -S -t mangle
)'

alias ip6tl='(
  clear
  echo -e "\033[0;30;42m### FILTER ###\033[0m"
  ip6tables -L -n -v --line-numbers -t filter | sed "/^$/d" | sed "s/^\([0-9]\)/ \1/"  | sed "s/^num/ num/" | sed "s/Chain/CHAIN/"
  echo -e "\033[0;30;42m### MANGLE ###\033[0m"
  ip6tables -L -n -v --line-numbers -t mangle | sed "/^$/d" | sed "s/^\([0-9]\)/ \1/"  | sed "s/^num/ num/" | sed "s/Chain/CHAIN/"
)'

alias ip6tx='(
  clear
  echo -e "\033[0;30;42m### FILTER ###\033[0m"
  ip6tables -S -t filter
  echo -e "\033[0;30;42m### MANGLE ###\033[0m"
  ip6tables -S -t mangle
)'
