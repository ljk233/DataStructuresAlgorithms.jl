### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ 5b2ee40e-a2b8-11ea-0fef-c35fe6918860
md"""
# 1. Two Sum

[Home](..\)
| [GitHub Repo](https://github.com/ljk233/DataStructuresAlgorithms.jl)

Given an array of integers `nums` and an integer `target`, return *indices of the two numbers such that they add up to* `target`.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.
"""

# ╔═╡ e347f1de-a2bb-11ea-06e7-87cca6f2a240
md"""
## Algorithm

1. let _hashmap_ be an empty hash map
2. for _index_ from 1 to |*nums*|
   1. *complement* = *target* - *nums*[*index*]
   2. if *hashmap* contains *complement*
      1. *indices* = (*hashmap*[*complement*], *index*)
   3. otherwise
      1. let *hashmap*(*nums*[*index*]) be *index*
"""

# ╔═╡ 27fbfd37-f8a2-4fb2-9157-06346983f054
md"""
## Code
"""

# ╔═╡ 4709db36-a327-11ea-13a3-bbfb18da84ce
"""
    twosum(nums: Vec{Integer}, target: Integer) -> Vec{Integer}
"""
function twosum(nums, target)
    hashmap = Dict{Integer, Integer}()
    for (index, num) in enumerate(nums)
        complement = target - num
        complement in keys(hashmap) && (return [hashmap[complement], index])
        hashmap[num] = index
    end
end

# ╔═╡ Cell order:
# ╟─5b2ee40e-a2b8-11ea-0fef-c35fe6918860
# ╟─e347f1de-a2bb-11ea-06e7-87cca6f2a240
# ╟─27fbfd37-f8a2-4fb2-9157-06346983f054
# ╠═4709db36-a327-11ea-13a3-bbfb18da84ce
