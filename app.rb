require 'sinatra'

get '/' do
  erb :'index.html'
end

get '/component/counter' do
  erb :'component/counter.html',
    { layout: false }, # options
    { n: params[:n].to_i } # locals
end
