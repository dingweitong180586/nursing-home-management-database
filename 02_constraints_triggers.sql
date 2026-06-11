-- Constraints and Triggers for Nursing Home Management Database
-- Author: Weitong Ding
-- Technologies: Oracle SQL, PL/SQL

/* Add integrity constraints */
ALTER TABLE Resident
ADD CONSTRAINT chk_gender
CHECK (Gender IN ('Male', 'Female'));

ALTER TABLE Resident
ADD CONSTRAINT chk_dob
CHECK (DateOfBirth < SYSDATE);

/* Audit table for tracking medical history changes */
CREATE TABLE Resident_Audit (
    audit_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    resident_id NUMBER,
    old_history VARCHAR2(500),
    new_history VARCHAR2(500),
    changed_by VARCHAR2(100),
    changed_on DATE
);

/* Validation trigger: prevent residents younger than 18 */
CREATE OR REPLACE TRIGGER trg_resident_validate
BEFORE INSERT ON Resident
FOR EACH ROW
BEGIN
    IF MONTHS_BETWEEN(SYSDATE, :NEW.DateOfBirth) / 12 < 18 THEN
        RAISE_APPLICATION_ERROR(-20020, 'Resident must be at least 18.');
    END IF;
END;
/

/* Audit trigger: track changes to medical history */
CREATE OR REPLACE TRIGGER trg_resident_audit
AFTER UPDATE OF MedicalHistory ON Resident
FOR EACH ROW
BEGIN
    INSERT INTO Resident_Audit (
        resident_id,
        old_history,
        new_history,
        changed_by,
        changed_on
    )
    VALUES (
        :OLD.ResidentID,
        :OLD.MedicalHistory,
        :NEW.MedicalHistory,
        USER,
        SYSDATE
    );
END;
/
