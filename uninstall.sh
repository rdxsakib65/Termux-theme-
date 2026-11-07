
#!/data/data/com.termux/files/usr/bin/bash

BASHRC="$HOME/.bashrc"
TERMUX_DIR="$HOME/.termux"

if [ -f "$BASHRC" ]; then
    cp "$BASHRC" "$BASHRC.before-uninstall"

    awk '
    /# >>> TERMUX PRO PREMIUM >>>/ {skip=1; next}
    /# <<< TERMUX PRO PREMIUM <<</ {skip=0; next}
    !skip {print}
    ' "$BASHRC" > "$BASHRC.tmp" &&
    mv "$BASHRC.tmp" "$BASHRC"
fi

if [ -f "$TERMUX_DIR/colors.properties.sakib-backup" ]; then
    mv "$TERMUX_DIR/colors.properties.sakib-backup" \
       "$TERMUX_DIR/colors.properties"
else
    rm -f "$TERMUX_DIR/colors.properties"
fi

echo "TERMUX PRO PREMIUM removed."
echo "Restart Termux to apply changes."
