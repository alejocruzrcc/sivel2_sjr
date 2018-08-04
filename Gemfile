source 'https://rubygems.org'

# Rails (internacionalización)
#gem "rails", '~> 5.2.0'
# Resuelve problema con minitest y rails 5.2.0
gem "rails", '~> 5.2.0', git: 'https://github.com/rails/rails.git', ref: '4887f97bd8a8859294ad02ccea20d83a94ec0812'

gem "rails-i18n"

gem 'bootsnap', '>=1.1.0', require: false

# Postgresql
gem "pg"#, '~> 0.21'

gem 'puma'

# Unifica CSSs
gem "sass"

gem 'font-awesome-rails' 

gem 'chosen-rails' 


# Colores en terminal
gem "colorize"

# Maneja variables de ambiente (como claves y secretos) en .env
#gem "foreman"

# Generación de PDF
gem "prawn"
gem "prawnto_2",  :require => "prawnto"
gem "prawn-table"

# Plantilla ODT
gem "odf-report"


# API JSON facil. Ver: https://github.com/rails/jbuilder
gem "jbuilder"

# Uglifier comprime recursos Javascript
gem "uglifier"

# CoffeeScript para recuersos .js.coffee y vistas
gem "coffee-rails"

# jquery como librería JavaScript
gem "jquery-rails"
gem "jquery-ui-rails"

# Seguir enlaces más rápido. Ver: https://github.com/rails/turbolinks
gem "turbolinks"

# Ambiente de CSS
gem "twitter-bootstrap-rails"
gem "bootstrap-datepicker-rails"

# Formularios simples 
gem "simple_form"

# Formularios anidados (algunos con ajax)
gem "cocoon", git: "https://github.com/vtamara/cocoon.git", branch: 'new_id_with_ajax'


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
gem "paperclip"

# Zonas horarias
gem "tzinfo"

# Motor SIP
gem 'sip', git: "https://github.com/pasosdeJesus/sip.git", branch: 'sip_grupoper'
#gem 'sip', path: '../sip'

# Motor de heb412
gem 'heb412_gen', git: "https://github.com/pasosdeJesus/heb412_gen.git"
#gem 'heb412_gen', path: '../heb412_gen'

# Motor de SIVeL 2
gem 'sivel2_gen', git: "https://github.com/pasosdeJesus/sivel2_gen.git", branch: 'sip_grupoper'
#gem 'sivel2_gen', path: '../sivel2_gen'

# Motor Cor1440
gem 'cor1440_gen', git: "https://github.com/pasosdeJesus/cor1440_gen.git"
#gem 'cor1440_gen', path: '../cor1440_gen'

# Los siguientes son para desarrollo o para pruebas con generadores
group :development do
  # Requerido por rake
  gem "thor"

  # Depurar
  #gem 'byebug'
  
  # Consola irb en páginas con excepciones o usando <%= console %> en vistasA
  gem 'web-console'

end

# Los siguientes son para pruebas y no tiene generadores requeridos en desarrollo
group :test do
  gem 'spring'
  gem 'rails-controller-testing'
  gem 'launchy'
  gem 'simplecov'
  gem 'selenium-webdriver'
  gem 'connection_pool'
  gem 'minitest-reporters'
  gem 'minitest-rails-capybara'
  gem 'poltergeist'
  
  # Para examinar errores, usar "rescue rspec" en lugar de "rspec"
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
end

