{ lib, config, pkgs, ... }:

{
    programs.waybar = {
        enable = true;
        settings = {
            mainBar = {
                layer = "top";
                position = "top";
                height = 10;
                spacing = 5;
                margin-left = 200;
                margin-right = 200;

                modules-left = [
                "hyprland/workspaces"
                ];

                modules-center = [
                    "clock#1"
                    "clock#2"
                    ];

                    "modules-right" = [
                    "pulseaudio"
                    "network"
                    "cpu"
                    "battery"
                    "memory"
                    "tray"
                ];

                "hyprland/workspaces" = {
                    disable-scroll = true;
                    format = "{name}";
                };

                "clock#1" = {
                    format = "{:%H:%M}";
                    tooltip = false;
                };

                "clock#2" = {
                    format = "{:%a | %m-%d}";
                    tooltip = false;
                };

                "pulseaudio" = {
                format = "{icon} {volume:2}%";
                format-bluetooth = "{icon}  {volume}%";
                format-muted = "MUTE";
                format-icons = {
                    headphones = "";
                    default = [
                    ""
                    ""
                    ];
                };
                scroll-step = 5;
                on-click = "pamixer -t";
                on-click-right = "pavucontrol";
                };

                "memory" = {
                    interval = 5;
                    format = "Mem {}%";
                };

                "cpu" = {
                    interval = 5;
                    format = "CPU {usage:2}%";
                };

                "battery" = {
                states = {
                    good = 95;
                    warning = 30;
                    critical = 15;
                };
                format = "{icon} {capacity}%";
                format-icons = [
                    ""
                    ""
                    ""
                    ""
                    ""
                ];
                };

                "tray" = {
                icon-size = 20;
                };

                "network" = {
                    interval = 5;
                    format-wifi = "  {essid} ({signalStrength}%)";
                    format-ethernet = "  {ifname}: {ipaddr}/{cidr}";
                    format-disconnected = "Disconnected";
                    tooltip-format = "{ifname}: {ipaddr}";
                };
            };
            
        };
        style = ''
        @define-color main @base00;
        @define-color mainc @base04;

        * {
            border: none;
            border-radius:0;
            padding: 0px;
        }

        window#waybar {
            border: 2px solid @mainc; 
            background: alpha(@main, 0.7);
            border-radius: 10px;
        }

        #workspaces,
        #clock.1,
        #clock.2,
        #clock.3,
        #pulseaudio,
        #memory,
        #cpu,
        #battery,
        #disk,
        #tray {
            margin-right: 5px;
            border-radius: 10px; 
        }

        #clock {
            border-radius: 10px;
            
        }
        
        #workspaces {
            padding: 4px;
            border-radius: 10px;
        }

        #workspaces button.active {
            border-radius: 10px;
            border: 2px solid @mainc;
        }

        #workspaces button {
            transition-property: background-color;
            transition-duration: 0.5s;

        }

        #workspaces button:hover {
            border-radius: 10px;
            background: lighter(@main);
        }

        #pulseaudio {
            border-radius: 10px;
            color: @base0D;
        }
        #memory {
            border-radius: 10px;
            color: @base0C;
        }
        #cpu {
            border-radius: 10px;
            color: @base0F;
        }
        #battery {
            border-radius: 10px;
            color: @base0B;
        }
        #disk {
            border-radius: 10px;
            color: @base09;
        }

        #clock,
        #pulseaudio,
        #memory,
        #cpu,
        #battery,
        #disk {
            padding: 0 10px;
        }
        '';
    };
}
