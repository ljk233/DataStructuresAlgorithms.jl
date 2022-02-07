### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ 5b2ee40e-a2b8-11ea-0fef-c35fe6918860
md"""
# 217. Contains Duplicate

[Home](../)
| [Back to Repo](https://github.com/ljk233/DataStructuresAlgorithms.jl)

Given an integer array `nums`, return `true` *if any value appears at least twice in the array,* and return `false` *if every element is distinct.*
"""

# ╔═╡ e347f1de-a2bb-11ea-06e7-87cca6f2a240
md"""
## Algorithm

1. let _sorted_ be _nums_ arranged in ascending order
1. *duplicate* = false
1. for _index_ from 1 to |_nums_|-1
   1. if _nums_[_index_] == _nums_[_index_ + 1]
      1. _duplicate_ = true
"""

# ╔═╡ 27fbfd37-f8a2-4fb2-9157-06346983f054
md"""
## Code
"""

# ╔═╡ 4709db36-a327-11ea-13a3-bbfb18da84ce
"""
    contains_duplicates(nums: Vector{Integer}) -> Bool
"""
function contains_duplicates(nums)
    sorted = sort(nums)
    for index in 1:lastindex(sorted)-1
        if sorted[index] == sorted[index+1]
            return true
        end
    end
    return false
end

# ╔═╡ Cell order:
# ╟─5b2ee40e-a2b8-11ea-0fef-c35fe6918860
# ╟─e347f1de-a2bb-11ea-06e7-87cca6f2a240
# ╟─27fbfd37-f8a2-4fb2-9157-06346983f054
# ╠═4709db36-a327-11ea-13a3-bbfb18da84ce
