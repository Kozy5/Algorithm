class Solution {
    fun solution(n: Long)=IntArray(n.toString().count()){i-> n.toString()[n.toString().count()-1-i].digitToInt()}    
}
