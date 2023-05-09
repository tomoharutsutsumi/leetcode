# https://leetcode.com/problems/running-sum-of-1d-array/?envType=study-plan&id=level-1
def running_sum(nums)
  new_arr = []
  nums.each_with_index do |_, i|
  sliced_nums = nums.slice(0, i+1)
    new_arr.push(sliced_nums.sum)
  end
  new_arr
end

# https://leetcode.com/problems/find-pivot-index/?envType=study-plan&id=level-1

def pivot_index(nums)
  left = 0
  right = 0
  nums.each_with_index do |n, i|
    left = i == 0 ? 0 : nums[0..(i-1)].sum
    right = i == (nums.size-1) ? 0 : nums[i+1..nums.size-1].sum
    if left == right
      return i
    end
    if i == (nums.size - 1)
      return -1
    end
  end
end

# https://leetcode.com/problems/isomorphic-strings/submissions/945257418/?envType=study-plan&id=level-1

def is_isomorphic(s, t)
  judging(s) == judging(t)
end

def judging(str)
 arr = str.split(//)
 result = {}
 arr.each_with_index do |s, i|
   if result.has_key?(s)
     result[s].push(i)
   else
     result.merge!({s => [i]})
   end
 end
 result.values
end