module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"

    field :post, Types::PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    field :posts, [Types::PostType], null: true do
      description "Find all posts"
    end

    field :user, Types::UserType, null: true do
      description "Find a user by ID"
      argument :id, ID, required: true
    end

    field :users, [Types::UserType], null: true do
      description "Find all posts"
    end

    def post(id:)
      Post.find(id)
    end

    def posts
      Post.all
    end

    def user(id:)
      User.find(id)
    end

    def users
      User.all
    end
  end
end
