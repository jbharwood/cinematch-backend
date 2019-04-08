class FeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "feed_channel"
  end

  def unsubscribed
    puts "unsub"
    # Any cleanup needed when channel is unsubscribed
  end
end
