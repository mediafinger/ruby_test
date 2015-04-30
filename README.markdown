# RubyTest

A tiny repo to demonstrate how to set up a simple Ruby class with tests.


## The setup


### Ruby

In case you do not have this installed already, you can follow thise instructions:
http://guides.railsgirls.com/install/


### clone it from GitHub

You need to have **git** installed on your system - and you should have a GitHub account.

Then on your terminal change to the folder where you store your Ruby projects
and run:

`git clone git@github.com:mediafinger/ruby_test.git ruby_test` which will create a new folder `ruby_test`.

If you have never used GitHub before you could install their GUI to make it a bit simpler:

- Windows: https://windows.github.com/index.html
- OS X: https://mac.github.com/index.html
- Linux: I bet you already know how to use the terminal, so just use the `git` CLI (or look for another GUI)


### .ruby-version

The first commit adds a `.ruby-version` file (optional for this demo, but a good idea for real projects).
The content of the .ruby-version file is just the version number - in our case: `2.2.2`

Ruby version managers like `chruby` https://github.com/postmodern/chruby will read this information
and can automatically switch to the desired Ruby version (if it is installed on your system).

While I recommend **chruby** as it is the smallest and most modern tool, you can also use the similar
_rbenv_ or _rvm_ (which can do a lot of more things I personally never needed).


### .rubocop.yml

This file contains settings for the cops of the **rubocop** gem. They follow the Ruby styleguide
(read it: https://github.com/bbatsov/ruby-style-guide) but include some and exclude other
rubocop default settings.

To install rubocop run: `gem install rubocop`

To run it (do it often, if possible use it as a linter in your editor): `rubocop`

More options you find here: https://github.com/bbatsov/rubocop

And read here why formatting your code is important:
http://ruby-for-beginners.rubymonstas.org/03-learning_to_program/03-formatting_code.html


### minitest

Install the latest version with `gem install minitest`

Run it manually with: `ruby -Ilib:test test/attendee_test.rb`

Read more about it: https://github.com/seattlerb/minitest


## What now?

Now that you have a working setup to test and linter (with rubocop) your Ruby code, feel free to
add more classes with more code and more tests!

Remember that `rubocop` will notify you about syntax errors and `minitest` will tell you if
your tests are all green or failing (if you write any). But you can also just open the
**interactive ruby console** and play around with your code!

Inside your project folder run `irb`

Inside of irb run `load './attendee.rb'` (and repeat when you change the file!)

and use the class:

- `attendee = Attendee.new("Andreas")`
- `attendee.to_s`

**Have fun!**
