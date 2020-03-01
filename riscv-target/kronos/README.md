# Kronos RISC-V Compliance Testing

The Kronos compliance simulator uses Verilator to execute the compliance test binaries and generate the output signatures. First, the simulator needs to be built in the kronos project build directory. In-depth instructions about environment setup can be found [here](https://sonalpinto.github.io/kronos/#/compliance).

```
git clone https://github.com/SonalPinto/kronos.git
cd kronos
mkdir build
cd build

cmake ..

make kronos_compliance
```

## Running Tests
Define the following environment variables in the shell.

```
export TARGET_SIM=<path to kronos project>/build/output/bin/kronos_compliance

export RISCV_TARGET=kronos
export RISCV_DEVICE=rv32i
export RISCV_PREFIX=riscv32-unknown-elf-
```

Then, run these targets from the `riscv-compliance` root directory.

```
make clean
make RISCV_ISA=rv32i
make RISCV_ISA=rv32Zifencei
make RISCV_ISA=rv32Zicsr
```

Output files (elf, bin, objdump and simulation results: output signature and waveform vcd) will be generated in the `work` directory for each of the above ISA test suites.
