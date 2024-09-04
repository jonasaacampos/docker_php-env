## How to use

Ambiente de desenvolvimento PHP com o framework de testes PHPUnit em ambiente Docker, que pode ser portado para qualquer máquina de desenvolvimento ou produção.

- [How to use](#how-to-use)
- [Clone este repositório](#clone-este-repositório)
  - [1. Habilitar WSL2](#1-habilitar-wsl2)
  - [2. Instalar php no WSL2](#2-instalar-php-no-wsl2)
  - [3. Executar ambiente](#3-executar-ambiente)
  - [4. Executar testes](#4-executar-testes)

## Clone este repositório

`git clone https://github.com/jonasaacampos/docker_php-env.git`


### 1. Habilitar WSL2

```bash
# habilitar recursos
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

# listar e instalar distribuições disponíveis online
wsl --list --online
wsl --install -d nome_da_distribuição

# instale o docker
sudo apt update
sudo apt install docker
sudo apt install docker comopose

```

### 2. Instalar php no WSL2

```bash

sudo apt-add-repository ppa:ondrej/php
sudo apt update
sudo apt install php8.1
php -v
```

### 3. Executar ambiente 

```bash
# inicie os contêineres 
docker-compose up -d

# recriar os contâineres se necessário
sudo docker-compose build

```

### 4. Executar testes

```bash
sudo docker-compose run --rm app ./vendor/bin/phpunit
```