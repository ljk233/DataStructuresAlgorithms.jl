### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ 5818c232-8b08-4546-be9a-ddf9de4cf7e5
using Test

# ╔═╡ 5b2ee40e-a2b8-11ea-0fef-c35fe6918860
md"""
# 217. Contains Duplicate

[Back to Repo](https://github.com/ljk233/DataStructuresAlgorithms.jl)

Given an integer array `nums`, return `true` if any value appears at least twice in the array, and return `false` if every element is distinct.
"""

# ╔═╡ e347f1de-a2bb-11ea-06e7-87cca6f2a240
md"""
## Algorithm

1. let _sorted_ be _nums_ arranged in ascending order
2. for _index_ from 1 to |_nums_|-1
   1. if _nums_[_index_] == _nums_[_index_ + 1]
      1. _duplicate_ = true
"""

# ╔═╡ 27fbfd37-f8a2-4fb2-9157-06346983f054
md"""
## Code
"""

# ╔═╡ 4709db36-a327-11ea-13a3-bbfb18da84ce
"""
    contains_duplicates(nums: Int[]) -> Bool
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

# ╔═╡ 3517edf7-2a6a-4fdd-85a6-2161410d534d
md"""
## Testing
"""

# ╔═╡ 820ff60d-40e8-4739-963c-dbdd44646d05
@test contains_duplicates([1]) == false

# ╔═╡ dd32bf8f-8baa-4049-b80a-2c4403cebdff
@test contains_duplicates([1,2]) == false

# ╔═╡ 22778db0-96d2-4d4a-ba77-c1a621458300
@test contains_duplicates([1,1]) == true

# ╔═╡ 24aee243-ad7f-457a-af17-62ae780242ed
@test contains_duplicates([3,1,1]) == true

# ╔═╡ b42da88e-c60e-4441-8e93-4244d1fe5fe6
@test contains_duplicates([1,3,1]) == true

# ╔═╡ 79cc988a-b49b-4290-8f26-76072d09c9b3
@test contains_duplicates([1,3,3]) == true

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
# ╟─24aee243-ad7f-457a-af17-62ae780242ed
# ╟─b42da88e-c60e-4441-8e93-4244d1fe5fe6
# ╟─79cc988a-b49b-4290-8f26-76072d09c9b3
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
