class MemberController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_title
  before_action :authenticate_user!  # 這個是 devise 提供的方法，先檢查必須登入
  before_action :authenticate_admin  # 再檢查是否有權限

  layout "bootstrap"

  def index
    @title = ["使用者","列表"]
    @users = User.all
  end

  def set_title
    @title = ["使用者","列表"]
    @active = "users"
  end

  def member_update

    username    = params[:name]
    useremail    = params[:email]
    password    = params[:password]
    password2    = params[:password2]
    is_admin    = params[:admin]

    uid    = params[:id]
    @uuser = User.find(uid)    
    @uuser.name = username
    @uuser.email = useremail
    

    if password2.to_s.length.to_i > 4 && (password == password2)
      @uuser.password = password
    end
    
    @uuser.save
    if @uuser.save
      redirect_to action: "index" , notice: 'users was successfully created.'
    else
         
      aaasstr = " "
      @uuser.errors.full_messages.each do |message|
        aaasstr += message.to_s 
      end 
      render :html =>"#{aaasstr}"
      # @active = "users"      
      # @title = ["使用者","修改"]      
      # @user = User.find(@uuser.id)            
      # redirect_to action: 'member_edit', id: @uuser.id
      
      
    end
  end

  def user_create
     
    @title = ["使用者","新增"]
    @active = "users"
  end

  def member_edit
      @title = ["使用者","修改"]
      id = params[:id]
      @user = User.find(id)
  end

  def member_create
    name    = params[:name]
    email    = params[:email]
    password    = params[:password]
    password2    = params[:password2]
    if (!name.empty? && !email.empty? && !password.empty? && !password2.empty? )      
      user = User.create(:name=>name , :role => "admin" , 
                      :email=>email,:password=>password ,:level => 99)
      if user.save
        redirect_to action: "index" , notice: 'users was successfully created.'
      else
        
        @title = ["使用者","列表"]
        @active = "users"
        redirect_to action: "user_create" , notice: 'Msg was not created.'
        # render :html =>"#{name}/#{email}/#{password}/#{password2}"
      end
    else
      @title = ["使用者","列表"]
      @active = "users"
      redirect_to action: "user_create"            
      # render :html =>"#{name}/#{email}/#{password}/#{password2}"
    end
    

    
    # redirect_to action: "index"
    
  end

end
