# encoding: UTF-8
require 'sinatra/base'
require "haml" 

class App < Sinatra::Base

  BREEDS = [
    {name: 'Abisinio', image: 'http://upload.wikimedia.org/wikipedia/commons/0/0a/Kamee01.jpg'},
    {name: 'American shorthair', image: ''},
    {name: 'American wirehair', image: ''},
    {name: 'Angora turco', image: ''},
    {name: 'Azul ruso', image: ''},

    {name: 'Gato balinés', image: ''},
    {name: 'Bengala (animal)', image: ''},
    {name: 'Burmés', image: ''},
    {name: 'Bobtail japonés', image: ''},
    {name: 'Bombay (gato)', image: ''},
    {name: 'Bosque de Noruega', image: ''},
    {name: 'British Shorthair', image: ''},
    {name: 'Burmilla', image: ''},
  ]

  get '/' do
    @cats = BREEDS
    haml :index, layout: true
  end

  get '/raza/:id' do |id|
    @cat = BREEDS[id.to_i]
    haml :show, layout: true
  end
end
