{ ... }:

{
  services = {
    zapret = {
      enable = true;
      params = [
	"--dpi-desync-autottl=3"
	"--wssize 1:6"
	"--dpi-desync-fake-tls=0x00000000"
	"-dpi-desync-split-pos=1"
	"--dpi-desync=syndata,fake,split2"
	"--dpi-desync-repeats=6"
	"-dpi-desync-fooling=md5sig"
	"--new"
      ];
      whitelist = [
      	"googlevideo.com"
	"youtu.be"
	"youtube.com"
	"youtubei.googleapis.com"
	"youtubeembeddedplayer.googleapis.com"
	"ytimg.l.google.com"
	"ytimg.com"
	"jnn-pa.googleapis.com"
	"youtube-nocookie.com"
	"youtube-ui.l.google.com"
	"yt-video-upload.l.google.com"
	"wide-youtube.l.google.com"
	"youtubekids.com"
	"ggphs.com"
	"discord.com"
	"gateway.discord.gg"
	"cdn.discordapp.com"
	"discordapp.net"
	"discordapp.com"
	"discord.gg"
	"media.discordapp.net"
      ];
    };
  };
}
