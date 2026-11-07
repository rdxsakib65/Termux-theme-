#!/data/data/com.termux/files/usr/bin/bash

# TERMUX PRO PREMIUM
# MODE BOY PNL SAKIB

clear

CYAN='\033[1;36m'
PURPLE='\033[1;35m'
GREEN='\033[1;32m'
WHITE='\033[1;37m'
RESET='\033[0m'

echo -e "${PURPLE}"
echo "===================================="
echo "       TERMUX PRO PREMIUM"
echo "===================================="
echo -e "${CYAN}     MODE BOY PNL SAKIB${RESET}"
echo

BASHRC="$HOME/.bashrc"
TERMUX_DIR="$HOME/.termux"

mkdir -p "$TERMUX_DIR"

# Backup existing configuration
if [ -f "$BASHRC" ]; then
    cp "$BASHRC" "$BASHRC.sakib-backup"
fi

if [ -f "$TERMUX_DIR/colors.properties" ]; then
    cp "$TERMUX_DIR/colors.properties" \
       "$TERMUX_DIR/colors.properties.sakib-backup"
fi

# Premium terminal colors
cat > "$TERMUX_DIR/colors.properties" <<'COLORS'
background=#05050A
foreground=#EAEAFF
cursor=#00FFFF
color0=#080810
color1=#FF3366
color2=#00FF88
color3=#FFD166
color4=#398BFF
color5=#C000FF
color6=#00E5FF
color7=#EAEAFF
color8=#555577
color9=#FF5577
color10=#55FFAA
color11=#FFFF77
color12=#66AAFF
color13=#DD66FF
color14=#55FFFF
color15=#FFFFFF
COLORS

# Avoid duplicate installation
if ! grep -q 'TERMUX PRO PREMIUM >>>' "$BASHRC" 2>/dev/null; then

cat >> "$BASHRC" <<'THEME'

# >>> TERMUX PRO PREMIUM >>>

sakib_banner() {
    printf '\033[1;35m'
    echo '╔══════════════════════════════════╗'
    echo '║       TERMUX PRO PREMIUM         ║'
    echo '║                                  ║'
    printf '\033[1;36m'
    echo '║       MODE BOY PNL SAKIB          ║'
    printf '\033[1;35m'
    echo '╚══════════════════════════════════╝'
    printf '\033[1;32m'
    echo ' Hack Smart  |  Work Fast'
    printf '\033[0m\n'
}

PS1='\[\033[1;35m\]╭─[\[\033[1;36m\]SAKIB@TERMUX-PRO\[\033[1;35m\]]
╰─➤ \[\033[1;32m\]\w \[\033[1;36m\]❯ \[\033[0m\]'

pro() {
    while true; do
        clear
        sakib_banner

        printf '\033[1;36m'
        echo '       [ PREMIUM MAIN MENU ]'
        printf '\033[0m'

        echo
        echo '  1. Tools'
        echo '  2. Games'
        echo '  3. Cybersecurity Learning'
        echo '  4. Programming'
        echo '  5. Network'
        echo '  6. System'
        echo '  7. Settings'
        echo '  8. About'
        echo '  0. Exit'
        echo

        read -r -p '  Select Option: ' choice

        case "$choice" in
            1)
                echo
                echo 'TOOLS'
                echo 'pkg --version'
                echo 'python --version'
                echo 'git --version'
                ;;
            2)
                echo
                echo 'GAMES'
                echo 'Gaming section coming soon.'
                ;;
            3)
                echo
                echo 'CYBERSECURITY LEARNING'
                echo 'Learn Linux and network security.'
                echo 'Practice only in authorized labs.'
                ;;
            4)
                echo
                echo 'PROGRAMMING'
                echo 'python --version'
                echo 'node --version'
                echo 'nano'
                ;;
            5)
                echo
                echo 'NETWORK'
                echo 'ip addr'
                echo 'ping -c 4 1.1.1.1'
                ;;
            6)
                echo
                echo 'SYSTEM'
                uname -a
                df -h
                ;;
            7)
                echo
                echo 'SETTINGS'
                if command -v termux-reload-settings >/dev/null 2>&1; then
                    termux-reload-settings
                    echo 'Theme reloaded.'
                else
                    echo 'Restart Termux to reload colors.'
                fi
                ;;
            8)
                echo
                echo 'TERMUX PRO PREMIUM'
                echo 'Created by MODE BOY PNL SAKIB'
                ;;
            0)
                clear
                return
                ;;
            *)
                echo 'Invalid option!'
                ;;
        esac

        echo
        read -r -p 'Press Enter to continue...'
    done
}

# <<< TERMUX PRO PREMIUM <<<

if [[ $- == *i* ]]; then
    sakib_banner
fi

THEME

fi

echo -e "${GREEN}"
echo "Premium Theme Installed Successfully!"
echo -e "${WHITE}"
echo "Type: pro"
echo "To open Premium Menu"
echo -e "${RESET}"

if command -v termux-reload-settings >/dev/null 2>&1; then
    termux-reload-settings
fi
