SELECT d.family_name, COUNT(*)
FROM doctors AS d
  INNER JOIN patients AS p
    ON d.id = p.doctor_id
GROUP BY d.family_name;
