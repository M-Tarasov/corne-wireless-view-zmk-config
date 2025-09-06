all: left right

init:
	west init -l $(PWD)/config
	west update
	west zephyr-export


left:
	west build -s zmk/app -d $(PWD)/left -b nice_nano_v2 -S "studio-rpc-usb-uart" -- -DZMK_CONFIG=$(PWD)/config -DSHIELD="corne_left nice_view_adapter nice_view"
	cp left/zephyr/zmk.uf2 corne-left.uf2


right:
	west build -s zmk/app -d $(PWD)/right -b nice_nano_v2 -- -DZMK_CONFIG=$(PWD)/config -DSHIELD="corne_right nice_view_adapter nice_view"
	cp right/zephyr/zmk.uf2 corne-right.uf2

.PHONY: all left right
