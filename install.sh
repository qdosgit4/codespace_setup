##  export DEBIAN_FRONTEND=noninteractive

sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install emacs-nox tmux -y

mkdir -p ~/.emacs.d
echo "(require 'package)
(add-to-list 'package-archives '(\"melpa\" . \"https://melpa.org/packages/\") t)
(package-refresh-contents)" >> ~/.emacs.d/init.el

curl -fsSL https://install.julialang.org | sh
