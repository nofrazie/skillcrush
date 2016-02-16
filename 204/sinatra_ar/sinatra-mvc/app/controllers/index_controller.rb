require 'sinatra'

get '/newpage' do
  erb :newpage
end

get '/:birthdate' do
  birth_path_num = Person.get_birth_path_num(params[:birthdate])
  @message = Person.get_birth_path_message(birth_path_num)
  erb :index
end

def valid_birthdate(input)
  if input.length == 8 && !input.match(/^[0-9]+[0-9]$/).nil?
    return true
  else
    return false
  end
end

get '/' do
  erb :form
end

post '/' do
  birthdate = params[:birthdate]
  if valid_birthdate(birthdate)
    birth_path_num = Person.get_birth_path_num(birthdate)
    redirect "/message/#{birth_path_num}"
  else
    @error = "You should enter a valid birthdate in the form of mmddyyyy."
    erb :form
  end
end

get '/message/:birth_path_num' do
  birth_path_num = params[:birth_path_num].to_i
  @message = Person.get_birth_path_message(birth_path_num)
  erb :index
end
