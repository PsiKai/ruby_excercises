require 'net/http'
require "json"

api = "https://api.github.com/users/dhh/events/public"

escaped_uri = URI.escape(api)

uri = URI.parse(escaped_uri)

commits = JSON.parse(Net::HTTP.get(uri))

score = 0

commits.each do |commit|

  case commit["type"]
    when "IssuesEvent"
      score += 7
    when "IssueCommentEvent"
      score +=6
    when "PushEvent"
      score += 5
    when "PullRequestReviewCommentEvent"
      score += 4
    when "WatchEvent"
      score += 3
    when "CreateEvent"
      score += 2
    else
      score += 1
  end
end

puts "DHH's github score is " + score.to_s
