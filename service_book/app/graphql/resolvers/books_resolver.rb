module Resolvers
  class BooksResolver < BaseResolver
    type [Types::BookType], null: false
    def resolve
      ::Book.all
    end
  end
end