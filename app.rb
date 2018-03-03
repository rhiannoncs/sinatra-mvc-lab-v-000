require_relative 'config/environment'
require_relative 'models/piglatinize.rb'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinized = PigLatinize.new(params[:user_phrase])

    erb :piglatinize
  end
end
