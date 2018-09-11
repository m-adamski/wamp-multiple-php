# Wamp multiple PHP versions

This simple batch script allows you to dynamically select the PHP version to run the command.

## Configuration
In order to install the script, the php.bat file should be placed in the main Wamp program directory. This directory need to be added to PATH Environment Variable.

## How to use it?
Important from the script is very simple. It is enough to indicate the PHP version that we want to use to run the command.

```
> php 7.2 -v

PHP 7.2.9 (cli) (built: Aug 15 2018 23:10:01) ( ZTS MSVC15 (Visual C++ 2017) x64 )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.2.0, Copyright (c) 1998-2018 Zend Technologies
```

You can specify the full version you want to use, for example 7.2.9 or simply specify version 7.2 (in this case, the first version found will match, which matches the pattern 7.2. *).

## License
MIT