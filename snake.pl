#!/usr/bin/perl
use strict;
use warnings;

my $snake = [[5, 5]];  # Starting position
my ($width, $height) = (10, 10);  # Grid size
my $food = [int(rand($width)), int(rand($height))];
my $direction = 'right';

while (1) {
    # Print the grid
    print "\e[H\e[2J";  # Clear screen
    for my $y (0 .. $height - 1) {
        for my $x (0 .. $width - 1) {
            if (grep { $_->[0] == $x && $_->[1] == $y } @$snake) {
                print "O";  # Snake
            } elsif ($food->[0] == $x && $food->[1] == $y) {
                print "*";  # Food
            } else {
                print ".";
            }
        }
        print "\n";
    }

    # Move the snake
    my ($head_x, $head_y) = @{$snake->[0]};
    if ($direction eq 'right') { $head_x++; }
    elsif ($direction eq 'left') { $head_x--; }
    elsif ($direction eq 'up') { $head_y--; }
    elsif ($direction eq 'down') { $head_y++; }

    unshift @$snake, [$head_x, $head_y];

    # Check for food
    if ($head_x == $food->[0] && $head_y == $food->[1]) {
        $food = [int(rand($width)), int(rand($height))];
    } else {
        pop @$snake;  # Remove tail
    }

    # Exit on collision
    if ($head_x < 0 || $head_x >= $width || $head_y < 0 || $head_y >= $height) {
        print "Game Over!\n";
        last;
    }

    sleep 1;
}

