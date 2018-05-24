class HomeController < ApplicationController
    
    def trash_em
        @trash_em = List.where(:completed => true).destroy_all
        redirect_to lists_url, notice: 'All Marked Items Deleted Successfully.'
    end
    
    def trash_all
        @trash_all = List.all.destroy_all
        redirect_to lists_url, notice: 'All  Items Deleted Successfully.'
    end
    
end