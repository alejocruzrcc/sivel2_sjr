source 'https://rubygems.org'

#ruby "2.1.5"

# Rails (internacionalización)
gem "rails", '~> 4.2.3.rc1'
gem "rails-i18n"

# Postgresql
gem "pg"

# Unifica CSSs
gem "sass"

# Colores en terminal
gem "colorize"

# Maneja variables de ambiente (como claves y secretos) en .env
#gem "foreman"


# API JSON facil. Ver: https://github.com/rails/jbuilder
gem "jbuilder"

# Uglifier comprime recursos Javascript
gem "uglifier", '>= 1.3.0'

# CoffeeScript para recuersos .js.coffee y vistas
gem "coffee-rails", '~> 4.1.0'

# jquery como librería JavaScript
gem "jquery-rails"
gem "jquery-ui-rails"
gem "jquery-ui-bootstrap-rails", git: "https://github.com/kristianmandrup/jquery-ui-bootstrap-rails"

# Seguir enlaces más rápido. Ver: https://github.com/rails/turbolinks
gem "turbolinks"

# Ambiente de CSS
gem "twitter-bootstrap-rails"
gem "bootstrap-datepicker-rails"

# Formularios simples 
gem "simple_form"

# Formularios anidados (algunos con ajax)
gem "cocoon", github: "vtamara/cocoon"

# Autenticación y roles
gem "devise"
gem "devise-i18n"
gem "cancancan"
gem "bcrypt"

# Pagina listados
gem "will_paginate"

# ICU con CLDR
gem 'twitter_cldr'
 
# Maneja adjuntos
gem "paperclip", "~> 4.1"

# Zonas horarias
gem "tzinfo"
gem "tzinfo-data"

# Motor SIP
gem 'sip', github: 'pasosdeJesus/sip'
#gem 'sip', path: '../sip'

# Motor de SIVeL 2
gem 'sivel2_gen', github: 'pasosdeJesus/sivel2_gen', branch: 'consip'
#gem 'sivel2_gen', path: '../sivel2_gen'

# Motor Cor1440
gem 'cor1440_gen', github: 'pasosdeJesus/cor1440_gen'
#gem 'cor1440_gen', path: '../cor1440_gen'

group :doc do
  # Genera documentación en doc/api con bundle exec rake doc:rails
  gem "sdoc", require: false
end

# Los siguientes son para desarrollo o para pruebas con generadores
group :development, :test do
  # Requerido por rake
  gem "thor"

  # Acelera desarrollo ejecutando en fondo. https://github.com/jonleighton/spring
  gem "spring"
  
  # Pruebas con rspec
  gem 'spring-commands-rspec'
  gem 'rspec-rails'

  # Un proceso para cada prueba -- acelera
  gem 'spork', '~> 1.0rc'

  # Maneja datos de prueba
  gem "factory_girl_rails", "~> 4.0", group: [:development, :test]

  # https://www.relishapp.com/womply/rails-style-guide/docs/developing-rails-applications/bundler
  # Lanza programas para examinar resultados
  gem "launchy"

  # Depurar
  #gem 'byebug'
  
  # Consola irb en páginas con excepciones o usando <%= console %> en vistasA
  gem 'web-console'

  # Para examinar errores, usar "rescue rspec" en lugar de "rspec"
  gem 'pry-rescue'
  gem 'pry-stack_explorer'



end

# Los siguientes son para pruebas y no tiene generadores requeridos en desarrollo
group :test do
  # Envia resultados de pruebas desde travis a codeclimate
  gem "codeclimate-test-reporter", require: nil
end

