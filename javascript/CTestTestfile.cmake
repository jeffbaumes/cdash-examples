set(jslint "jslint")
set(jasmine "jasmine-node")

function(add_jslint_test file)
  add_test("JSLint ${file}" "${jslint}" "${file}")
endfunction()

add_jslint_test("src/foo.js")
add_jslint_test("spec/foo_spec.js")
add_test("Jasmine Tests" ${jasmine} "spec/")
