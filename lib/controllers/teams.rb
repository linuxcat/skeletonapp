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
    team = Binary::Team.find(params[:id])
    return status 404 if team.nil?

    team.add_to_set(:members, params['memberid'])
    team.save
  end


end