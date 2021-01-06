# [WIP] Mansible

These are my ansible playbooks for a first-start set up of a Manjaro environment depending on the device.

## Variables

* `git.username` - The username for git global config.
* `git.email` - The email for git global config.

## Files

* user/wuser > files - Change files here to copy another dotfiles, face or wallpapers.

## Usage

```bash
./setup.sh
```

The script will install ansible and the required modules, then will ask for your device and user password.

## ToDo

* [ ] Polishing and refactoring.
* [ ] KDE dotfiles.
* [ ] Bash dotfiles.
* [ ] Stow script.
