SELECT row_number() OVER(ORDER BY(if(id%2=1, id+1, id-1))) as id, student
FROM seat