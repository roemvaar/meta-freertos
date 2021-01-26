# Notes: 
# RTOS Demo for RISC-V QEMU sifive_e Model - https://www.freertos.org/RTOS-RISC-V-FreedomStudio-QMEU.html
# Read all this https://www.freertos.org/Using-FreeRTOS-on-RISC-V.html
# Create GitHub repo with FreeRTOS RISC-V port

# FreeRTOS RISC-V sifive_e
# 
# 

SRC_URI_append = " \
  git://github.com/roemvaar/FreeRTOS-riscv-sifive_e.git;branch=master; \
"
# Define the PORT we are using
EXTRA_OEMAKE_append = " PORT=SIFIVE_E"

# QEMU parameters specific to this PORT
QB_SYSTEM_NAME = "qemu-system-riscv32"
QB_MACHINE = "-M sifive_e"

# Only create one serial console, so QEMUrunner can communicate with the target
SERIAL_CONSOLES="115200;tty0"
