use www;
SELECT 
    e.nickname, e.last_name, r.role_name
FROM
    employee e
        JOIN
    plays_role pr ON pr.employee_id = e.employee_id
        JOIN
    role r ON pr.role_code = r.role_code
ORDER BY e.nickname , r.role_name;
