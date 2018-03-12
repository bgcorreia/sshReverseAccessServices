#!/bin/bash

PONTOS=2
PCGs_PEAS=10
PCGs_PAGONE=6
PCGs_PAGTWO=7
USER=user
SERVER=server.com
PORT=port

EXEC=0

for ((i=0; i<=PONTOS; i++)); do
	
	case ${i} in

		0)
			for ((j=1; j<=PCGs_PEAS; j++)); do

				if ((j < 10)); then
					echo "ssh -fNR *:9${i}0${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}"

					if ((EXEC)); then
						ssh -fNR *:9${i}0${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}
					fi
				else
					echo "ssh -fNR *:9${i}${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}"
					
					if ((EXEC)); then
						ssh -fNR *:9${i}${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}
					fi
				fi

			done
			;;

		1)
			for ((j=1; j<=PCGs_PAGONE; j++)); do

				if ((j < 10)); then
					echo "ssh -fNR *:9${i}0${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}"

					if ((EXEC)); then
						ssh -fNR *:9${i}0${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}
					fi
				else
					echo "ssh -fNR *:9${i}${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}"

					if ((EXEC)); then
						ssh -fNR *:9${i}${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}
					fi
				fi

			done
			;;

		2)
			for ((j=1; j<=PCGs_PAGTWO; j++)); do

				if ((j < 10)); then
					echo "ssh -fNR *:9${i}0${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}"

					if ((EXEC)); then
						ssh -fNR *:9${i}0${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}
					fi
				else
					echo "ssh -fNR *:9${i}${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}"

					if ((EXEC)); then
						ssh -fNR *:9${i}${j}:172.17.${i}.${j}:80 ${USER}@${SERVER} -p${PORT}
					fi
				fi

			done
			;;
	esac

done