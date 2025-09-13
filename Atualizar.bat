@echo off
echo ==============================
echo  Atualizando site Doce Amores
echo ==============================

REM Puxa mudanças do GitHub antes de enviar
git pull origin main --rebase

REM Adiciona todos os arquivos
git add .

REM Cria o commit com data/hora
set datetime=%date% %time%
git commit -m "Atualização automática em %datetime%"

REM Envia para o GitHub
git push origin main

echo ==============================
echo  Site atualizado com sucesso!
echo  Verifique em: https://www.doceamores.com.br
echo ==============================
pause
