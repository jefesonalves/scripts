@echo Script para apagar arquivos do diretório downloads do usuário
cd\
cd users\%username%\Downloads
del *.* /F /S /Q
exit
