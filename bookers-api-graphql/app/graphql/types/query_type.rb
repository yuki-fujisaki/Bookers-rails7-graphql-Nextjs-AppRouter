module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField
    
    # user
    field :users, resolver: Resolvers::Users::GetAll
  end
end
