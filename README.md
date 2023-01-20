# Jellyfin Server Flatpak

Local Build Steps (may take 30 minutes or more)

`flatpak remote-add --user --if-not-exists flathub-user https://flathub.org/repo/flathub.flatpakrepo`

`flatpak install flathub-user org.flatpak.Builder -y`

`wget https://raw.githubusercontent.com/istori1/jellyfin-server-flatpak/main/org.jellyfin.Jellyfin.yml`

`flatpak run org.flatpak.Builder --user --install --install-deps-from=flathub-user --force-clean build org.jellyfin.Jellyfin.yml`
