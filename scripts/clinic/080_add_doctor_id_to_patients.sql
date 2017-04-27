ALTER TABLE patients
ADD COLUMN doctor_id INTEGER REFERENCES doctors (id);

-- custom id on index...
-- CREATE INDEX patient_doctor_id_index ON patients (doctor_id);

-- easier way to do this ( no customization)
CREATE INDEX ON patients (doctor_id);
