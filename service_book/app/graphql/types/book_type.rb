# frozen_string_literal: true

module Types
  class BookType < Types::BaseObject
    key fields: "id"

    field :id, ID, null: false
    field :title, String
    field :author_id, Integer
    field :author, Types::AuthorType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def self.resolve_reference(reference, _context)
      # ::Book.find(reference[:id])
      _context.dataloader.with(::Sources::BookById).load(reference[:id])
    end

    def author
      { __typename: 'AuthorType', id: object[:author_id] }
    end
  end
end
