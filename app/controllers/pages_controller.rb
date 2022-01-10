class PagesController < ApplicationController
  def home
    @projects = Project.all
    fresh_when @projects
  end
  def about
  end
  def contact
  end
  def contact_submit
    @email_error = false
    if params[:email] =~ URI::MailTo::EMAIL_REGEXP
      ContactMailer.submitted(params[:email], params[:subject], params[:content]).deliver_now
      redirect_to contact_path, notice: 'Your form has been submitted.'
    else
      @email_error = true
      flash[:alert] = 'This email is invalid' 
      render :contact, status: :unprocessable_entity
    end

  end
end
