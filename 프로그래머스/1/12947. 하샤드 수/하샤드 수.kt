class Solution {
    fun solution(x: Int): Boolean {
        return x % x.toString().fold(0){a,n -> a+n.digitToInt()} == 0
    }
}