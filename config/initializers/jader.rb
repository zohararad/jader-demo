Jader.configure do |config|
  config.mixins_path = Rails.root.join('app','assets','javascripts','app', 'mixins')
  config.views_path = Rails.root.join('app', 'assets', 'javascripts', 'app', 'views')
  # wait for assets to be ready
  Rails.application.config.after_initialize do
    # include javascripts available only from asset pipeline
    # config.includes << Rails.application.assets['app/lib/routes'].source
  end
end