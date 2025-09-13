@echo off
echo ==============================
echo   Atualizando site Doce Amores
echo ==============================

set /p pullfirst="Deseja atualizar do GitHub antes de enviar? (s/n): "

if /i "%pullfirst%"=="s" (
    echo.
    echo >> Puxando atualizações do GitHub...
    git pull origin main --rebase
)

echo.
echo >> Adicionando alterações...
git add .

echo.
set /p msg="Digite a mensagem do commit: "
if "%msg%"=="" set msg=Atualização automática

git commit -m "%msg%"

echo.
echo >> Enviando para o GitHub...
git push origin main

echo.
echo ==============================
echo   Site atualizado com sucesso!
echo   Verifique em: https://www.doceamores.com.br
echo ==============================
pause
