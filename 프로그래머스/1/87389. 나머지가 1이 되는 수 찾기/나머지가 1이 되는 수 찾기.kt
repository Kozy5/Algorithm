class Solution{
    fun solution(n: Int): Int{
        var answer = 0
        var x = 0
        
        for(i in 3..n){
            var x = i
            answer = n%x  
            if(answer == 1) x
        }
        return x 
    }
}