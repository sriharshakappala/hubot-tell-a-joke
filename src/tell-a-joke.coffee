# Description
#   A hubot script that tells a random joke :)
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot hello - <what the respond trigger does>
#   orly - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   Sri Harsha Kappala <sriharsha.kappala@hotmail.com>

module.exports = (robot) ->
  robot.respond /tell a joke/, (res) ->
    url = "http://api.icndb.com/jokes/random"

    robot.http(url).get()((err, res, body) ->
      jsonBody = JSON.parse(body)
      joke = jsonBody.value.joke
      msg.send joke


  robot.hear /tell a joke/, ->
    res.send "hello there!"
