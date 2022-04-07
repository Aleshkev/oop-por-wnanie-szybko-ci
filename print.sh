NOCOLOR='\033[0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGRAY='\033[0;37m'
DARKGRAY='\033[1;30m'
LIGHTRED='\033[1;31m'
LIGHTGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LIGHTBLUE='\033[1;34m'
LIGHTPURPLE='\033[1;35m'
LIGHTCYAN='\033[1;36m'
WHITE='\033[1;37m'

echo -e "${LIGHTBLUE}Porównywany język${NOCOLOR}"
echo "Lua, LuaJIT"
echo

echo -e "${LIGHTBLUE}Środowisko${NOCOLOR}"
uname -mrs
echo

echo -e "${LIGHTBLUE}Wersja Javy${NOCOLOR}"
java -version
echo

echo -e "${LIGHTBLUE}Wersja Lua${NOCOLOR}"
lua -v
echo

echo -e "${LIGHTBLUE}Wersja LuaJIT${NOCOLOR}"
luajit -v
echo

echo -e "${LIGHTBLUE}Czas działania programu w Javie -Xint${NOCOLOR}"
time java -Xint -Xprof ./prog.java
echo

echo -e "${LIGHTBLUE}Czas działania programu w Javie${NOCOLOR}"
time java ./prog.java
echo


echo -e "${LIGHTBLUE}Czas działania programu w Lua${NOCOLOR}"
time lua ./prog.lua
echo

echo -e "${LIGHTBLUE}Czas działania programu w LuaJIT${NOCOLOR}"
time luajit ./prog.lua
echo
