*** Settings ***
Resource    ../main.robot

*** Variables ***
&{geral}
...     URL=https://www.saucedemo.com/v1/index.html
...     Browser=chrome
...     Headless=add_argument("--headless")