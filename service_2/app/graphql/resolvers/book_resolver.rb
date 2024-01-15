module Resolvers
  class BookResolver < BaseResolver
    type Types::BookType, null: false
    argument :id, Integer, required: true
    def resolve(params)
      ::Book.find(params[:id])
    end
  end
end