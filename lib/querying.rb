def select_books_titles_and_years_in_first_series_order_by_year
#select the books, titles, and year in only the first series, and order
#them by year.
"SELECT books.title, books.year FROM books INNER JOIN series ON 
books.series_id=series.id WHERE series.id = 1 ORDER BY books.year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
  #find the character with the longest motto (maybe use max?)
  #return the name and motto of that character
  "SELECT characters.name, MAX(characters.motto) FROM characters GROUP BY 
  characters.motto ORDER BY LENGTH(characters.motto) DESC LIMIT 1;"\

  ## is length an aggregate? found it on google - research this.

end

def select_value_and_count_of_most_prolific_species
  #go through characters' species, and find the one repeated most - 'human'
  # SELECT COUNT(characters.species) - should return 8
  #return all of the values and the count.

  "SELECT species, COUNT(*) FROM characters GROUP BY species ORDER BY 
  COUNT(species) DESC LIMIT 1;"
  ## return the species, and count all of them from characters, group them by
  ## species, and order them by how many species are in highest to lowest
  ## only returning the highest.
end

def select_name_and_series_subgenres_of_authors
## we want the author name, and what the subgenre of their series is called
"SELECT authors.name, subgenres.name FROM authors, subgenres INNER JOIN series ON
series.author_id=authors.id WHERE series.subgenre_id = subgenres.id;"

end
# end goal: [["George R. R. Martin", "medieval"], ["Second Author", "space opera"]])


def select_series_title_with_most_human_characters
  ## Go through characters and find the human species.
  ## match the human species, series id with series is and return the name 
  "SELECT series.title FROM series INNER JOIN characters ON characters.series_id=series.id
  WHERE characters.species = 'human' ORDER BY species DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
"SELECT characters.name, COUNT(books.title) FROM characters, books INNER JOIN character_books
ON character_books.character_id = characters.id WHERE character_books.book_id = books.id GROUP BY characters.name
ORDER BY COUNT(books.title) DESC;"

## return the characters name and book count of all books they are in
  ## go through character_books and match the characters' names to the character_id.
  ## go through character_books and match the books_id to the books' id.
  ## match the series.id to book.id?????
  ## return the book count 
end

## FROM - where are they talking to each other - where is the scotch tape



# INSERT INTO series (id, title, author_id, subgenre_id) VALUES 
# (1, "A Song of Ice and Fire", 1, 1), (2, "Second Series", 2, 2);

# INSERT INTO books (id, title, year, series_id) VALUES 
# (1, "Game of Thrones", 1996, 1), (2, "A Clash of Kings", 1998, 1), 
# (3, "A Storm of Swords", 2000, 1), (4, "First Book", 2002, 2), 
# (5, "Second Book", 2003, 2), (6, "Third Book", 2005, 2);

# INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES 
# (1, "Lady", "Woof Woof", "direwolf", 1, 1), 
# (2, "Tyrion Lanister", "A Lanister always pays is debts", "human", 1, 1), 
# (3, "Daenerys Targaryen", "If I look back I am lost", "human", 1, 1), 
# (4, "Eddard Stark", "Winter is coming", "human", 1, 1);
# (5, "Character One", "motto one", "cylon", 2, 2), 
# (6, "Character Two", "motto two", "human", 2, 2), 
# (7, "Character Three", "motto three", "cylon", 2, 2), 
# (8, "Character Four", "motto four", "cylon", 2, 2);

# INSERT INTO character_books (id, book_id, character_id) VALUES 
# (1, 1, 1), (2, 1, 2), (3, 2, 2), (4, 3, 2), (5, 1, 3), (6, 2, 3), 
# (7, 3, 3), (8, 1, 4);
## for example (1, 1, 1) = (1, "game of thrones", "lady")

# INSERT INTO character_books (id, book_id, character_id) VALUES 
# (9, 4, 5), (10, 4, 6), (11, 5, 6), (12, 6, 6), (13, 4, 7), (14, 5, 7), 
# (15, 6, 7), (16, 4, 8);


