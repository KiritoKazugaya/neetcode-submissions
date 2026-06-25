class Solution:
    def hasDuplicate(self, nums: List[int]) -> bool:
        a=set(nums)
        if len(a)==len(nums):
            return False
        else:
            return True
