class LivresController < ApplicationController
  def liste
    @livres=Livre.all
  end
  def reserver
    @livre=Livre.find(params[:id])
    @livre.update(:etat =>'occuppe')
    @livre.save
    @user = Personne.find_by_cin(cookies[:user_id] )
    
    @reservation = Reservation.new livre_id: params[:id], persone_id: @user.id, date_emprunt: DateTime.now.to_date
    @reservation.save
    redirect_to :controller => 'livres', :action => 'liste'
  end
  def retour
    @user = Personne.find_by_cin(cookies[:user_id] )
    @reservation = Reservation.find_by persone_id: @user.id, date_retour: nil
    @livre=Livre.find(params[:id])
    if (@reservation != nil) && (@reservation.livre_id == @livre.id)
      @livre.update(:etat => 'libre')
      @livre.save
      @reservation.update(:date_retour => DateTime.now.to_date )
      @reservation.save
    end
      redirect_to :controller => 'livres', :action => 'liste'
  end
end