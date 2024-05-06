class Solution {
    fun solution(price: Int, money: Int, count: Int): Long {
        var answer: Long = 0
        for(N in 1..count){
            answer+=price*N
        }
        if(money >= answer){
            answer = 0
        }else{
            answer -= money
        }
        return answer
    }
}