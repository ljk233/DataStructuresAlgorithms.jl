### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ 5b2ee40e-a2b8-11ea-0fef-c35fe6918860
md"""
# 53. Maximum Subarray

[Home](..\)
| [GitHub Repo](https://github.com/ljk233/DataStructuresAlgorithms.jl)

Given an integer array `nums`, find the contiguous subarray (containing at least one number) which has the largest sum and return its *sum.*

A **subarray** is a contiguous part of an array.
"""

# ╔═╡ e347f1de-a2bb-11ea-06e7-87cca6f2a240
md"""
## Algorithm

(This is an implementation of **Kadane's algorithm.**)

1. *current sum* = 0
1. *maximum sum* = **-Inf**
1. for each *number* in *numbers*
   1. if *current sum* < 0
      1. *current sum* 0 0
   1. *current sum* = *current sum* + *number*
   1. *max sum* = maximum(*max sum*, *current sum*)
"""

# ╔═╡ 27fbfd37-f8a2-4fb2-9157-06346983f054
md"""
## Code
"""

# ╔═╡ 4709db36-a327-11ea-13a3-bbfb18da84ce
"""
    maximum_subarray(nums: Vector{Integer}) -> Integer
"""
function maximum_subarray(nums)
    max_sum, curr_sum = -typemin(Int64), 0
    for num in nums
        if curr_sum < 0
            curr_sum = 0
        end
        curr_sum += num
        max_sum = max(max_sum, curr_sum)
    end
    return max_sum
end

# ╔═╡ Cell order:
# ╟─5b2ee40e-a2b8-11ea-0fef-c35fe6918860
# ╟─e347f1de-a2bb-11ea-06e7-87cca6f2a240
# ╟─27fbfd37-f8a2-4fb2-9157-06346983f054
# ╠═4709db36-a327-11ea-13a3-bbfb18da84ce
