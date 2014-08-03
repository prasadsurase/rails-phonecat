class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :snippet, :features, :os, :os_version
end
