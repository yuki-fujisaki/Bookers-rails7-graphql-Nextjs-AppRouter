module Types
  class MutationType < Types::BaseObject
    field :create_user, resolver: Mutations::Users::Create
    field :update_user, resolver: Mutations::Users::Update
    field :delete_user, resolver: Mutations::Users::Delete
  end
end
