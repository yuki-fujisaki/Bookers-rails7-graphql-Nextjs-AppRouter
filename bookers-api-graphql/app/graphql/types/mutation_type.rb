module Types
  class MutationType < Types::BaseObject
    field :create_user, resolver: Mutations::Users::Create
    field :update_user, resolver: Mutations::Users::Update
  end
end
