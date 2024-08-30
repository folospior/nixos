{ config, pkgs, lib, ... }:
{

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = [
        "eDP-1,1920x1080@60,0x0,1"
	"HDMI-A-1,1920x1080@60,1920x0,1"
      ];

      "$terminal" = "alacritty";
      "$menu" = "wofi --show drun";
      "$screenshot" = "$HOME/editor_script/editor_script.sh";
      "$restartWaybar" = "pkill waybar; waybar &";
      "$changeWallpaper" = "echo $($HOME/pick_random_wallpaper.sh) > wallpaper_location.log";
      "$exitCmd" = "pkill hyprpaper && hyprctl dispatch exit";

      exec-once = [
        "waybar &"
	"nm-applet &"
	"hyprpaper &"
	"$changeWallpaper"
      ];

      env = [
        "XCURSOR_SIZE,24"
	"HYPRCURSOR_THEME,Posy's Cursor Black"
	"HYPRCURSOR_SIZE,24"
      ];

      general = {
        gaps_in = 5;
	gaps_out = 20;
	border_size = 2;
	"col.active_border" = "rgb(4c566a) rgb(5e81ac) 45deg";
	"col.inactive_border" = "rgb(2e3440)";
	resize_on_border = false;
	allow_tearing = false;
	layout = "dwindle";
      };

      decoration = {
        rounding = 10;
	active_opacity = 1.0;
	inactive_opacity = 1.0;
	drop_shadow = true;
	shadow_range = 4;
	shadow_render_power = 3;
	"col.shadow" = "rgba(1a1a1aee)";
	blur = {
	  enabled = true;
	  size = 3;
	  passes = 1;
	  vibrancy = 0.1696;
	};
      };

      animations = {
        enabled = true;
	bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
	animation = [
	  "windows, 1, 7, myBezier"
	  "windowsOut, 1, 7, default, popin 80%"
	  "border, 1, 10, default"
	  "borderangle, 1, 8, default"
	  "fade, 1, 7, default"
	  "workspaces, 1, 6, default"
	];
      };

      dwindle = {
        pseudotile = true;
	preserve_split = true;
      };

      master.new_status = "master";

      misc = {
        force_default_wallpaper = -1;
	disable_hyprland_logo = false;
      };

      input = {
        kb_layout = "pl";
	follow_mouse = 1;
	sensitivity = 0;
	touchpad.natural_scroll = true;
      };

      gestures.workspace_swipe = true;

      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, Return, exec, $terminal"
	"$mainMod SHIFT, Q, killactive"
	"$mainMod SHIFT, E, exec, $exitCmd"
	"$mainMod, Space, togglefloating"
	"$mainMod, P, exec, $menu"
	"$mainMod, I, pseudo"
	"$mainMod, J, togglesplit"
	"$mainMod, Escape, exec, $restartWaybar"
	"$mainMod, O, exec, $changeWallpaper"
	", Print, exec, $screenshot"
	"$mainMod, left, movefocus, l"
	"$mainMod, right, movefocus, r"
	"$mainMod, up, movefocus, u"
	"$mainMod, down, movefocus, d"
	"$mainMod, S, togglespecialworkspace, magic"
	"$mainMod SHIFT, S, movetoworkspace, special:magic"
	"$mainMod, mouse_up, workspace, e-1"
	"$mainMod, mouse_down, workspace, e+1"
      ] ++ lib.concatMap (n: [ 
    "$mainMod, ${toString n}, workspace, ${toString n}"
    "$mainMod SHIFT, ${toString n}, movetoworkspace, ${toString n}"
    ]) (lib.range 1 9);

      bindm = [
        "$mainMod, mouse:272, movewindow"
	"$mainMod, mouse:273, resizewindow"
      ];

      windowrulev2 = [
        "suppressevent maximize, class:.*"
      ];
    };
    systemd.variables = [ "--all" ];
  };
  programs.wofi = {
    enable = true;
    # config here soon
  };
}
