# Haskell `nub` and Undefined Values

This example demonstrates a potential issue when using Haskell's `nub` function (from `Data.List`) with lists containing undefined values.  The `nub` function removes duplicate elements from a list, but it relies on the equality operator (`==`).  When an undefined value is encountered, the equality comparison fails, resulting in an exception.

The provided code shows this behavior, contrasting the successful removal of duplicates from well-defined lists with the error caused by `undefined` values.  The solution file offers a way to handle this situation more gracefully.