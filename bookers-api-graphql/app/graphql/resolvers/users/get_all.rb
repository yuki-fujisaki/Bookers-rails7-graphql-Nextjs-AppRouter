class Resolvers::Users::GetAll < GraphQL::Schema::Resolver
  type [Types::UserType], null: false

  def resolve
    User.all
  end
end
