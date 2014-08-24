
fs = require 'fs'
path = require 'path'

exports.make = (base, files) ->
  if not fs.existsSync(base)
    throw new Error "path not found <#{base}>"

  stat = fs.statSync base
  if not stat.isDirectory()
    throw new Error "path not a directory <#{base}>"

  for file, content of files
    filepath = path.join base, file
    if fs.existsSync filepath
      console.warn "exists path <#{filepath}>"
      return
    if (typeof content) is 'string'
      fs.writeFileSync filepath, content
    else if (typeof content) is 'object'
      fs.mkdirSync filepath
      exports.make filepath, content