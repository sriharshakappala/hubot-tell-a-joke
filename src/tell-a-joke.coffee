# Description
#   A hubot script that tells a random Chuck Norris joke :)
#
# Commands:
#   hubot tell a joke - Returns with a random Chuck Norris joke
#
# Author:
#   Sri Harsha Kappala <sriharsha.kappala@hotmail.com>

module.exports = (robot) ->
  robot.respond /tell a joke/, (msg) ->
    url = 'http://api.icndb.com/jokes/random'
    query = ''

    robot.http(url).query(query).get()((err, res, body) ->
      jsonBody = JSON.parse(body)
      joke = jsonBody.value.joke
      msg.send joke
    )
