phpenv - apache version
======================

phpenv extension.

Switing php modules for Apache

Installation
------------

    $ git clone https://github.com/garamon/phpenv-apache-version ~/.phpenv/plugins/phpenv-apache-version

### Mac OS X
#### Add apache module path to your $PATH
    $ echo 'export PHPENV_APACHE_MODULE_PATH="[apache_module_dir]"' >> ~/.bashrc
    $ source ~/.bashrc

    ex) If using Homebrew
    $ echo 'export PHPENV_APACHE_MODULE_PATH="$(brew --prefix httpd)/libexec"' >> ~/.bashrc
    $ source ~/.bashrc

Command Reference
-----------------
### phpenv apache-version
Sets the php module to be used in apache by writing the version name to the ~/.phpenv/php-apache-version file.

    $ phpenv apache-version 5.3.21

LICENSE
-------
(The MIT License)

Copyright &copy; 2013 Koichi Noto

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
