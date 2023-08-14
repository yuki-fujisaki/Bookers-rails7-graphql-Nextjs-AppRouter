module Types
  class MutationType < Types::BaseObject
    field :create_user, resolver: Mutations::Users::Create
  end
end
