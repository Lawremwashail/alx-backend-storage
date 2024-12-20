-- Creates a stored procedure AddBonus that adds a new correction for a student
-- Procedure has user.id value (it can be linked to existing users)
-- Project_name, create new if non exists
-- Score value for correction

DELIMITER $$

CREATE PROCEDURE AddBonus(
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    DECLARE project_id INT;
    IF NOT EXISTS(
        SELECT 1 FROM projects WHERE name = project_name
    ) THEN
        INSERT INTO projects (name) VALUES (project_name);
        SET project_id = LAST_INSERT_ID();
    ELSE
        SELECT id INTO project_id FROM projects WHERE name = project_name;
    END IF;
    INSERT INTO corrections (user_id, project_id, score)
    VALUES (user_id, project_id, score);
    
END $$

DELIMITER ;

