class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        seen={}
        for i,x in enumerate(nums):
            diff=target-x
            if diff in seen:
                return [seen[diff],i]
            if x not in seen:
                seen[x]=i