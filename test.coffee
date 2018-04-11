omitHash = (val) ->
  delete val.hash
  val

UI.registerHelper "test7_obj",   -> {}
UI.registerHelper "test8_obj",   -> {undef: undefined}
UI.registerHelper "test9_obj",   -> {two: 2, three: 3}
UI.registerHelper "test10_obj1", -> {one: 9}
UI.registerHelper "test10_obj2", -> {one: 1}

Tinytest.add "handlebars-obj", (test) ->
  Template["handlebars_obj_tests"].helpers
    "test1": (val) -> test.equal(omitHash(val), {})
    "test2": (val) -> test.equal(omitHash(val), {one: 1, two: 2})
    "test3": (val) -> test.equal(omitHash(val), {one: 1, undef: null})
    "test4": (val) -> test.equal(omitHash(val), {undef: null})
    "test5": (val) -> test.equal(omitHash(val), {one: 1, two: 2})
    "test6": (val) -> test.equal(omitHash(val), {one: 1, two: 2})
    "test7": (val) -> test.equal(omitHash(val), {})
    "test8": (val) -> test.equal(omitHash(val), {})
    "test9": (val) -> test.equal(omitHash(val), {one: 1, two: 2, three: 3, four: 4})
    "test10": (val)-> test.equal(omitHash(val), {one: 1})

  UI.render Template["handlebars_obj_tests"]
