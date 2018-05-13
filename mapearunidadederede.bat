@echo off
REM Excluindo os mapeamentos existentes
net use * /delete /yes
cls
@echo ###############################################
@echo # Script para mapeamento de unidade de rede   #
@echo # Desenvolvido por Jefeson Alves		    #
@echo # e-mail: jefesonbezerra@gmail.com	    #
@echo ###############################################
@echo.
REM armazenando o domínio em uma varíavel
set dominio="insira aqui o nome do domínio"
REM armazenando o caminho UNC do servidor de arquivos
set caminho="insira aqui o caminho UNC do servidor de arquivos"
REM armazenando a unidade que será utilizada para mapeamento
set unidade="insira aqui a letra da unidade de rede de sua preferência"
REM solicitando e armazenando a variável com o nome do usuário
set /p nomeusuario=Digite o login: 
REM gerando um log no diretório abaixo
@echo %date%%time% %nomeusuario% ErrorLevel:%errorLevel% >> %temp%\logmapear.log
@echo senha:
REM mapeando a unidade de rede
net use %unidade% %caminho% /persistent:yes /user:%dominio%\%nomeusuario% > NUL
REM abrindo a unidade mapeada para o usuário
explorer %unidade%
