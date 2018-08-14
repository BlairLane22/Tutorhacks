class RegistrationsController < Devise::RegistrationsController

  def after_sign_in_path_for(resource)
    # if resource.userid == 'teacher'
    #   teacher_path(resource.id)
    # else
    #   student_path(resource.id)
    # end
    new_tutor_path(resource.id)
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  end

end
