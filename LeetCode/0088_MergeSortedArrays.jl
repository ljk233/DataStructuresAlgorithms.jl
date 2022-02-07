### A Pluto.jl notebook ###
# v0.17.7

using Markdown
using InteractiveUtils

# ╔═╡ 5b2ee40e-a2b8-11ea-0fef-c35fe6918860
md"""
# 88. Merge Sorted Array

[Back to Repo](https://github.com/ljk233/DataStructuresAlgorithms.jl)

You are given two integer arrays `nums1` and `nums2`, sorted in non-decreasing order, and two integers `m` and `n`, representing the number of elements in `nums1` and `nums2` respectively.

Merge `nums1` and `nums2` into a single array sorted in non-decreasing order.

The final sorted array should not be returned by the function, but instead be stored inside the array `nums1`.
To accommodate this, `nums1` has a length of `m + n`, where the first `m` elements denote the elements that should be merged, and the last `n` elements are set to `0` and should be ignored.
`nums2` has a length of `n`.
"""

# ╔═╡ bc9f34a1-5015-4377-9ab2-23128dd3edd6
md"""
## Algorithm

1. let *target* = *m*+*n*
1. while *target* ≥ 1
   1. if *m* ≥ 1 and *n* ≥ 1
      1. if *nums1*[*m*] ≥ *nums2*[*n*]
         1. *nums1*[*target*] = *nums1*[*m*]
         1. *m* = *m* - 1
         1. *target* = *target* - 1
      1. otherwise
         1. *nums1*[*target*] = *nums2*[*n*]
         1. *n* = *n* - 1
         1. *target* = *target* - 1
   1. otherwise if *m* ≥ 1
      1. *nums1*[*target*] = *nums1*[*m*]
      1. *m* = *m* - 1
      1. *target* = *target* - 1
   1. otherwise if *n* ≥ 1
      1. *nums1*[*target*] = *nums2*[*n*]
      1. *n* = *n* - 1
      1. *target* = *target* - 1
"""

# ╔═╡ 27fbfd37-f8a2-4fb2-9157-06346983f054
md"""
## Code
"""

# ╔═╡ 4709db36-a327-11ea-13a3-bbfb18da84ce
function merge_sorted_arrays(nums1, m, nums2, n)
    function move!(arr1, target, arr2, index)
        arr1[target] = arr2[index]
        return target-1, index-1
    end

    target = m+n
    while target ≥ 1
        if m ≥ 1 && n ≥ 1
            if nums1[m] ≥ nums2[n]
                target, m = move!(nums1, target, nums1, m)
            else
                target, n = move!(nums1, target, nums2, n)
            end
        elseif m ≥ 1
            target, m = move!(nums1, target, nums1, m)
        elseif n ≥ 1
            target, n = move!(nums1, target, nums2, n)
        end
    end
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.7.1"
manifest_format = "2.0"

[deps]
"""

# ╔═╡ Cell order:
# ╟─5b2ee40e-a2b8-11ea-0fef-c35fe6918860
# ╟─bc9f34a1-5015-4377-9ab2-23128dd3edd6
# ╟─27fbfd37-f8a2-4fb2-9157-06346983f054
# ╠═4709db36-a327-11ea-13a3-bbfb18da84ce
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
