### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ ed3f4602-86cc-11ec-0368-ff5d565cabd7
md"""
# 283. Move Zeroes

[Home](..\)
| [GitHub Repo](https://github.com/ljk233/DataStructuresAlgorithms.jl)

Given an integer array `nums`, move all `0`s to the end of it while maintaining the relative order of the non-zero elements.

**Note** that you must do this in-place without making a copy of the array.
"""

# ╔═╡ d0c8f974-0553-4f20-a191-54da752819d1
md"""
## Algorithm

1. let *left* = 1
2. for each *num* in *nums*
   1. if *num* ≠ 0
      1. *nums*[*left*] = *num*
      1. *left* = *left* + 1
1. for *right* from *left* to |*nums*|
   1. *nums*[*right*] = 0
"""

# ╔═╡ 00925d09-0f1d-4a8b-9244-281b5b60e0b7
md"""
## Code
"""

# ╔═╡ d6afe37b-5809-4af2-bd7b-9a4e17d9633e
function move_zeroes(nums)
    left = firstindex(nums)
    for num in nums
        if !iszero(num)
            nums[left] = num;
			left+=1
        end
    end
	nums[left:end] .= 0
    return nums
end

# ╔═╡ Cell order:
# ╟─ed3f4602-86cc-11ec-0368-ff5d565cabd7
# ╟─d0c8f974-0553-4f20-a191-54da752819d1
# ╟─00925d09-0f1d-4a8b-9244-281b5b60e0b7
# ╠═d6afe37b-5809-4af2-bd7b-9a4e17d9633e
