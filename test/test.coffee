
filetree = require '../filetree.coffee'

filetree.make __dirname,
  dir:
    a: 'content of a'
    b:
      c: 'content of c'