DELETE A 
FROM Person as A, Person as B 
WHERE A.id > B.id AND A.email=B.email;