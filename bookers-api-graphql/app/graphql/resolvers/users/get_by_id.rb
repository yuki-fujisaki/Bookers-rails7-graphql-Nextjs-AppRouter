class Resolvers::Users::GetById < GraphQL::Schema::Resolver
    type Types::UserType, null: false
    argument :id, ID, required: false

    def resolve(id:)
       User.find(id)
    end
end
