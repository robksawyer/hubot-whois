# Description
#   A hubot script that tells you more information about a domain name.
#
# Configuration:
#
# Commands:
#   hubot whois - <what the respond trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   robksawyer[@<org>]

var whois = require('node-whois')

module.exports = (robot) ->

  #
  # Check a domain name on namecheap
  #
  robot.respond /whois (.*)/, (msg) ->
    whois.lookup msg.match[1], (err, data) ->
      msg.send data