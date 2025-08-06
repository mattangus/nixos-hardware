{ lib, ... }:
{
  imports = [
    ../../../common/pc/laptop
    ../../../common/pc/ssd
    ../../../common/cpu/intel/alder-lake
    ../../../common/gpu/nvidia/turing
  ];

  hardware.enableRedistributableFirmware = lib.mkDefault true;

  services.fwupd.enable = true;

  hardware.nvidia.prime = {
    intelBusId = "PCI:1@0:0:0";
    nvidiaBusId = "PCI:0@0:2:0";
  };
}
