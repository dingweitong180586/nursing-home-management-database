-- Resident CRUD Procedures for Nursing Home Management Database
-- Author: Weitong Ding
-- Technologies: Oracle SQL, PL/SQL

/* Helper function: check whether a resident exists */
CREATE OR REPLACE FUNCTION resident_exists(
    p_id IN Resident.ResidentID%TYPE
)
RETURN BOOLEAN AS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Resident
    WHERE ResidentID = p_id;

    RETURN v_count > 0;
END;
/

/* Create: add a new resident */
CREATE OR REPLACE PROCEDURE add_resident(
    p_id IN Resident.ResidentID%TYPE,
    p_room IN Resident.RoomNumber%TYPE,
    p_fname IN Resident.FirstName%TYPE,
    p_lname IN Resident.LastName%TYPE,
    p_dob IN DATE,
    p_gender IN VARCHAR2,
    p_history IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Resident
    VALUES (p_id, p_room, p_fname, p_lname, p_dob, p_gender, p_history);

    DBMS_OUTPUT.PUT_LINE('Resident added successfully.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Resident already exists.');
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Invalid input data type.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/

/* Read: retrieve resident information */
CREATE OR REPLACE PROCEDURE get_resident_info(
    p_id IN Resident.ResidentID%TYPE
)
AS
    v_res Resident%ROWTYPE;
BEGIN
    SELECT *
    INTO v_res
    FROM Resident
    WHERE ResidentID = p_id;

    DBMS_OUTPUT.PUT_LINE(
        'Resident ' || v_res.ResidentID || ': ' ||
        v_res.FirstName || ' ' || v_res.LastName ||
        ', Room ' || v_res.RoomNumber ||
        ', DOB ' || TO_CHAR(v_res.DateOfBirth, 'YYYY-MM-DD') ||
        ', Gender ' || v_res.Gender
    );
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20010, 'Resident ID ' || p_id || ' not found.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Data error: duplicate ResidentID.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error in get_resident_info: ' || SQLERRM);
END;
/

/* Update: update resident medical history */
CREATE OR REPLACE PROCEDURE update_resident_history(
    p_id IN Resident.ResidentID%TYPE,
    p_history IN Resident.MedicalHistory%TYPE
)
AS
BEGIN
    IF NOT resident_exists(p_id) THEN
        RAISE_APPLICATION_ERROR(-20011, 'Cannot update: resident ' || p_id || ' does not exist.');
    END IF;

    UPDATE Resident
    SET MedicalHistory = p_history
    WHERE ResidentID = p_id;

    DBMS_OUTPUT.PUT_LINE(
        'Updated history for Resident ' || p_id ||
        '. Rows affected: ' || SQL%ROWCOUNT
    );
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('Invalid value for MedicalHistory.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error in update_resident_history: ' || SQLERRM);
END;
/

/* Delete: delete a resident record */
CREATE OR REPLACE PROCEDURE delete_resident(
    p_id IN Resident.ResidentID%TYPE
)
AS
BEGIN
    IF NOT resident_exists(p_id) THEN
        RAISE_APPLICATION_ERROR(-20012, 'Cannot delete: resident ' || p_id || ' does not exist.');
    END IF;

    DELETE FROM Resident
    WHERE ResidentID = p_id;

    DBMS_OUTPUT.PUT_LINE(
        'Resident ' || p_id ||
        ' deleted. Rows affected: ' || SQL%ROWCOUNT
    );
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE = -2292 THEN
            DBMS_OUTPUT.PUT_LINE(
                'Delete blocked: related rows exist in Visitors or CarePlan for Resident ' || p_id || '.'
            );
        ELSE
            DBMS_OUTPUT.PUT_LINE('Unexpected error in delete_resident: ' || SQLERRM);
        END IF;
END;
/
