# encoding: UTF-8

Sivel2Sjr::Engine.routes.draw do
  get '/desplazamientos/nuevo' => 'desplazamientos#nuevo'
  get '/respuestas/nuevo' => 'respuestas#nuevo'

  get '/casos/lista' => 'casos#lista'
  get '/casos/nuevaubicacion' => 'casos#nueva_ubicacion'
  get '/casos/nuevavictima' => 'casos#nueva_victima'
  get '/casos/nuevopresponsable' => 'casos#nuevo_presponsable'
  get "/casos/busca" => 'casos#busca'
  patch "/actos/agregar" => 'actos#agregar' 
  get "/actos/eliminar" => 'actos#eliminar'
  get "/personas" => 'personas#index'
  get "/personas/remplazar" => 'personas#remplazar'

  resources :casos, path_names: { new: 'nuevo', edit: 'edita' }

  namespace :admin do
    ::Ability.tablasbasicas.each do |t|
      if (t[0] == "Sivel2Sjr") 
        c = t[1].pluralize
        resources c.to_sym, 
          path_names: { new: 'nueva', edit: 'edita' }
      end
    end
  end


end
