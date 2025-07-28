SELECT 
fm.member_name,
SUM(p.amount * p.unit_price) AS total_spent
FROM 
FamilyMembers fm 
JOIN 
Payments p ON fm.member_id = p.family_member
GROUP BY
fm.member_name
ORDER BY 
total_spent DESC;

