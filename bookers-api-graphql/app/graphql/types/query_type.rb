module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    
    # user
    field :users, resolver: Resolvers::Users::GetAll
    field :user, resolver: Resolvers::Users::GetById
  end
end
