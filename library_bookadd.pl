#!/usr/bin/perl
use strict;
use warnings;

# Library data structure: A hash of arrays
my %library;

# Function to add a new book to the library
sub add_book {
    my ($title, $author, $year, $genres_ref) = @_;
    
    push @{$library{$title}}, {
        author => $author,
        year => $year,
        genres => $genres_ref
    };
}

# Function to print all books in the library
sub print_books {
    foreach my $title (keys %library) {
        print "Title: $title\n";
        foreach my $book (@{$library{$title}}) {
            print "  Author: $book->{author}\n";
            print "  Year: $book->{year}\n";
            print "  Genres: " . join(", ", @{$book->{genres}}) . "\n";
        }
        print "\n";
    }
}

# Example: Adding books to the library
add_book("The Great Gatsby", "F. Scott Fitzgerald", 1925, ["Fiction", "Classic"]);
add_book("1984", "George Orwell", 1949, ["Dystopian", "Fiction"]);
add_book("To Kill a Mockingbird", "Harper Lee", 1960, ["Fiction", "Classic", "Drama"]);

# Print all books in the library
print_books();

