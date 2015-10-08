class RegistrationsController < Devise::RegistrationsController
  
  protected

  def update_resource(resource, params)
    resource.update_with_password(params.except(:current_password))
  end
end
