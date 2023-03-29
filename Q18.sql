SELECT DISTINCT PERSON.name, PERSON.address
FROM PERSON
JOIN OWNS o ON o.owner_id_person = PERSON.SSN
JOIN AIRPLANE a ON a.reg# = o.plane_id
JOIN PLANE_TYPE pt ON pt.model_no = a.planeType_id
JOIN OWNS o2 ON o2.plane_id = o.plane_id
JOIN CORPORATION c ON c.id = o2.owner_id_corporation
JOIN OWNS o3 ON o3.owner_id_corporation = c.id
JOIN AIRPLANE a2 ON a2.reg# = o3.plane_id
JOIN PLANE_TYPE pt2 ON pt2.model_no = a2.planeType_id
WHERE pt.model_no = pt2.model_no
AND c.id = o2.owner_id_corporation
AND o3.Pdate >= DATEADD(month, -1, GETDATE())