require 'spec_helper'

include TwitterApiHelper

describe "TwitterAPIHelper" do 

  it "returns all tweets from a given day for a given user", :vcr, record: :all do
    tweeted
    date = Time.new(2014, 01, 14, 12, 40, 37, "+00:00")
    expect(TwitterEntry.where(time_created: date).first.text).to eq "If you’re an @Rdio user then check out Trnsmit for importing iTunes playlists http://t.co/JUBuxFq2gN"
  end
  
end