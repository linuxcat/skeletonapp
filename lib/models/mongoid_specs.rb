module Binary

  class Team
    include Mongoid::Document
    include Mongoid::Timestamps

    field :team_name, type:String
    field :team_lead, type:String
    field :members, type:Array


  end


  class User
    include Mongoid::Document
    include Mongoid::Timestamps

    field :username, type:String
    field :email, type:String
    field :profile, type:Moped::BSON::ObjectId


  end


end