set(jslint "jslint")

function(add_jslint_test file)
  add_test("jslint ${file}" "${jslint}" "${file}")
endfunction()

add_jslint_test("foo.js")
add_jslint_test("test_foo.js")
