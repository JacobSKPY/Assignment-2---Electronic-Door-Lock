transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Keypad_encoder  -L xil_defaultlib -L secureip -O5 xil_defaultlib.Keypad_encoder

do {Keypad_encoder.udo}

run 1000ns

endsim

quit -force
