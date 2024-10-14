{ ... }:

{
  systemd.services.setBatteryChargeThreshold = {
    description = "Set the battery charge threshold";
    after = [ "multi-user.target" ];

    serviceConfig = {
      Type = "oneshot";
      Restart = "on-failure";
    };

    startLimitBurst = 0;

    script = ''
      echo 60 > /sys/class/power_supply/BAT0/charge_control_end_threshold
    '';

    wantedBy = [ "multi-user.target" ];
  };
}