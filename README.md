My personal vim config in a repo to easily share it among devices.

Clone this repo to .vim in your homedir, and link the vimrc in this repo to .vimrc in your home-dir.

Make /home/.../.vim/scripts/php_ctags.sh executable and add /home/.../.vim/scripts to the path (.bashrc PATH=$PATH:/home/.../.vim/scripts).

Installeer php-md en php-codesniffer:
$ sudo pear channel-discover pear.phpmd.org
$ sudo pear channel-discover pear.pdepend.org
$ sudo pear install --alldeps phpmd/PHP_PMD
$ pear install PHP_CodeSniffer

Install Drupal coding standards for php codesniffer:
$ cd ~ && wget http://ftp.drupal.org/files/projects/coder-7.x-2.2.tar.gz && tar -xzvf coder-7.x-2.2.tar.gz
$ sudo cp -r ~/coder/coder_sniffer/Drupal /usr/share/php/PHP/CodeSniffer/Standards/


