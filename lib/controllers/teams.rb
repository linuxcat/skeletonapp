class Teams < AppBase

  get '/' do
    teams = Binary::Team.all()
    json teams
  end

  post '/' do
    team = Binary::Team.new(:name => params['name'])
    team.save
  end

  put '/:id' do
    puts params[:id]
    team = Binary::Team.find(params[:id])
    return status 404 if team.nil?
    return status 400 if Binary::User.find(params['memberid']).nil?

    team.add_to_set(:members, params['memberid'])
    team.save
  end


end