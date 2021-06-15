!# /bash/bin

trap ctrl_c INT

funtion ctrl_(){
	echo -e "\n\n[*] Movistar VE RedTeam \n"
	tput cnorm; exit 0
}

tput civis; for port in $(seq 1 65535); do
	timeout 1 bash -c "echo '' < /dev/tcp/ipsource/$port" 2>/dev/null && echo "Port $port - Abierto" &
done; wait

tput cnorm
