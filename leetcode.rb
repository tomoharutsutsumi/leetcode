# https://leetcode.com/problems/running-sum-of-1d-array/?envType=study-plan&id=level-1
def running_sum(nums)
  new_arr = []
  nums.each_with_index do |_, i|
  sliced_nums = nums.slice(0, i+1)
    new_arr.push(sliced_nums.sum)
  end
  new_arr
end