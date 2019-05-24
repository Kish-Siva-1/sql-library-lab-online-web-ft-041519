def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year 
  FROM books
  WHERE series_id = 1
  ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto 
  FROM characters
  WHERE length(motto) = (SELECT max(length(motto)) FROM characters)"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(*)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(*) DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, c.name
  FROM authors a
  LEFT JOIN series b
    ON a.id = b.author_id 
  LEFT JOIN subgenres c
    ON b.subgenre_id = c.id"
end

def select_series_title_with_most_human_characters
  "SELECT a.title 
  FROM series a
  LEFT JOIN characters b
    ON a.author_id = b.author_id
    AND a.subgenre_id = b.subgenre_id
  WHERE characters.species LIKE '%human%'
  GROUP BY a.title"
end

INSERT INTO series (id, title, author_id, subgenre_id) VALUES (1, "A Song of Ice and Fire", 1, 1), (2, "Second Series", 2, 2);

INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (1, "Lady", "Woof Woof", "direwolf", 1, 1), (2, "Tyrion Lannister", "A Lannister always pays his debts", "human", 1, 1), (3, "Daenerys Targaryen", "If I look back I am lost", "human", 1, 1), (4, "Eddard Stark", "Winter is coming", "human", 1, 1);


def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
