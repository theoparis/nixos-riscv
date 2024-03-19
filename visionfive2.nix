{ pkgs, ... }: {

  nixpkgs = {
    localSystem.config = "x86_64-unknown-linux-gnu";
    crossSystem.config = "riscv64-unknown-linux-gnu";
  };

  virtualisation.docker.enable = true;

  programs.less.lessopen = null;

  environment.systemPackages = with pkgs;[ neofetch iperf3 ];

}
