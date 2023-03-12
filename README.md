# Jellyfin Server Flatpak

 <img src="https://github.com/istori1/jellyfin-server-flatpak/raw/main/localhost_8096.png" alt="Dashboard" width="400" height="350"> 

Support the creation of this flatpak via sats at the following lightning address `⚡️ boost2222@getalby.com`. Thanks for your support.

<br><br>Local Build Steps (may take 30 minutes or more)

Building for Flatpak is WIP. The purpose of local building is to test and report issues. If you have a GitHub account you can also download the builds produced by GitHub Actions.

Setup Flatpak on your distro https://flatpak.org/setup/

`flatpak remote-add --user --if-not-exists flathub-user https://flathub.org/repo/flathub.flatpakrepo`

`flatpak install flathub-user org.flatpak.Builder -y`

`git clone --depth 1 https://github.com/istori1/jellyfin-server-flatpak.git`

`cd jellyfin-server-flatpak`

`flatpak run org.flatpak.Builder --user --install --install-deps-from=flathub-user --force-clean build org.jellyfin.Jellyfin.yml`

<br><br>With pre-release files install by

`flatpak install --user path/to/downloaded/file.flatpak`

<br><br>*If you want to test how much time it takes to build on your hardware run these commands instead*

`flatpak run org.flatpak.Builder --user --install --install-deps-from=flathub-user --download-only --force-clean build org.jellyfin.Jellyfin.yml`

`time flatpak run org.flatpak.Builder --user --install --install-deps-from=flathub-user --disable-cache --force-clean build org.jellyfin.Jellyfin.yml`

<br><br>Create media folders

`mkdir -p ~/.var/app/org.jellyfin.Jellyfin/media/{Movies,Music,Shows,Books,Photos}`

<br><br>
### Easy Install

`curl -L https://github.com/istori1/jellyfin-server-flatpak/raw/main/install.sh | sh`

Extra step for the Raspberry Pi `flatpak override --user --device=all org.jellyfin.Jellyfin`

<br><br>Run Jellyfin with `flatpak run org.jellyfin.Jellyfin`
