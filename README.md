
Make Filetree
----

Create filetree from JSON.

### Usage

```
npm i --save-dev make-filetree
```

See `test/test.coffee`:

```coffee
filetree = require 'make-filetree'

filetree.make __dirname,
  dir:
    a: 'content of a'
    b:
      c: 'content of c'
```

### License

MIT