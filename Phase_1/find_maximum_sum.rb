def maxSum(stack1, stack2, stack3,
  n1, n2, n3)

sum1 = 0
sum2 = 0
sum3 = 0

# Finding the initial sum of stack1.
for (i = 0; i < n1; i++)
sum1 += stack1[i];

# Finding the initial sum of stack2.
for (i = 0; i < n2; i++)
sum2 += stack2[i];

# Finding the initial sum of stack3.
for (i = 0; i < n3; i++)
  sum3 += stack3[i];

# As given in question,
# first element is top
# of stack..
top1 =0;
top2 = 0;
top3 = 0;
ans = 0;
while (1)
{

# If any stack is empty
if ($top1 == $n1 || $top2 == $n2 ||
    $top3 == $n3)
return 0;

# If sum of all three stack are equal.
if ($sum1 == $sum2 && $sum2 == $sum3)
return $sum1;

# Finding the stack with
# maximum sum and
# removing its top element.
if (sum1 >= sum2 && sum1 >= sum3)
sum1 -= stack1[top1++];

else if (sum2 >= sum1 && sum2 >=sum3)
sum2 -= stack2[top2++];

else if (sum3 >= sum2 && sum3 >= sum1)
sum3 -= stack3[top3++];
end
end 


#Driver Code
stack1 = array(3, 2, 1, 1, 1);
stack2 = array(4, 3, 2);
stack3 = array(1, 1, 4, 1);

n1 = sizeof(stack1);
n2 = sizeof(stack2);
n3 = sizeof(stack3);
puts maxSum(stack1, stack2, stack3, n1, n2, n3)