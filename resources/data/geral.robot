*** Settings ***
Resource    ../main.robot

*** Variables ***
&{geral}
...     URL=https://front.serverest.dev/login
...     Browser=chrome
...     Headless=add_argument("--headless")