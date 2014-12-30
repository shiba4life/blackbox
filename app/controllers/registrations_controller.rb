class RegistrationsController < Devise::RegistrationsController
  before_filter :redirect_to_batch, only: [:after_sign_up_path_for, :after_sign_in_path_for]
  protected

  def after_sign_up_path_for(resource)
    puts "hello"
  end

  def after_sign_in_path_for(resource)
    puts "hello"
  end

  def redirect_to_batch
    if session[:batch_id]
      redirect_to Batch.find(session[:batch_id])
    end
  end

end