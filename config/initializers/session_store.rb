# Be sure to restart your server when you modify this file.

TestingProject::Application.config.session_store :cookie_store, key: '_testing_project_session'

Rails.application.config.middleware.insert_before(Rails.application.config.session_store, FlashSessionCookieMiddleware, Rails.application.config.session_options[:key])