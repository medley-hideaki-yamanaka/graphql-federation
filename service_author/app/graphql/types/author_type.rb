# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    key fields: "id"
    field :id, ID, null: false
    field :name, String, null: false

    def self.resolve_reference(reference, _context)
      ::Author.find(reference[:id])
    end
  end
end
