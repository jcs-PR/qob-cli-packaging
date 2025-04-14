@echo off

SET VER=0.1.0

choco pack

choco push qob-cli.%VER%.nupkg -s https://push.chocolatey.org/
