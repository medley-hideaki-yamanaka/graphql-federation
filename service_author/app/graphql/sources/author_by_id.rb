module Sources
  class AuthorById < GraphQL::Dataloader::Source
    def initialize
      @model_class = ::Author
    end

    def fetch(ids)
      records = @model_class.where(id: ids)
      ids.map { |id| records.find { |r| r.id == id.to_i } }
    end
  end
end
