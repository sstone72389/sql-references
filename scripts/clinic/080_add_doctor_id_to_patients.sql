ALTER TABLE patients
  ADD COLUMN doctor_id INTEGER REFERENCES doctors(id);
CREATE INDEX ON patients(doctor_id);
