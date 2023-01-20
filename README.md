# Jellyfin Server Flatpak

Local Build Steps (may take 30 minutes or more)

Building for Flatpak is WIP. The purpose of local building is to test and report issues. If you have a GitHub account you can also download the builds produced by GitHub Actions.

Setup Flatpak on your distro https://flatpak.org/setup/

`flatpak remote-add --user --if-not-exists flathub-user https://flathub.org/repo/flathub.flatpakrepo`

`flatpak install flathub-user org.flatpak.Builder -y`

`wget https://raw.githubusercontent.com/istori1/jellyfin-server-flatpak/main/org.jellyfin.Jellyfin.yml`

`flatpak run org.flatpak.Builder --user --install --install-deps-from=flathub-user --force-clean build org.jellyfin.Jellyfin.yml`

`flatpak run org.jellyfin.Jellyfin`
