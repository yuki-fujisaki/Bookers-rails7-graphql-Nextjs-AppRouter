class Mutations::Users::Delete < GraphQL::Schema::Mutation
    argument :id, ID, required: true

    field :id, ID, null: true
    field :errors, [String], null: false

    def resolve(id:)
      user = User.find(id)
      if user.destroy
        { id: id, errors: [] }
      else
        { id: nil, errors: user.errors.full_messages }
      end
    end
  end
