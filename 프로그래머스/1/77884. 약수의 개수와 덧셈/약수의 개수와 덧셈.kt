class Solution {
    fun solution(left: Int, right: Int): Int {
        var answer: Int = 0
        var num = 0
        var count = 0
        var even = mutableListOf<Int>()
        var countList = mutableListOf<Int>()
        
        for(i in left..right){
            for(j in 1..i){
                if(i % j == 0){
                    count += 1
                }
            }
            countList += count
            count=0
        }
        
        for(i in left..right){
            if(countList[num++] %2 == 0){
                answer+=i
            }else{
                answer -= i
            }
        }
        return answer
    }
}