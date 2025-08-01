# Verilog-Keypad-Password-Lock
A Verilog-based password-protected digital lock system using a 4x4 keypad interface, FSM-based password matching, and Vivado testbench simulation.

# Verilog Keypad-Controlled Password Lock System 🔐

This project implements a password-protected digital lock system using Verilog HDL. It simulates a 4x4 keypad input with FSM-based password matching and shows LOCKED/UNLOCKED status based on user input. Simulated and tested using Xilinx Vivado.

## 🔧 Features

- 4x4 Keypad input scanning
- FSM-based password matcher
- Configurable password (`default: 1-2-3-4`)
- Outputs `unlocked` or `locked` status
- Works with Vivado simulation (XSim)
- Pure Verilog, no SystemVerilog extensions

## 📁 Modules

| File | Description |
|------|-------------|
| `keypad_scanner.v` | Scans 4x4 keypad input and detects valid keypresses |
| `password_matcher.v` | Matches entered keys against the password |
| `top.v` | Top-level wrapper connecting keypad and matcher |
| `tb_top.v` | Testbench simulating user input via keypad |

## ▶️ Simulation

- Simulated using **Vivado XSim**
- Testbench feeds correct/incorrect key sequences
- View `unlocked` and `locked` output in waveform

## 📈 Sample Waveform

<img width="1759" height="979" alt="Screenshot 2025-08-01 132238" src="https://github.com/user-attachments/assets/673a06af-70c3-48ee-97d4-683a3cce2619" />

## 🗂️ Folder Structure

verilog-keypad-password-lock/                                                                                                                                                    
|                                                                                                                                                                                
|── src/                                                                                                                                                                         
|  ├── keypad_scanner.v                                                                                                                                                          
|  ├── password_matcher.v                                                                                                                                                        
|  └── top.v  
|                                                                                                                                                                                
|── tb/                                                                                                                                                                          
|   └── tb_top.v                                                                                                                                                           
|                                                                                                                                                                                
|── waveform.png                                                                                                                                                                 
'── README.md

## 👨‍💻 Author

Dayanand Bisanal

