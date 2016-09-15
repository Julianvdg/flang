class WordsController < ApplicationController

  def index
    @words = Word.all
    @text = Text.find(params[:text_id])
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @word = Word.new
    @text = Text.find(params[:text_id])

  end

  def create
    @text = Text.find(params[:text_id])

    words_array = word_params[:value].split(" ")
    language_id = @text.language_id
    text_id = @text.id
    @word = Word.new

    words_array.each do |word|
      if Word.where(value: word).blank?
      @word = Word.new
      @word.value = word
      @word.language_id = language_id
      @word.known = false
      @word.text_id = text_id
      @word.save
      end
    end

    if @word.save
       redirect_to text_words_path(text_id:@text.id)
    else
       render 'new'
    end

  end


  private

  def word_params
    params.require( :word ).permit( :value, :language_id, :text_id)
  end

end
