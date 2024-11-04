local frktest = require("@pkg/frktest")
local test = frktest.test
local check = frktest.assert.check

local main = require("@main/adder")

return function()
    test.suite("My Suite", function()
        test.case("Add One", function()
            local a = 10
            check.equal(main.add_one(a), a + 1)
        end)

        test.case("Add Nums", function()
            local a = 10
            local b = 2
            check.equal(main.add_nums(a, b), 12)
        end)
    end)
end
