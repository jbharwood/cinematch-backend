class FeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "feed_channel"
    puts "something bigggggggggggggggggggggggg"
    # var subscription = App.cable.subscriptions.create({channel: "FeedChannel", room_id: 1});
  end

  def unsubscribed
    puts "unsub"
    x = Feed.find(params[:id])
    x.unsubscribe()
    # Any cleanup needed when channel is unsubscribed
  end
end
