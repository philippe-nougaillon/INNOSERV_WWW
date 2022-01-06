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
    ContactMailer.submitted(params[:email], params[:subject], params[:content]).deliver_now
    redirect_to contact_path, notice: 'Contact sended'
  end
end
