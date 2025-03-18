# app/controllers/page_controller.rb

class PageController < ApplicationController
  def index
    render({ template: 'page_templates/index' })
  end

  def game
    npc = %w[rock paper scissors]
    @pc = params.fetch('player_choice').downcase
    @npc = npc.sample

    case @pc
    when 'rock'
      if @npc == 'rock'
        @result = 'We tied!'
      elsif @npc == 'paper'
        @result = 'We lost!'
      elsif @npc == 'scissors'
        @result = 'We won!'
      end
    when 'paper'
      if @npc == 'paper'
        @result = 'We tied!'
      elsif @npc == 'scissors'
        @result = 'We lost!'
      elsif @npc == 'rock'
        @result = 'We won!'
      end
    when 'scissors'
      if @npc == 'scissors'
        @result = 'We tied!'
      elsif @npc == 'rock'
        @result = 'We lost!'
      elsif @npc == 'paper'
        @result = 'We won!'
      end
    end
    render({ template: 'page_templates/game' })
  end
end
