SELECT owner_id_corporation as CORPORATION_ID, COUNT(OWNS.plane_id) AS NUMBER_OF_PLANES
FROM OWNS
WHERE owner_id_corporation IS NOT NULL
GROUP BY owner_id_corporation
ORDER BY NUMBER_OF_PLANES DESC
