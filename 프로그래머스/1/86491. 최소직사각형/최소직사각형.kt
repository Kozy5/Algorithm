class Solution {
    fun solution(sizes: Array<IntArray>): Int {
        var answer: Int = 0
        var row = IntArray(0)
        var column = IntArray(0)
        for(i in 0..sizes.size-1){
            for(j in 0..sizes[0].size-2){
               if(sizes[i][j] < sizes[i][j+1]){
                   column+=sizes[i][j]
                   row+=sizes[i][j+1]
               }else{
                   column+=sizes[i][j+1]
                   row+=sizes[i][j]
               }
            }
        }
        answer = row.sorted()[row.size-1]*column.sorted()[row.size-1]
        return answer
    }
}