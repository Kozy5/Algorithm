class Solution {
    fun solution(absolutes: IntArray, signs: BooleanArray): Int {
        var answer: Int = 0
        var realinputs = Array(signs.size,{i->i+1})
        var changesigns = Array(signs.size,{i->i+1})
        signs.forEachIndexed{ i,it ->
            if(it == true){
                changesigns[i] = 1
            }else {
                changesigns[i]=-1
            }
        }
        absolutes.forEachIndexed{i,it ->
            realinputs[i] = it*changesigns[i]
        }
        realinputs.forEach{
            answer += it
        }
      
        return answer
    }
}