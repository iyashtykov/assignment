module Example
export hello, domath

"""
    hello(who::String)
Return "Hello, `who`".
"""
# FREEZE CODE BEGIN
hello(who::String) = "Hello, $who"

"""
    domath(x::Number)
Return `x + 5`.
"""
domath(x::Number) = x + 5
# FREEZE CODE END
end