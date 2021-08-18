# Base para a atividade 02 de LP1

Projeto "Concordo" da disciplina de Linguagem de Pogramação I.
A atividade consiste de criar um sistema com funções semelhantes ao Discord, mas que vai funcionar somente em modo texto e sem recursos de rede.
A ideia principal é simular o “backend” de um serviço com o Discord.

## Para compilar

Use o comando abaixo:

```console
mkdir build
make
```

## Para executar

Você pode rodar o sistema e em logo depois digitar os comandos seguidos de ENTER

```console
./build/concordo
```

Ou pode criar um arquivo de texto com uma lista de comandos (um por linha) e executar o sistema redirecionando esse arquivo como entrada padrão:

```console
./build/concordo < script_comandos.txt
```