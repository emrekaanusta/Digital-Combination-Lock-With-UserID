<h1 align="center"> Digital Combination Lock With User ID :lock: </h1>

This project has been designed utilizing Verilog and digital circuit components, including D-Flip Flops, JK-Flip Flops, a multiplier, an adder, and basic logic gates. 

The purpose of this project is to simulate a digital lock. It reads user IDs and their corresponding passwords from a hex file via the ROM component. The system takes the user's ID and password as inputs and verifies whether the entered password is correct. The mode selector accepts either the ID or the password as input and stores that information until it is reset or changed. However, it becomes disabled when the timer starts counting. The shifter component processes the digits one by one and generates the corresponding ID, storing the information using the flip flops.

Once all four digits of a password have been entered, the timer component starts functioning. It counts for approximately 3 seconds, during which the mode selector is disabled. The shifter_password component compares the password stored in the ROM with the user's input of four digits. If all four digits match, access is granted; otherwise, it is denied. Each time a new digit is entered, an LED is illuminated to indicate the input.

## Demo Video

[![Demo Video](https://github.com/zeynepturkmen/Digital-Lock-With-UserID/assets/75041108/f2e65ffe-1f64-40e4-b31e-57643a101881)](https://drive.google.com/file/d/1__5bgiNirutrl2GmQda1bW-J0Dq_gdUv/view?usp=sharing)
