Types::ImageType = GraphQL::ObjectType.define do
  name 'Image'

  field :id,     !types.ID
  field :full,   types.String
  field :group,  types.String
  field :sprite, types.String
  field :height, types.Int
  field :width,  types.Int
  field :axis_y, types.Int
  field :axis_x, types.Int
end
