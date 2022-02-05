### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ 5818c232-8b08-4546-be9a-ddf9de4cf7e5
using Test

# ╔═╡ 5b2ee40e-a2b8-11ea-0fef-c35fe6918860
md"""
# 53. Maximum Subarray

[Back to Repo](https://github.com/ljk233/DataStructuresAlgorithms.jl)

Given an integer array `nums`, find the contiguous subarray (containing at least one number) which has the largest sum and return its *sum.*

A **subarray** is a contiguous part of an array.
"""

# ╔═╡ e347f1de-a2bb-11ea-06e7-87cca6f2a240
md"""
## Algorithm

(This is an implementation of **Kadane's algorithm.**)

1. *current sum* = 0
1. *max sum* = **-Inf**
1. for each *number* in *numbers*
   1. *current sum* = *current sum* + *number*
   1. if *current sum* > *max sum*
      1. *max sum* =  *current sum*
   1. if *current sum* < 0
      1. *current sum* = 0
"""

# ╔═╡ 27fbfd37-f8a2-4fb2-9157-06346983f054
md"""
## Code
"""

# ╔═╡ 4709db36-a327-11ea-13a3-bbfb18da84ce
"""
    maximum_subarray(nums: Integer[]) -> Integer
"""
function maximum_subarray(nums)
    max_sum, curr_sum = typemin(Int64), 0
    for num in nums
        if curr_sum < 0
            curr_sum = 0
        end
        curr_sum += num
        max_sum = max(max_sum, curr_sum)
    end
    return max_sum
end

# ╔═╡ 3517edf7-2a6a-4fdd-85a6-2161410d534d
md"""
## Testing
"""

# ╔═╡ 820ff60d-40e8-4739-963c-dbdd44646d05
@test maximum_subarray([-2,1,-3,4,-1,2,1,-5,4]) == 6

# ╔═╡ dd32bf8f-8baa-4049-b80a-2c4403cebdff
@test maximum_subarray([1]) == 1

# ╔═╡ 22778db0-96d2-4d4a-ba77-c1a621458300
@test maximum_subarray([5,4,-1,7,8]) == 23

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
"""

# ╔═╡ Cell order:
# ╟─5b2ee40e-a2b8-11ea-0fef-c35fe6918860
# ╟─e347f1de-a2bb-11ea-06e7-87cca6f2a240
# ╟─27fbfd37-f8a2-4fb2-9157-06346983f054
# ╠═4709db36-a327-11ea-13a3-bbfb18da84ce
# ╟─3517edf7-2a6a-4fdd-85a6-2161410d534d
# ╠═5818c232-8b08-4546-be9a-ddf9de4cf7e5
# ╟─820ff60d-40e8-4739-963c-dbdd44646d05
# ╟─dd32bf8f-8baa-4049-b80a-2c4403cebdff
# ╟─22778db0-96d2-4d4a-ba77-c1a621458300
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
