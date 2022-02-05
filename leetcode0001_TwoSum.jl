### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ 5818c232-8b08-4546-be9a-ddf9de4cf7e5
using Test

# ╔═╡ 5b2ee40e-a2b8-11ea-0fef-c35fe6918860
md"""
# LeetCode 1. Two Sum

Given an array of integers `nums` and an integer `target`, return *indices of the two numbers such that they add up to `target`.*

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.
"""

# ╔═╡ e347f1de-a2bb-11ea-06e7-87cca6f2a240
md"""
## Algorithm

1. let _hashmap_ be an empty hash map
2. for _index_ in 0:|*nums*|
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
	twosum(nums: Int[], target: int) -> Int[]
"""
function twosum(nums, target)
	hashmap = Dict{Integer, Integer}()
	for (index, num) in enumerate(nums)
		complement = target - num
		complement in keys(hashmap) && (return [hashmap[complement], index])
		hashmap[num] = index
	end
end

# ╔═╡ 3517edf7-2a6a-4fdd-85a6-2161410d534d
md"""
## Testing
"""

# ╔═╡ 820ff60d-40e8-4739-963c-dbdd44646d05
@test twosum([2,7,11,15], 9) == [1,2]

# ╔═╡ dd32bf8f-8baa-4049-b80a-2c4403cebdff
@test twosum([3,2,4], 6) == [2,3]

# ╔═╡ 22778db0-96d2-4d4a-ba77-c1a621458300
@test twosum([3,3], 6) == [1,2]

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
