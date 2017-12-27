# georgschlenkhoff dotfiles

This project, inspired by [Nicola](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/), easens management of dotfiles:

1. keep track of dotfiles in `$HOME` folder
1. add, or update any dotfiles with `config`
1. get started with a new machine quickly

## Getting started

Just execute the following commands:

```
git init --bare $HOME/.dotfiles
echo "alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
config config --local status.showUntrackedFiles no
```

Now you can manage dotfiles, such as

```
# Add, or update new file to git package
config add .vimrc

# See changes of dotfiles
config status

# Commit and upload package
config commit -m "message"
config push origin master
```

## More software resources

Programs to install on a plain vanilla machine:

* [Chrome](http://www.google.de/intl/de/chrome/browser/)
* [MacVim](https://github.com/b4winckler/macvim/releases)
* [OpenOffice](https://www.openoffice.org/de/)
* [ColorSnapper](http://colorsnapper.com/)
* [Textual](http://www.codeux.com/textual/)
* [Marked](http://markedapp.com/)
* [Dash](http://kapeli.com/dash)
* [MoneyMoney](http://moneymoney-app.com/)
* [Dropbox](https://www.dropbox.com/de/downloading?os=mac)
* [Android Studio](http://developer.android.com/sdk/index.html)
* [Genymotion](https://www.genymotion.com/?utm_source=dlvr.it&utm_medium=twitter#!/)
* [Kindle](https://itunes.apple.com/de/app/kindle/id405399194)
* [Monotype SkyFonts](https://skyfonts.com)
* [Sketch](http://bohemiancoding.com/sketch/)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [VMWare Fusion](https://www.vmware.com/go/downloadfusion)

## License

dotfiles is released under the [MIT License](http://www.opensource.org/licenses/MIT).
