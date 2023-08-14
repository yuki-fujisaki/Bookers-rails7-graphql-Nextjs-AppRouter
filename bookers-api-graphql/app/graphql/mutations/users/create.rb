class Mutations::Users::Create < GraphQL::Schema::Mutation
    field :user, Types::UserType, null: true

    argument :name, String, required: true
    argument :email, String, required: true

    def resolve(**args)
      user = User.create!(args)
      {
        user: user
      }
    end
  end
