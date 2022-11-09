class TicketsController < ApplicationController
    def index
        render json: Ticket.all, status: :ok
    end 
end
