<p align="center">
  <img src="image-1.png" alt="Alt Text">
</p>
<div align="center">

  <h1>Projeto - Teste de FrontEnd com Robot Framework</h1>
</div>

Este projeto tem como objetivo realizar testes de FrontEnd em uma aplicação web utilizando o SauceDemo como servidor de testes. O SauceDemo é uma plataforma online para práticas de testes.

## Ferramentas utilizadas:
- [Robot Framework](https://robotframework.org/robotframework/ "Robot Framework")

## Bibliotecas utilizadas:

- [Selenium Library](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html "Selenium Library")

## Pré-Requisitos
- Certifique-se de ter o Python instalado em sua máquina. Você pode baixá-lo [aqui](https://www.python.org/downloads/ "Python Download").
- Tenha uma IDE instalada (por exemplo, VS Code).

## Instalando o Robot Framework e Bibliotecas Relacionadas
Você pode instalar o Robot Framework e as bibliotecas necessárias executando os seguintes comandos no terminal ou prompt de comando:

```bash
pip install robotframework
pip install robotframework-requests
pip install robotframework-seleniumlibrary
```

## Executando os Testes
Execute os testes com o seguinte comando, substituindo `nome_do_arquivo.robot` pelo nome do arquivo que contém seus casos de teste:

```bash
robot nome_do_arquivo.robot
```
## Arquitetura
```
.
├── .gitignore
├── readme.md
├── resources
│   ├── data
│   │   ├── cadastro.robot
│   │   ├── geral.robot
│   │   └── login.robot
│   ├── main.robot
│   ├── pages
│   │   ├── cadastro_page.robot
│   │   └── login_page.robot
│   └── shared
│       └── setup_teardown.robot
└── tests
    ├── cadastro.robot
    └── login.robot
```
