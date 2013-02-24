Reasonable compilation of Haskell Vim configs
=============================================

What is this?
-------------
This repo is a compilation of the "best of the best" pieces of vim configuration that I have
collected during the last one or two years of Haskell programming using Vim as a development
environment. My choices regarding what to include here and HOW to include it are based on these
guidelines:

  * **Cost/benefit ratio:** The functionalities provided here should be EASY to use, without
    incurring in a lot of OS hacking, and provide reasonable comfort while developing.

  * **Independence:** As much as possible, features inside this "compilation" should work for any
    distribution of Vim, and be helpful to as many Haskell programmers as possible, using the
    most diverse Vim environments and operating systems. The functionalities are divided in two
    main categories (two files): plugin-independent and plugin-dependent.

  * **Graceful degradation:** This means that _as many_ features _as possible_ are enabled, but
    very few requirements are made on your Vim environment or OS. If you don't have what it takes
    to use something, it will _just not be available, without annoying error messages_.


What exactly is included?
-------------------------
As said above, the functionalities are divided between plugin-independent and plugin-dependent.
Unfortunately, there is very few useful configs you can enable to help you without using plugins, so
_it is advisable to manage plugins in your Vim setup using [Vundle](https://github.com/gmarik/vundle)_.

### Plugin-independent features ###
As of now, there are only two very basic features which are usable without enabling plugin management
in your Vim... I hope that in the near future more features become available as I find them out.

  * **Beautify current hs file:** The key sequence _\<leader\>hB_ is mapped to run the current Haskell
    source file being edited through the
    [awesome source-code beautifier](https://github.com/jaspervdj/stylish-haskell) developed by
    [Jasper van der Jeugt](http://jaspervdj.be). Yeah, this relies on you having this external
    tool installed, otherwise it will not work.

  * **Conceal-style displaying of nice Haskell symbols:** For those of you who don't know, Vim (7.3+)
    has a handy feature, [Conceal](http://vimdoc.sourceforge.net/htmldoc/version7.html#new-conceal),
    which is able to _dynamically_ substitute certain character sequences in files for some others.
    Here, _dynamically_ means that the file on disk remains untouched, the file is only displayed
    differently on-screen. Furthermore, characters on the line being _currently edited_ are never
    concealed, so that when editing some line, you can always see "the real deal". In our haskell
    config, lots of good-looking unicode chars are shown, among them lambdas, type arrows, typeclass
    constraint arrows, has-type symbols (four dots), monadic bind, function composition, etc...
    ```haskell
    map (λx → x+1) [1, 2, 3, 4]  ∷ Num a ⇒ [a]
    repl = forever (putStr "repl> " » getLine »= putStrLn)
    print = putStrLn ∘ show
    ```
