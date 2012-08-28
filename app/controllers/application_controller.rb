class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :prepend_view_paths

  private

  # Adds Client-Side views to render path
  def prepend_view_paths
    prepend_view_path Rails.root.join('app', 'assets', 'javascripts', 'app', 'views')
  end

end
