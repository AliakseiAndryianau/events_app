class UserSerializer < BaseSerializer
  require_relative '../queries/user'
  include Queries

  cache_options store: Rails.cache, namespace: 'jsonapi-serializer', expires_in: 1.hour

  attributes :first_name, :last_name, :company_name, :company_title

  has_many :timeslots do |object, params|
    Queries::User.new.call(params[:query_type], object.id)
  end
  # has_many :timeslot_bookmarks
end
