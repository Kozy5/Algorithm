class Solution {
    fun solution(lottos: IntArray, win_nums: IntArray): IntArray {
        var answer: IntArray = intArrayOf()
        var worst: Int = 0
        var best: Int = 0
        for(i in lottos){
            if(i != 0){
                if(win_nums.contains(i)){
                    worst += 1
                }
            }else{
                best += 1
            }
        }
        best += worst
        when(best){
            6 -> answer += 1
            5 -> answer += 2
            4 -> answer += 3
            3 -> answer += 4
            2 -> answer += 5
            else -> answer += 6
        }
        when(worst){
            6 -> answer += 1
            5 -> answer += 2
            4 -> answer += 3
            3 -> answer += 4
            2 -> answer += 5
            else -> answer += 6
        }
        
        
        
        return answer
    }
}