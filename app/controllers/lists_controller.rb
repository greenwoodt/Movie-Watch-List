class ListsController < ApplicationController
  def Lists
    @lists = Lists.all
  end
end
