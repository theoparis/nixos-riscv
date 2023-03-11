# NixOS RISC-V
An ongoing effort porting NixOS to the RISC-V architecture through cross compilation

## Supported Boards

### VisionFive 2

#### Build
```bash
nix build .#hydraJobs.visionfive2
```

#### Info
Prebuilt image is available at https://hydra.nichi.co/job/nixos/riscv/visionfive2/latest

The resulting image includes u-boot, see [VisionFive 2 Single Board Computer Quick Start Guide](https://doc.rvspace.org/VisionFive2/Quick_Start_Guide/VisionFive2_SDK_QSG/boot_mode_settings.html) for instructions on booting from sdcard.

#### Known Issues
Ethernet ports does not work, could be due to misconfigurations in the device tree.

Drivers for PCIe and GPU are not included yet.

## Acknowledgement
This work is sponsored by PLCT Lab.