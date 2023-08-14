class Mutations::Users::Update < GraphQL::Schema::Mutation
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :email, String, required: false

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(id:, **args)
      user = User.find(id)
      if user.update(args)
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
