HOST_ARCH=$(uname -m)
URL="https://github.com/istori1/jellyfin-server-flatpak/releases/download"

if [ "$(which flatpak)" = "" ]; then

  echo Could not find flatpak on the host.
  echo Set up flatpak on your distro: https://flatpak.org/setup/

else

  if [ $HOST_ARCH = "x86_64" ]; then
    URL=$URL"/v10.8.9-alpha.2-flatpak/jellyfin_x86_64_alpha.2.flatpak"
  elif [ $HOST_ARCH = "aarch64" ]; then
    URL=$URL"/v10.8.9-alpha.2-flatpak/jellyfin_aarch64_alpha.2.flatpak"
  else
    URL=""
  fi
  
  # Add user flathub remote
  flatpak remote-add --user --if-not-exists flathub-user https://flathub.org/repo/flathub.flatpakrepo
  
  # Download bundle
  echo Downloading: $URL
  curl -L -o /tmp/jellyfin.flatpak $URL
  
  # Install bundle in current user
  flatpak install --user /tmp/jellyfin.flatpak -y
  
  # Delele bundle file
  rm /tmp/jellyfin.flatpak
  
  mkdir -p ~/.var/app/org.jellyfin.Jellyfin/media/Movies
  mkdir -p ~/.var/app/org.jellyfin.Jellyfin/media/Music
  mkdir -p ~/.var/app/org.jellyfin.Jellyfin/media/Shows
  mkdir -p ~/.var/app/org.jellyfin.Jellyfin/media/Books
  mkdir -p ~/.var/app/org.jellyfin.Jellyfin/media/Photos

fi

# mkdir -p ~/.config/systemd/user
# systemctl --user enable --now jellyfin
# loginctl enable-linger $USER



