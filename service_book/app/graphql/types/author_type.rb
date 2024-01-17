# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    key fields: "id", resolvable: false
    extend_type

    field :id, ID, null: false, external: true
  end
end
