class Image < Dry::Struct
  constructor_type :schema

  attribute :full,   Types::Strict::String
  attribute :group,  Types::Strict::String
  attribute :sprite, Types::Strict::String
  attribute :h,      Types::Strict::Int
  attribute :w,      Types::Strict::Int
  attribute :x,      Types::Strict::Int
  attribute :y,      Types::Strict::Int
end
