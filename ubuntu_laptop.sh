#/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install git vim nodejs fonts-inconsolata fonts-ricty-diminished autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev libffi-dev curl imagemagick ctags sqlite libsqlite3-dev libpq-dev libreadline-dev make gcc byobu guake
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
~/.rbenv/bin/rbenv install 2.3.1
~/.rbenv/bin/rbenv global 2.3.1
~/.rbenv/bin/rbenv rehash
source ~/.bashrc
#curl -Lo- https://bit.ly/janus-bootstrap | bash
curl -L https://bit.ly/janus-bootstrap | bash
mkdir ~/.janus
cd ~/.janus && git clone https://github.com/bling/vim-airline.git
cd ~/.janus && git clone https://github.com/flazz/vim-colorschemes.git
cd ~/.janus && git clone https://github.com/jiangmiao/auto-pairs.git
cd ~/.janus && git clone https://github.com/tpope/vim-ragtag.git
cp -R ~/.janus/vim-colorschemes/colors ~/.vim/

cp ~/.vimrc ~/.vimrc.vsop
cat >> ~/.vimrc <<EOL
" my custom settings
set nocompatible
set t_Co=256

" colo guardian
colo greens
" colo elda
colo bluedrake
" colo radicalgoodspeed
colo Chasing_Logic

" let g:airline_theme='luna'
let g:airline_theme='dark'
" let g:airline_powerline_fonts=1
set laststatus=2
EOL

~/.rbenv/shims/gem install bundler
~/.rbenv/shims/gem install pry

sudo apt-get -y install postgresql-9.4

source ~/.bashrc
#run 'bundle update' in rails projects folders.
