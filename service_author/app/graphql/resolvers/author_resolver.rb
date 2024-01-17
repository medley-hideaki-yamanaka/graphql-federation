module Resolvers
  class AuthorResolver < BaseResolver
    type Types::AuthorType, null: false
    argument :id, String, required: true
    def resolve(params)
      ::Author.find(params[:id])
    end
  end
end