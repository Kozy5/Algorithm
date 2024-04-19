class Solution {
    fun solution(n: Long): Long {
        var strN = n.toString()
        var array = arrayOfNulls<Long>(strN.length)
        var zero = 0
        var answer: Long = 0
        var sb:String = ""
        
        strN.forEach{
            array[zero++] = it.digitToInt().toLong()
        }
        array.sort()
        array.reverse()
        array.forEach{sb += it.toString()}
        answer=sb.toLong()
        return answer
    }
}