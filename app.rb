require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinized = PigLatinizer.new(params[:user_phrase]).to_pig_latin

    erb :piglatinize
  end
end
