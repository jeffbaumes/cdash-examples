set(python "python")

function(add_python_unittest name)
    add_test(${name} ${python} "-m" "unittest" ${name})
endfunction()

# You can add each test individually for each to show as a separate test.
add_python_unittest("test.test_foo.TestFoo.test_always_passes")
add_python_unittest("test.test_foo.TestFoo.test_add")

# Or, you can add entire classes or modules for simple setup.
# This will appear on CDash as a single test.
add_python_unittest("test.test_foo")
