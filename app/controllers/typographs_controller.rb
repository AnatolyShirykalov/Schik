class TypographsController < ApplicationController
  require 'schik'
  def index

  end

  def new
    @typo = Typograph.new
  end

  def edit
  end

  def create
    @typo = Typograph.create(text: deshitenise)
    redirect_to @typo
  end

  def destroy
  end

  def show
    @typo = Typograph.find(params["id"])
  end

  def update
  end
  private
  def deshitenise
    schik = SchikRV.new
    schik.smart_quotes typo_params["text"]
  end
  def typo_params
    params.require("typograph").permit("text")
  end
end
