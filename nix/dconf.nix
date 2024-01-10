{
      "org/gnome/shell" = {
        disable-user-extensions = false;

        enabled-extensions = [
          "blur-my-shell@aunetx"
          "dash-to-dock@micxgx.gmail.com"
          "InternetSpeedMeter@alshakib.dev"
          "quick-settings-tweaks@qwreey"
          "gnome-compact-top-bar@metehan-arslan.github.io"
          "notification-banner-reloaded@marcinjakubowski.github.com"
          "user-theme@gnome-shell-extensions.gcampax.github.com"
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

      "org/gnome/shell/extensions/user-theme" = {
        name = "Yaru-prussiangreen-dark";
      };

      "org/gnome/desktop/interface" = {
        font-name = "Inter 10";
        document-font-name = "Inter 11";
        monospace-font-name = "Inter 10";
        gtk-theme = "adw-gtk3-dark";
        cursor-theme = "Adwaita";
        color-scheme = "prefer-dark";
        enable-hot-corners = false;
        font-antialiasing = "rgba";
        icon-theme = "Adwaita";
        show-battery-percentage = true;
        clock-show-date = true;
      };

      "org/gnome/desktop/sound" = {
        allow-volume-above-100-percent = true;
      };

      "org/gnome/desktop/remote-desktop/rdp" = {
        enable = true;
        screen-share-mode = "extend";
        view-only = false;
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

      "org/gnome/desktop/wm/preferences" = {
        titlebar-font = "Inter Bold 11";
        button-layout = ":close";
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
        binding = "<Super>Messenger";
        command = "flatpak run com.rtosta.zapzap";
        name = "Open WhatsApp";
      };
      
      "org/gnome/settings-daemon/plugins/media-keys" = {
        custom-keybindings = [
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" 
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" 
          "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/" 
        ];
      };

      "org/gnome/desktop/input-sources" = {
        xkb-options = ["caps:ctrl_modifier"];
      }; 
}
