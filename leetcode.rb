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