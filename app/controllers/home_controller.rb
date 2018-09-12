class HomeController < ApplicationController
  def top
    @posts = Post.all.order(created_at: :desc)
  end
  
  def lesson
  end
  
  def gallary
  end
  
  def blog
  end
  
  def access
  end
  
  def contact
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(name: params[:name],tel: params[:tel],email: params[:email],content: params[:content])
      NotificationMailer.send_message(@contact).deliver_now
      redirect_to("/thanks")
  end
end
