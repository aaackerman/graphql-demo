class Mutations::CreatePost < Mutations::BaseMutation
  null true

  argument :title, String, required: true
  argument :body, String, required: true
  argument :user_id, ID, required: true

  field :post, Types::PostType, null: true
  field :errors, [String], null: false

  def resolve(*args)
    post = Post.new(*args)

    if post.save
      {
        post: post,
        errors: []
      }
    else
      {
        post: nil,
        errors: post.errors.full_messages
      }
    end
  end
end
