class Solution {
    fun solution(n: Int, m: Int): IntArray {
        var answer = intArrayOf()
        var gcd = 0
        var lcm = 0
        if(n>m){
            for(i in 1..n){
                if(n%i == 0 && m%i ==0){
                    gcd = i
                }
            }
        }else{
            for(i in 1..m){
                if(n%i == 0 && m%i ==0){
                    gcd = i
                }
            }
        }
        answer += gcd
        lcm = n*m / gcd
        answer += lcm
        return answer
    }
    
    
   
    
}