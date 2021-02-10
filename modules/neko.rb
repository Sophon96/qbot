# frozen_string_literal: true

# Nekos (catgirls)
module Neko
  extend Discordrb::Commands::CommandContainer

  def self.neko
    JSON.parse URI.open('https://nekos.life/api/v2/img/neko').read
  end

  command :neko, {
    help_available: true,
    description: 'Queries an API for a neko',
    usage: '.neko',
    min_args: 0
  } do |event|
    log(event)

    Neko.neko['url']
  end
end
