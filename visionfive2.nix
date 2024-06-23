{ pkgs, ... }: {

  nixpkgs = {
    localSystem.config = "x86_64-unknown-linux-gnu";
    crossSystem.config = "riscv64-unknown-linux-gnu";
  };

  programs.less.lessopen = null;

  services.openssh = {
    enable = true;
    settings.PasswordAuthentication = false;
    settings.KbdInteractiveAuthentication = false;
    settings.PermitRootLogin = "yes";
  };

  users.users."root".openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAcIMQXhqO+792cNG4k22Wt1/yvnj6zqhmE2uvhcTJR/ theo@DESKTOP-KPPJ6C1"
  ];

  environment.systemPackages = with pkgs; [
    fastfetch
    iperf3
    gitMinimal
    curl
    libarchive
  ];

  nixpkgs.flake = {
    setNixPath = false;
    setFlakeRegistry = false;
  };

  system.installer.channel.enable = false;

}
