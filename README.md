PokeMMO Installer for GNU/Linux
===============================

This program downloads and installs the PokeMMO client to a user's home
directory and provides a launcher script for a convientient
starting of the emulator.

PokeMMO is an emulator of several popular console games with additional
features and multiplayer capabilities.

But you can face other players and even form groups with your friends, do joint
battles and group missions.

You can call them to duel with you or even watch the fight with other people.

**Register**
------------

PokeMMO is a free to play mmorpg, come join a growing community as you level
up and discover new monsters.

To play this game, you need to make a free registration on the official website
- https://pokemmo.eu/account

The permitted usage of the PokeMMO game client is defined by a non-free license.
The content of this license can be found in the game client after an account's
first login or at https://pokemmo.eu/tos

**Important Request**
---------------------

This program downloads and installs the PokeMMO client to a user's home directory.

You need to enter in the hidden personal directory (**$HOME/.local/share/pokemmo/roms**)
the roms of the games in the versions **GameBoy Advance** and **Nintendo DS**.

 * Current Required Compatible ROMS: Black/White 1 (NDS)
 * Current Optional Content Compatible ROMS: Fire Red, Emerald (GBA)
 * Current Optional Visuals Compatible ROMS: HeartGold, SoulSilver (NDS)

> **You must have the legal right to use that rom. We will not supply you with
> the roms, or help you find them as they are copyrighted.** 

**Installation dependency: Debian/Ubuntu/GNU/Linux**
----------------------------------------------------

    # apt install default-jre make openssl zenity

When all these dependencies have installed, simply run the script.

Next you need to compile this release.

**Compilation**
---------------

To build game, do from the source directory: (Requires root access for compilation)

    # make install

Once completed, it will appear in the application menu or run the created binary:

    $ ./pokemmo

To make the removal, within the compiled directory, execute this command:
    
    # make uninstall

**License**
-----------
The script main is published under GPLv3 with OpenSSL exception,
the full license can be found in the LICENSE file.

> This is free software: you can redistribute it and/or modify it under
> the terms of the GNU General Public License as published by
> the Free Software Foundation, either version 3 of the License,
> or any later version.

- (c) Copyright holder 2012-2018 **PokeMMO.eu** <linux@pokemmo.eu>
- (c) Copyright 2017-2018 Carlos Donizete Froes [a.k.a coringao]
