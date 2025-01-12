#!/bin/bash

# Define Gruvbox Dark color scheme
THEME_NAME="Gruvbox Dark"
CONFIG_DIR="$HOME/.local/share/konsole"
THEME_FILE="$CONFIG_DIR/${THEME_NAME}.colorscheme"

mkdir -p "$CONFIG_DIR"

cat <<EOL > "$THEME_FILE"
[General]
Description=Gruvbox Dark
Opacity=1

[Background]
Color=28,28,28

[BackgroundIntense]
Color=40,40,40

[Foreground]
Color=235,219,178

[ForegroundIntense]
Color=251,241,199

[Color0]
Color=40,40,40

[Color0Intense]
Color=146,131,116

[Color1]
Color=204,36,29

[Color1Intense]
Color=251,73,52

[Color2]
Color=152,151,26

[Color2Intense]
Color=184,187,38

[Color3]
Color=215,153,33

[Color3Intense]
Color=250,189,47

[Color4]
Color=69,133,136

[Color4Intense]
Color=131,165,152

[Color5]
Color=177,98,134

[Color5Intense]
Color=211,134,155

[Color6]
Color=104,157,106

[Color6Intense]
Color=142,192,124

[Color7]
Color=168,153,132

[Color7Intense]
Color=235,219,178
EOL

# Check if theme was created
if [[ -f "$THEME_FILE" ]]; then
  echo "Theme '$THEME_NAME' has been created at $THEME_FILE."
  echo "To apply the theme, go to Konsole -> Settings -> Edit Current Profile -> Appearance and select '$THEME_NAME'."
else
  echo "Failed to create the theme. Please check permissions or directory paths."
fi
