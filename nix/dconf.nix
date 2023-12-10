{
      "org/gnome/shell" = {
        disable-user-extensions = false;

        enabled-extensions = [
          "blur-my-shell@aunetx"
          "appindicatorsupport@rgcjonas.gmail.com"
          "dash-to-dock@micxgx.gmail.com"
          "InternetSpeedMeter@alshakib.dev"
          "quick-settings-tweaks@qwreey"
          "gnome-compact-top-bar@metehan-arsian.github.io"
        ];

        disabled-extensions = [];

        favorite-apps = [
          "org.gnome.Software.desktop"
          "org.gnome.Nautilus.desktop"
          "org.wezfurlong.wezterm.desktop"
          "org.mozilla.firefox.desktop"
          "com.spotify.Client.desktop"
          "com.stremio.Stremio.desktop"
        ];
      };

      "org/gnome/shell/extensions/dash-to-dock" = {
	      dock-position = "LEFT";
	      custom-theme-shrink = true;
	      dash-max-icon-size = 25;
	      show-trash = false;
	      running-indicator-style = "DASHES";
	      transparency-mode = "FIXED";
	      background-opacity = 0.5;
	      hot-keys = false;
	      show-icons-emblems = false;
      };

      "org/gnome/shell/extensions/quick-settings-tweaks" = {
        volume-mixer-enabled = false;
        user-removed-buttons = [ "DarkModeToggle" ];
      };

      "org/gnome/shell/extensions/notification-banner-reloaded" = {
        always-minimized = 1;
        anchor-horizontal = 1;
        animation-direction = 1;
      };
      
      "org/gnome/desktop/interface" = {
        font-name = "Inter 10";
        document-font-name = "Inter 11";
        monospace-font-name = "Inter 10";
        titlebar-font = "Inter Bold 11";
        gtk-theme = "Adwaita-dark";
        cursor-theme = "Adwaita";
        enable-hot-corners = false;
        font-anitaliasing = "rgba";
        icon-theme = "Adwaita";
        show-battery-percentage = true;
        clock-show-date = true;
      };

      "org/gnome/desktop/sound" = {
        allow-volume-above-100-percent = true;
      };

      "org/gnome/mutter" = {
        auto-maximize = false;
        center-new-windows = true;
      };

      "org/gnome/desktop/session".idle-delay = 300;
      
      "org/gnome/desktop/wm/keybindings" = {
        close = ["<Super>q"];
        move-to-workspace-left = ["<Shift><Super>h"];
        move-to-workspace-right = ["<Shift><Super>l"];
        switch-to-workspace-left = ["<Super>h"];
        switch-to-workspace-right = ["<Super>l"];
        toggle-fullscreen = ["<Super>f"];
        minimize = [];
      };

      "org/gnome/mutter/keybindings" = {
        toggle-tiled-left = ["<Super>j"];
        toggle-tiled-right = ["<Super>k"];
      };

      "org/gnome/settings-daemon/plugins/media-keys" = {
        www =  ["<Super>b"];
        screensaver = ["<Shift><Super>Escape"];
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
          binding = "<Super>Return";
          command = "wezterm";
          name = "Terminal";
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
        binding = "<Super>e";
        command = "nautilus /home/antid";
        name = "File Manager";
      };

      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
        binding = "<Shift><Super>period";
        command = "brightnessctl set +5%";
        name = "Increase Brightness";
      };
      
      "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
        binding = "<Shift><Super>comma";
        command = "brightnessctl set 5%-";
        name = "Decrease Brightness";
      };

      "org/gnome/settings-daemon/plugins/media-keys" = {
        custom-keybindings = [
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" 
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" 
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/" 
        ];
      };
}