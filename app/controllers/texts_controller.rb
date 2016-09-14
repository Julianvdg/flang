class TextsController < ApplicationController

  def index
    @texts = Text.all
  end

  def show
    @text = Text.find(params[:id])
  end

  def new
    @text = Text.new
  end

  def create
    text_params = params.require( :text ).permit( :text, :language_id)

    @text = Text.new( text_params )


    if @text.save
       redirect_to new_text_word_path(text_id:@text.id)
    else
       render 'new'
    end
  end

end
