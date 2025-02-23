#!/bin/bash

evade - Pacote de ferramentas para o Termux

Autor: @Dragonmodder on youtube

GitHub: https://github.com/seu-repositorio

Cores

verde='\e[32m' vermelho='\e[31m' ciano='\e[36m' fim='\e[0m'

Atualizar e instalar pacotes essenciais

echo -e "${ciano}Atualizando Termux e instalando pacotes essenciais...${fim}" pkg update -y && pkg upgrade -y pkg install git python python3 -y

Criar diretório e navegar até ele

mkdir -p ~/evade-tools && cd ~/evade-tools

Clonar repositórios

echo -e "${ciano}Clonando repositórios...${fim}" git clone https://github.com/T3rMuX0/consulta-v3.git wget https://gist.githubusercontent.com/the8greyhats/2bef22e53c971e0f68f2b927f4efb781/raw/nmap-install.sh -O nmap-install.sh git clone https://github.com/pembriahmad/DDOS.git

Menu interativo

enquanto : do clear echo -e "${verde}==== evade ====${fim}" echo -e "${ciano}1. Consultas v3${fim}" echo -e "${ciano}2. Nmap${fim}" echo -e "${ciano}3. DDoS${fim}" echo -e "${ciano}4. Sair${fim}" echo -ne "Escolha uma opção: " read opcao

case $opcao in
    1)
        cd ~/evade-tools/consulta-v3 && bash install.sh
        ;;
    2)
        bash ~/evade-tools/nmap-install.sh
        ;;
    3)
        cd ~/evade-tools/DDOS && python3 DDOS.py
        ;;
    4)
        echo -e "${vermelho}Saindo...${fim}"
        exit 0
        ;;
    *)
        echo -e "${vermelho}Opção inválida!${fim}"
        ;;
esac

done
