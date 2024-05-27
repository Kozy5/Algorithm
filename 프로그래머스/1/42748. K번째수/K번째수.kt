class Solution {
    fun solution(array: IntArray, commands: Array<IntArray>): IntArray {
        var answer = intArrayOf()
        for(item in 0..commands.size-1){
            var _array = intArrayOf()
            for(i in commands[item][0]-1..commands[item][1]-1){
            _array += array[i]
             }
            _array.sort()
            answer+= _array[commands[item][2]-1]
        }
        return answer
    }
}