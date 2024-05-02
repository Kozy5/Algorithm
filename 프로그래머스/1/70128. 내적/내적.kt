class Solution {
    fun solution(a: IntArray, b: IntArray): Int {
        return a.zip(b){a,b -> a*b}.sum()
    }
}