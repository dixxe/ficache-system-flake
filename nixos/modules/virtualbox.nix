{
  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = ["ficache"];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true; 
}