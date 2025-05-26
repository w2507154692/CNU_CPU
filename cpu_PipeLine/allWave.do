onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group Test /cpu_PipeLine_t/clk
add wave -noupdate -group Test /cpu_PipeLine_t/clr
add wave -noupdate -group Test /cpu_PipeLine_t/IR
add wave -noupdate -group Test /cpu_PipeLine_t/r8
add wave -noupdate -group Test /cpu_PipeLine_t/r16
add wave -noupdate -group Test /cpu_PipeLine_t/r17
add wave -noupdate -group Test /cpu_PipeLine_t/r18
add wave -noupdate /cpu_PipeLine_t/utt/clk
add wave -noupdate /cpu_PipeLine_t/utt/clr
add wave -noupdate /cpu_PipeLine_t/utt/IR
add wave -noupdate /cpu_PipeLine_t/utt/r8
add wave -noupdate /cpu_PipeLine_t/utt/r16
add wave -noupdate /cpu_PipeLine_t/utt/r17
add wave -noupdate /cpu_PipeLine_t/utt/r18
add wave -noupdate -group IF /cpu_PipeLine_t/utt/newPC
add wave -noupdate -group IF /cpu_PipeLine_t/utt/pcOut
add wave -noupdate -group IF /cpu_PipeLine_t/utt/imOut
add wave -noupdate -group IF /cpu_PipeLine_t/utt/pc4F
add wave -noupdate -group IF /cpu_PipeLine_t/utt/if2id_out
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/InstrD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/pc4D
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/qaD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/qbD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/ep_immD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/RegWriteD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/MemToRegD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/MemWriteD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/BranchEqD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/JumpD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/ALUSrcD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/RegDstD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/ALUcD
add wave -noupdate -expand -group ID /cpu_PipeLine_t/utt/LoadCtrlD
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/id2exe_out
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/zeroE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/qaE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/qbE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/alu_outE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/aluB
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/aluA
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/ep_immE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/pc4E
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/pcBranchE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/pcJumpE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/RtE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/RdE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/WriteRegE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/RegWriteE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/MemToRegE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/MemWriteE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/BranchEqE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/JumpE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/ALUSrcE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/RegDstE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/ALUcE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/adrE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/RsE
add wave -noupdate -expand -group EXE /cpu_PipeLine_t/utt/LoadCtrlE
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/exe2mem_out
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/zeroM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/alu_outM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/qbM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/pcBranchM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/pcJumpM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/dmOutM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/WriteRegM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/RegWriteM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/MemToRegM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/MemWriteM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/BranchEqM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/JumpM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/LoadCtrlM
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/PCctrl
add wave -noupdate -group MEM /cpu_PipeLine_t/utt/flush
add wave -noupdate -group WB /cpu_PipeLine_t/utt/mem2wb_out
add wave -noupdate -group WB /cpu_PipeLine_t/utt/alu_outW
add wave -noupdate -group WB /cpu_PipeLine_t/utt/dmOutW
add wave -noupdate -group WB /cpu_PipeLine_t/utt/rfData
add wave -noupdate -group WB /cpu_PipeLine_t/utt/WriteRegW
add wave -noupdate -group WB /cpu_PipeLine_t/utt/RegWriteW
add wave -noupdate -group WB /cpu_PipeLine_t/utt/MemToRegW
add wave -noupdate -group WB /cpu_PipeLine_t/utt/LoadCtrlW
add wave -noupdate -group pc /cpu_PipeLine_t/utt/pc/clk
add wave -noupdate -group pc /cpu_PipeLine_t/utt/pc/clr
add wave -noupdate -group pc /cpu_PipeLine_t/utt/pc/en
add wave -noupdate -group pc /cpu_PipeLine_t/utt/pc/adr
add wave -noupdate -group pc /cpu_PipeLine_t/utt/pc/data
add wave -noupdate -group IM /cpu_PipeLine_t/utt/IM/addr
add wave -noupdate -group IM /cpu_PipeLine_t/utt/IM/out
add wave -noupdate -group if2id /cpu_PipeLine_t/utt/if2id/clk
add wave -noupdate -group if2id /cpu_PipeLine_t/utt/if2id/clr
add wave -noupdate -group if2id /cpu_PipeLine_t/utt/if2id/flush
add wave -noupdate -group if2id /cpu_PipeLine_t/utt/if2id/Instr
add wave -noupdate -group if2id /cpu_PipeLine_t/utt/if2id/pc4
add wave -noupdate -group if2id /cpu_PipeLine_t/utt/if2id/out
add wave -noupdate -group if2id /cpu_PipeLine_t/utt/if2id/flushCtrl
add wave -noupdate -group if2id /cpu_PipeLine_t/utt/if2id/stallData
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/op
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/funct
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/RegWrite
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/MemToReg
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/MemWrite
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/BranchEq
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/Jump
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/ALUSrc
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/RegDst
add wave -noupdate -group Ctrl /cpu_PipeLine_t/utt/Ctrl/ALUc
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/clk
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/clr
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/we
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/ra
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/rb
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/rw
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/rd
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/qa
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/qb
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/r8
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/r16
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/r17
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/r18
add wave -noupdate -group RF /cpu_PipeLine_t/utt/RF/i
add wave -noupdate -group EP /cpu_PipeLine_t/utt/EP/imm
add wave -noupdate -group EP /cpu_PipeLine_t/utt/EP/ep_imm
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/clk
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/clr
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/flush
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/RegWrite
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/MemToReg
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/MemWrite
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/BranchEq
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/Jump
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/ALUSrc
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/RegDst
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/ALUc
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/Rt
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/Rd
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/ep_imm
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/qa
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/qb
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/pc4
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/adr
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/out
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/flushCtrl
add wave -noupdate -group id2exe /cpu_PipeLine_t/utt/id2exe/flushData
add wave -noupdate -group alu /cpu_PipeLine_t/utt/alu/a
add wave -noupdate -group alu /cpu_PipeLine_t/utt/alu/b
add wave -noupdate -group alu /cpu_PipeLine_t/utt/alu/aluc
add wave -noupdate -group alu /cpu_PipeLine_t/utt/alu/alu_out
add wave -noupdate -group alu /cpu_PipeLine_t/utt/alu/zero
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/clk
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/clr
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/flush
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/zero
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/RegWrite
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/MemToReg
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/MemWrite
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/BranchEq
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/Jump
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/writeReg
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/alu_out
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/writeData
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/pcBranch
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/pcJump
add wave -noupdate -group exe2mem /cpu_PipeLine_t/utt/exe2mem/out
add wave -noupdate -group DM /cpu_PipeLine_t/utt/DM/we
add wave -noupdate -group DM /cpu_PipeLine_t/utt/DM/clk
add wave -noupdate -group DM /cpu_PipeLine_t/utt/DM/addr
add wave -noupdate -group DM /cpu_PipeLine_t/utt/DM/din
add wave -noupdate -group DM /cpu_PipeLine_t/utt/DM/dout
add wave -noupdate -group mem2wb /cpu_PipeLine_t/utt/mem2wb/clk
add wave -noupdate -group mem2wb /cpu_PipeLine_t/utt/mem2wb/clr
add wave -noupdate -group mem2wb /cpu_PipeLine_t/utt/mem2wb/RegWrite
add wave -noupdate -group mem2wb /cpu_PipeLine_t/utt/mem2wb/MemToReg
add wave -noupdate -group mem2wb /cpu_PipeLine_t/utt/mem2wb/writeReg
add wave -noupdate -group mem2wb /cpu_PipeLine_t/utt/mem2wb/alu_out
add wave -noupdate -group mem2wb /cpu_PipeLine_t/utt/mem2wb/dmOut
add wave -noupdate -group mem2wb /cpu_PipeLine_t/utt/mem2wb/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {52 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 210
configure wave -valuecolwidth 101
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {11 ns} {259 ns}
