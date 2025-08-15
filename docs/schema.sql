-- PostgreSQL schema for Oralix
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL
);
CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birth_date DATE,
    contact_info VARCHAR(255),
    dentist_id INTEGER REFERENCES users(id)
);
CREATE TABLE records (
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients(id),
    record_date DATE,
    description TEXT
);
CREATE TABLE treatments (
    id SERIAL PRIMARY KEY,
    record_id INTEGER REFERENCES records(id),
    treatment_name VARCHAR(255),
    cost DECIMAL(10,2),
    status VARCHAR(50)
);
CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients(id),
    dentist_id INTEGER REFERENCES users(id),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    notes TEXT
);
CREATE TABLE examinations (
    id SERIAL PRIMARY KEY,
    record_id INTEGER REFERENCES records(id),
    exam_type VARCHAR(100),
    exam_url VARCHAR(255)
);
