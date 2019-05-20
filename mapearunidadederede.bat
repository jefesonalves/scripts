@echo off
chcp 65001
REM Excluindo os mapeamentos existentes
net use * /delete /yes
cls
@echo -------------------------------------------
@echo Script para mapeamento de unidade de rede
@echo Desenvolvido por Jefeson Alves
@echo e-mail: jefesonbezerra@gmail.com
@echo -------------------------------------------
@echo.
REM armazenando o domínio em uma varíavel
set /p dominio=Digite o nome do domínio:
REM armazenando o caminho UNC do servidor de arquivos
set /p caminho=Digite o caminho UNC:
REM armazenando a unidade que será utilizada para mapeamento
set /p unidade=Digite a letra da unidade:
REM solicitando e armazenando a variável com o nome do usuário
set /p nomeusuario=Digite o login: 
REM gerando um log no diretório abaixo
@echo %date%%time% %nomeusuario% ErrorLevel:%errorLevel% >> %temp%\logmapear.log
@echo Digite a senha:
REM mapeando a unidade de rede
net use %unidade% %caminho% /persistent:yes /user:%dominio%\%nomeusuario% > NUL
REM abrindo a unidade mapeada para o usuário
explorer %unidade%
