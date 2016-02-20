# Game of Life


This is my implementation of the Conway's Game of Life. It is a Ruby 2.3 app running in Docker.

From Wikipedia...

> The Game of Life, also known simply as Life, is a cellular automaton devised by the British mathematician John Horton Conway in 1970.

> The "game" is a zero-player game, meaning that its evolution is determined by its initial state, requiring no further input. One interacts with the Game of Life by creating an initial configuration and observing how it evolves or, for advanced players, by creating patterns with particular properties.

## Usage

To build and then run the image, enter this command:

    $ make build run

To build and then run the test suite, enter this command:

    $ make build test

Currently, This will only create a Blinker. Adding more life forms will involve updating the binary file

## The Rules
1. Any live cell with fewer than two live neighbours dies, as if caused by under-population.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by over-population.
4. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/game_of_life/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
