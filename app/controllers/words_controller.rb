class WordsController < ApplicationController

  def index
    @words = Word.all
    @text = Text.find(params[:text_id])
    @unknownWords = @text.words.where(known: false).order('id ASC')
  end

  def show
    @word = Word.find(params[:id])
  end

  def new
    @words = Word.where(text_id: params[:text_id]).order('id ASC')
    @word = Word.new
    @text = Text.find(params[:text_id])

  end

  def create

      # words_array = word_params[:value].split(" ")
      # language_id = @text.language_id
      # text_id = @text.id
      # @word = Word.new
      #
      # @word = Word.new
      # @word.value = word
      # @word.language_id = language_id
      # @word.known = false
      # @word.text_id = text_id
      # @word.save

      @word = Word.find(word_params[:id])
      @word.known = false
      @word.save

      @translation = Translation.new
      @translation.value = word_params[:value]
      @translation.language_id = word_params[:language_id]
      @translation.word_id = word_params[:id]
      @translation.save

    if @translation.save
       redirect_to new_text_word_path(@word.text.id)
    else
       render 'new'
    end

  end


  private

  def word_params
    params.require( :word ).permit( :value, :language_id, :text_id, :id)
  end

end
