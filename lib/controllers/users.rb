class Users < AppBase

  get '/' do
    users = Binary::User.all
    json users
  end


  post '/' do
    user = Binary::User.new(:username => params['username'], :email => params['email'])
    user.save
  end



end