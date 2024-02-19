CREATE VIEW college_tpo_view
AS
SELECT 
    c.college_id, c.college_name, c.contact,
    t.tpo_id, t.first_name, t.last_name, t.contact AS tpo_contact, t.email AS tpo_email,t.city_name, t.postal_code
FROM college c
JOIN tpo t ON c.college_id = t.college_id;