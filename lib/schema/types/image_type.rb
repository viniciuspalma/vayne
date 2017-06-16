ImageType = GraphQL::ObjectType.define do
  name 'Image'

  field :full,   types.String
  field :group,  types.String
  field :sprite, types.String
  field :h,      types.Int
  field :w,      types.Int
  field :y,      types.Int
  field :x,      types.Int
end
