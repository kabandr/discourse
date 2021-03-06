# frozen_string_literal: true

class WatchedWordSerializer < ApplicationSerializer
  attributes :id, :word, :replacement, :action

  def action
    WatchedWord.actions[object.action]
  end

  def include_replacement?
    action == :replace || action == :tag
  end
end
