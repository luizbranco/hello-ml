(* Homework1 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)
use "hw1.sml";

val test1 = is_older((1,2,3),(2,3,4)) = true
val test1_2 = is_older((1,2,3),(1,3,4)) = true
val test1_3 = is_older((0,0,3),(0,0,4)) = true
val test1_4 = is_older((0,0,4),(0,0,3)) = false
val test1_5 = is_older((1,1,1),(1,1,1)) = false

val test2 = number_in_month([(2012,2,28),(2013,12,1)],2) = 1
val test2_2 = number_in_month([(2012,2,28),(2013,12,1)],1) = 0
val test2_3 = number_in_month([],1) = 0
val test2_4 = number_in_month([(2012,1,28),(2010,1,1),(0,1,0)],1) = 3
val test2_5 = number_in_month([(2012,1,28),(2010,1,1),(0,15,0)],15) = 1

val test3 = number_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3
val test3_2 = number_in_months([(2012,2,28),(2013,12,1)],[1,3,6]) = 0
val test3_3 = number_in_months([],[17, 8, 1]) = 0
val test3_4 = number_in_months([(2012,1,28),(2010,1,1),(0,1,0)],[7,2,3,1]) = 3
val test3_5 = number_in_months([(2012,1,28),(2010,1,1),(0,15,0)],[15]) = 1

val test4 = dates_in_month([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]
val test4_2 = dates_in_month([(2012,2,28),(2013,12,1)],13) = []
val test4_3 = dates_in_month([],13) = []

val test5 = dates_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]
val test5_2 = dates_in_months([],[2,3,4]) = []
val test5_3 = dates_in_months([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[]) = []

val test6 = get_nth(["hi", "there", "how", "are", "you"], 2) = "there"
val test6_2 = get_nth(["hi", "there", "how", "are", "you"], 5) = "you"
val test6_3 = get_nth(["hi", "there", "how", "are", "you"], 4) = "are"

val test7 = date_to_string((2013, 6, 1)) = "June 1, 2013"
val test7_2 = date_to_string((1986, 6, 25)) = "June 25, 1986"
val test7_3 = date_to_string((1987, 4, 10)) = "April 10, 1987"
val test7_4 = date_to_string((2011, 12, 3)) = "December 3, 2011"

val test8 = number_before_reaching_sum(10, [1,2,3,4,5]) = 3
val test8_2 = number_before_reaching_sum(15, [1,2,3,4,5]) = 4
val test8_3 = number_before_reaching_sum(15, []) = 0

val test9 = what_month(70) = 3
val test9_2 = what_month(59) = 2
val test9_3 = what_month(1) = 1
val test9_4 = what_month(0) = 1
val test9_5 = what_month(365) = 12

val test10 = month_range(31, 34) = [1,2,2,2]
val test10_2 = month_range(31, 31) = [1]
val test10_3 = month_range(32, 31) = []

val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31)
val test11_2 = oldest([]) = NONE
val test11_3 = oldest([(2012,2,28)]) = SOME (2012,2,28)
