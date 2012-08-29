Jader.configure do |config|
  config.mixins_path = Rails.root.join('app','assets','javascripts','app', 'mixins')
  config.views_path = Rails.root.join('app', 'assets', 'javascripts', 'app', 'views')
end