class StatsController < ApplicationController
	before_filter :set_current_user
  def show
    puts("ATTEMPTING TO FIND A PLAYER FOR YOU")
    id = params[:id] # retrieve player ID from URI route
    @player = Player.find(id) # look up player by unique ID
    puts("FOUND PLAYER, FOUND PLAYER, FOUND PLAYER, FOUND PLAYER")
    puts(@player)
    puts(@player.stat.pass_att)
    # will render app/views/stats/show.<extension> by default
  end
  
  def create
    
  end

end
