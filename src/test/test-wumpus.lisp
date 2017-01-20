(var vows (require "vows")
     assert (require "assert"))

(pipe (vows.describe "A test suite")
      (.add-batch
        { "when dealing with the number One":
          { topic: 1
            "is larger than zero": (# (n)
                                      (assert.isTrue (> n 0))) }} )
      (.export module))

