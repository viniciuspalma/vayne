class Image < Dry::Struct
  constructor_type :schema

  attribute :full,   Types::String
  attribute :group,  Types::String
  attribute :sprite, Types::String
  attribute :h,      Types::Int
  attribute :w,      Types::Int
  attribute :x,      Types::Int
  attribute :y,      Types::Int
end
