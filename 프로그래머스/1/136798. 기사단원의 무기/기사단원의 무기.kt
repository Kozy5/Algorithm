import kotlin.math.*

class Solution {
    fun solution(number: Int, limit: Int, power: Int): Int {
        var answer: Int = 0
        var count: Int = 0
        var countList: MutableList<Int> = mutableListOf() 
        for(i in 1..number){
            for(j in 1..floor(sqrt(i.toDouble())).toInt()){
                if(i%j == 0){
                    if(i/j == j) count += 1
                    else count += 2
                }
            }
            if(count > limit){
                countList += power
            }else{
                countList += count
            }
            count = 0
        }
        
        answer = countList.sum()
        return answer
    }
}