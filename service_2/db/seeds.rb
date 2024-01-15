# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create!(
  [
    {
      title: 'booke title 1',
      author_id: 3
    },
    {
      title: 'booke title 2',
      author_id: 1
    },
    {
      title: 'booke title 3',
      author_id: 2
    },
    {
      title: 'booke title 4',
      author_id: 2
    },
    {
      title: 'booke title 5',
      author_id: 2
    },
    {
      title: 'booke title 6',
      author_id: 2
    }
  ]
)
