utils = module.exports = {}

utils.capitalize = (string)->
  string.charAt(0).toUpperCase() + string.slice(1)
