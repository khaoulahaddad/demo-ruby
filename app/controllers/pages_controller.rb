class PagesController < ApplicationController
  def home
    
  end
  def connect
    if (Personne.where(cin: params[:cin]).take == nil)
      @personne = Personne.new nom: params[:nom], prenom: params[:prenom], cin: params[:cin]
      @personne.save
    end
    cookies[:user_id] = params[:cin]
    redirect_to :controller => 'livres', :action => 'liste'
  end
  def deconnect
    cookies.delete :user_id
    redirect_to :controller => 'pages', :action => 'home'
  end
end