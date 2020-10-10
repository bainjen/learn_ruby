#terminal commands to try (learning booleans)
rue && true
false && true
1 == 1 && 2 == 1
"test" == "test"
1 == 1 || 2 != 1
true && 1 == 1
false && 0 != 0
true || 1 == 1
"test" == "testing"
1 != 0 && 2 == 1
"test" != "testing"
"test" == 1
!(true && false)
!(1 == 1 && 0 != 1)
!(10 == 1 || 1000 == 1000)
!(1 != 10 || 3 == 4)
!("testing" == "testing" && "Zed" == "Cool Guy")
1 == 1 && (!("testing" == 1 || 1 == 0))
"chunky" == "bacon" && (!(3 == 4 || 3 == 3))
3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))

# Whenever you see these Boolean logic statements, you can solve them easily by this simple process:

# Find an equality test (== or !=) and replace it with its truth.
# Find each &&/|| inside parentheses and solve those first.
# Find each ! and invert it.
# Find any remaining &&/|| and solve it.
# When you are done you should have true or false.
