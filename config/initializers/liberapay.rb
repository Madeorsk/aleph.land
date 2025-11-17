# frozen_string_literal: true

Rails.application.configure do
  config.x.liberapay_url = ENV['LIBERAPAY_URL'] || ''
  config.x.liberapay_donations_goal = ENV['LIBERAPAY_DONATIONS_GOAL'] || ''
  config.x.liberapay_donations_status = ENV['LIBERAPAY_DONATIONS_STATUS'] || ''
end
