onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cpu_PipeLine_t/clk
add wave -noupdate /cpu_PipeLine_t/clr
add wave -noupdate /cpu_PipeLine_t/r8
add wave -noupdate /cpu_PipeLine_t/r16
add wave -noupdate /cpu_PipeLine_t/r17
add wave -noupdate /cpu_PipeLine_t/r18
add wave -noupdate -expand -group ID /cpu_PipeLine_t/IR
add wave -noupdate -expand -group ID /cpu_PipeLine_t/RegWriteD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/MemToRegD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/MemWriteD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/BranchEqD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/JumpD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/ALUSrcD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/RegDstD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/ALUcD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/InstrD
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/RegWriteE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/MemToRegE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/MemWriteE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/BranchEqE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/JumpE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/ALUSrcE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/RegDstE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/ALUcE
add wave -noupdate -expand -group IF /cpu_PipeLine_t/pcOut
add wave -noupdate -expand -group IF /cpu_PipeLine_t/imOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 215
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {100 ns}
