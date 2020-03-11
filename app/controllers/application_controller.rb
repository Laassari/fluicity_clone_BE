class ApplicationController < ActionController::API
  include ActionController::Serialization

  serialization_scope :view_context
end
