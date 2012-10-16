# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def gen_author(other = '')
  firstnames = ['Al', 'Ally', 'Betty', 'Cecilia', 'Clark', 'Dan', 'Danielle',
                'Pat', 'John', 'Roger', 'Norman', 'Kevin', 'Kate', 'Gill', 'Fred']

  lastnames = ['Hermann', 'Corman', 'Cane', 'Bates', 'Miller', 'Pritchard',
               'Morgan', 'Freeman', 'Letinsky', 'Davies', 'Chesterfield', 'Gibbons',
               'Tillard', 'Huntsman']

  begin
    author = firstnames.sample + ' ' + lastnames.sample
  end until author != other
  return author
end

def gen_authors
  first_author = gen_author
  rand(5) == 0 ? first_author + ', ' + gen_author(first_author) : first_author
end

def gen_title
  nouns = ['Chair', 'Cat', 'Table', 'Secret', 'Ruby', 'Past', 'Life', 'Wonder',
           'House', 'Trees', 'Hell', 'Heaven', 'Lust', 'Childhood', 'Vegetables',
           'Cheese', 'Elves', 'Demon', 'Angels', 'Woman', 'Whale', 'Rain']

  preps = ['in', 'with', 'of', 'from', 'and', 'for', 'as', 'like', 'above',
           'among']

  nouns.sample + ' ' + [preps.sample + ' ', ''].sample + nouns.sample
end

def generate(n)
  for i in 0..n
    title = gen_title
    Book.create(:title => title,
                :authors => gen_authors,
                :cover => 'cover.png',
                :status => rand(4)) unless Book.find_by_title(title)
  end
end

generate(250)