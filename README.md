# Build
Build in container. Working dir `/workspaces/zmq-confg`.

## Prepare
```bash
cd /workspaces/zmk-config
west init -l /workspaces/zmk-config/config
west update
west zephyr-export
```

## Build
```bash
# left
west build -s zmk/app -d /workspaces/zmk-config/left -b nice_nano_v2 -S "studio-rpc-usb-uart" -- -DZMK_CONFIG=/workspaces/zmk-config/config -DSHIELD="corne_left nice_view_adapter nice_view"
cp left/zephyr/zmk.uf2 corne-left.uf2

#right
west build -s zmk/app -d /workspaces/zmk-config/right -b nice_nano_v2 -- -DZMK_CONFIG=/workspaces/zmk-config/config -DSHIELD="corne_right nice_view_adapter nice_view"
cp right/zephyr/zmk.uf2 corne-right.uf2
```

## UHK 60
https://keymap-drawer.streamlit.app - Keymap Drawer

https://nickcoutsos.github.io/keymap-layout-tools/ - physical layout

https://nickcoutsos.github.io/keymap-editor/ - ZMK keymap editor
