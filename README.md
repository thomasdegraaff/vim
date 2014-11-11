My personal vim config in a repo to easily share it among devices.

Installeer php-md en php-codesniffer:
$ sudo pear channel-discover pear.phpmd.org
$ sudo pear channel-discover pear.pdepend.org
$ sudo pear install --alldeps phpmd/PHP_PMD
$ pear install PHP_CodeSniffer

Install Drupal coding standards for php codesniffer:
$ cd ~ && wget http://ftp.drupal.org/files/projects/coder-7.x-2.2.tar.gz && tar -xzvf coder-7.x-2.2.tar.gz
$ sudo cp -r ~/coder/coder_sniffer/Drupal /usr/share/php/PHP/CodeSniffer/Standards/

Clone this repo to .vim in your homedir, and link the vimrc in this repo to .vimrc in your home-dir.

Add /home/.../.vim/scripts to the path (.bashrc PATH=$PATH:/home/.../.vim/scripts).

Clone Vundle in the correct dir:
$ cd /home/.../.vim/bundle
$ git clone https://github.com/gmarik/Vundle.vim.git Vundle.vim

Launch vim and run :PluginInstall


