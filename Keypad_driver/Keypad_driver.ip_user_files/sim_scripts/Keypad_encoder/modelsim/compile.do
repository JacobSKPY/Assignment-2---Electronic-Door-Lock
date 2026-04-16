vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xil_defaultlib  -93  \
"../../../bd/Keypad_encoder/ip/Keypad_encoder_counter_keypad_0_0/sim/Keypad_encoder_counter_keypad_0_0.vhd" \
"../../../bd/Keypad_encoder/ip/Keypad_encoder_decoder_keypad_0_0/sim/Keypad_encoder_decoder_keypad_0_0.vhd" \
"../../../bd/Keypad_encoder/ip/Keypad_encoder_mux_keypad_0_0/sim/Keypad_encoder_mux_keypad_0_0.vhd" \
"../../../bd/Keypad_encoder/ip/Keypad_encoder_not_gate_keypad_0_0/sim/Keypad_encoder_not_gate_keypad_0_0.vhd" \
"../../../bd/Keypad_encoder/ip/Keypad_encoder_clockdivider_0_0/sim/Keypad_encoder_clockdivider_0_0.vhd" \
"../../../bd/Keypad_encoder/ip/Keypad_encoder_mask_keypad_0_0/sim/Keypad_encoder_mask_keypad_0_0.vhd" \
"../../../bd/Keypad_encoder/sim/Keypad_encoder.vhd" \


