require 'sinatra'

get '/' do
  if params['number'] == nil
    erb :index, locals: {
      bottles: 99
    }
  else
    bottles = (params['number'].to_i)
    erb :index, locals: {
      number: bottles,
      bottles: bottles
  }
  end
end