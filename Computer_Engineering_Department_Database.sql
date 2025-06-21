--creation of tables with a schema
-- CREATE TABLE cped.students (
--     student_id SERIAL PRIMARY KEY,
--     student_name VARCHAR(100) NOT NULL,
-- 	student_number VARCHAR(10) UNIQUE,
--     gender VARCHAR(10),
--     student_email VARCHAR(100)
	
-- );

-- fees payments table
-- CREATE TABLE cped.fees_payments (
--     payment_id SERIAL PRIMARY KEY,
--     student_number VARCHAR,
--     amount_paid DECIMAL(10, 2),
-- 	total_fee DECIMAL(10,2),
-- 	status VARCHAR(20),
--     payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	    FOREIGN KEY (student_number) REFERENCES cped.students(student_number)

-- );

-- courses table
-- CREATE TABLE cped.courses (
--     course_code VARCHAR(20) PRIMARY KEY NOT NULL,
--     course_name VARCHAR(100) NOT NULL,
--     credit_hours INT
-- );

-- course enrollment table
-- CREATE TABLE cped.course_enrollments (
--     enrollment_id SERIAL PRIMARY KEY,
-- 	enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     student_number VARCHAR, 
--     course_code VARCHAR(20),
--     semester VARCHAR(10),
-- 	FOREIGN KEY (student_number) REFERENCES cped.students(student_number),
-- 	FOREIGN KEY (course_code) REFERENCES cped.courses(course_code)

-- );

-- Lecturers table
-- CREATE TABLE cped.lecturers (
--     lecturer_name VARCHAR(100) PRIMARY KEY,
--     email VARCHAR(100),
-- 	Phone_Number VARCHAR(30)
-- );

-- TAs table
-- CREATE TABLE cped.TAs (
--  	TAs_name VARCHAR(100) PRIMARY KEY,
-- 		lecturer_name VARCHAR(100),
--   	email VARCHAR(100),
-- 	  TAs_Phone_Number VARCHAR(30),
-- 		FOREIGN KEY(lecturer_name) REFERENCES cped.lecturers(lecturer_name)
-- );

-- ALTER TABLE cped.courses
-- ADD CONSTRAINT unique_course_name UNIQUE(course_name);

-- Lecturer to Course Assignment table
-- CREATE TABLE cped.lecturer_courses (
--     id SERIAL PRIMARY KEY,
-- 	lecturer_name VARCHAR(100),
-- 	course_code VARCHAR(20),
-- 	course_name VARCHAR(100),
--     FOREIGN KEY(lecturer_name) REFERENCES cped.lecturers(lecturer_name),
--     FOREIGN KEY(course_code) REFERENCES cped.courses(course_code),
-- 	FOREIGN KEY(course_name) REFERENCES cped.courses(course_name)

-- );


-- Lecturer to TA Assignment table
-- CREATE TABLE cped.lecturer_TAs (
--     assignment_id SERIAL PRIMARY KEY,
-- 	lecturer_name VARCHAR(100),
-- 	TAs_name VARCHAR(100),
--     FOREIGN KEY(lecturer_name) REFERENCES cped.lecturers(lecturer_name),
--     FOREIGN KEY (TAs_name) REFERENCES cped.TAs(TAs_name)
-- );

-- Inserting values into tables

-- INSERT INTO cped.students (student_name, student_number, gender, student_email) VALUES
-- ('Daniel Akwetey Akunyumu-Tetteh', '10975105', 'M', 'danieltetteh@gmail.com'),
-- ('Ishaan Bhardwaj', '11004272', 'M', 'ishaanbhardwaj@gmail.com'),
-- ('Samia Soleimani', '11010910', 'F', 'samiasoleimani@gmail.com'),
-- ('Arthur Ebenezer', '11012330', 'M', 'ebenezerarthur@gmail.com'),
-- ('Kumi Kelvin Gyabaah', '11012343', 'M', 'kelvingyabaah@gmail.com'),
-- ('Annan Chioma Praise', '11014727', 'F', 'chiomaannan@gmail.com'),
-- ('Mohammed Salihu Hamisu', '11014977', 'M', 'mohammedhamisu@gmail.com'),
-- ('Daniel Agyin Manford', '11015506', 'M', 'danielmanford@gmail.com'),
-- ('Pius Oblie', '11018690', 'M', 'piusoblie@gmail.com'),
-- ('Iddrisu Tahiru', '11021544', 'M', 'iddrisutahiru@gmail.com'),
-- ('Nyavor Cyril Etornam', '11023595', 'M', 'cyrilnyavor@gmail.com'),
-- ('David Kwaku Ntow Anno', '11025159', 'M', 'davidanno@gmail.com'),
-- ('Agyepong Kwesi', '11038081', 'M', 'agyepongkwesi@gmail.com'),
-- ('Asare Marvin', '11049492', 'M', 'marvinasare@gmail.com'),
-- ('Peggy Esinam Somuah', '11049523', 'F', 'peggysomuah@gmail.com'),
-- ('Ampomah Samuel', '11053386', 'M', 'samuelampomah@gmail.com'),
-- ('Andrews Kwarteng Twum', '11105235', 'M', 'andrewstwum@gmail.com'),
-- ('Fiavor Isaac Sedem', '11112276', 'M', 'fiavorisaac@gmail.com'),
-- ('Yakubu Tanko Mohammed-Awal', '11116537', 'M', 'yakubuawal@gmail.com'),
-- ('Eririe Jeffery', '11116737', 'M', 'eririejeffrey@gmail.com'),
-- ('Kafu Kwame Kemeh', '11116804', 'M', 'kafukemeh@gmail.com'),
-- ('Nyarko Steven Abrokwah', '11117318', 'M', 'stevenabrokwah@gmail.com'),
-- ('Muhammad Nurul Haqq Munagah', '11117536', 'M', 'munagahmuhammed@gmail.com'),
-- ('Bernardine Adusei-Okrah', '11123762', 'M', 'benardineokrah@gmail.com'),
-- ('Maame Afua Ayisibea Ayisi', '11139245', 'F', 'maameayisi@gmail.com'),
-- ('Ansiogya Philemon Kwabena', '11139828', 'M', 'ansiogyaphilemon@gmail.com'),
-- ('Antwi Samuel Kojo Anafi', '11164744', 'M', 'samuelantwi@gmail.com'),
-- ('Nkansah Boadu Tabi', '11170350', 'M', 'nkansahtabi@gmail.com'),
-- ('Wenide Isaac Atta', '11172376', 'M', 'attaisaac@gmail.com'),
-- ('John Tenkorang Anim', '11208328', 'M', 'johnanim@gmail.com'),
-- ('Abubakar Latifah', '11209640', 'F', 'abubakarlatifah@gmail.com'),
-- ('Attu Samuel Idana', '11213307', 'M', 'attusamuel@gmail.com'),
-- ('Adorboe Prince Philips', '11218951', 'M', 'adorboeprince@gmail.com'),
-- ('Ninson Obed', '11238291', 'M', 'ninsonobed@gmail.com'),
-- ('Anewah Vincent', '11246366', 'M', 'anewahvincent@gmail.com'),
-- ('Quansah Jeffery', '11252855', 'M', 'quansahjeffery@gmail.com'),
-- ('Nuku-Tagbor Joshua', '11252857', 'M', 'joshuatagbor@gmail.com'),
-- ('Desmond Afelete Kamasah', '11253931', 'M', 'kamasahdesmond@gmail.com'),
-- ('Fordjour Edward John', '11254079', 'M', 'johnfordjour@gmail.com'),
-- ('Kudiabor Jonathan Kwabena Ewenam', '11254301', 'M', 'ewenamjonathan@gmail.com'),
-- ('Abena Nhyira Nsaako', '11254405', 'F', 'nsaakoabena@gmail.com'),
-- ('Dedoo Donatus Dodzi', '11262592', 'M', 'dodzidonatus@gmail.com'),
-- ('Ayertey Vanessa Esinam', '11264010', 'F', 'esinamneesa@gmail.com'),
-- ('Nyayun Prince', '11275876', 'M', 'princenyayun@gmail.com'),
-- ('David Tetteh Ankrah', '11285635', 'M', 'ankrahdavid@gmail.com'),
-- ('Sena Anyomi', '11292620', 'F', 'senaanyomi@gmail.com'),
-- ('Amponsah Jonathan Boadu', '11293871', 'M', 'amponsahboadu@gmail.com'),
-- ('Asare Baffour King David', '11296641', 'M', 'davidasare@gmail.com'),
-- ('Amevenku K. Mawuli', '11296662', 'M', 'mawuliameveku@gmail.com'),
-- ('Isaac Nii Nortey Barnor', '11297849', 'M', 'barnorisaac@gmail.com'),
-- ('Nana K. Fosu Asamoah', '11305528', 'M', 'asamoahfosu@gmail.com'),
-- ('Yasmeen Xoladem Korkor Doku', '11330446', 'F', 'dokuxoladem@gmail.com'),
-- ('Matthew Kotey Mensah', '11332163', 'M', 'mensahmatthew@gmail.com'),
-- ('Fall F. Galas', '11333321', 'M', 'galesfall@gmail.com'),
-- ('Awal Mohammed', '11334401', 'M', 'awalmohammed@gmail.com'),
-- ('Ahmed Fareed Opare', '11338323', 'M', 'ahmedfareed@gmail.com'),
-- ('Derrick Amponsah Amponsah', '11347946', 'M', 'amponsahderrick@gmail.com'),
-- ('Freda Elikplim Apetsi', '11348310', 'F', 'fredaelikplim@gmail.com'),
-- ('Dabanka Hayet Maame Adwoa Gyasiwaa','11353826', 'F', 'dabankahayet@gmail.com'),
-- ('Edward Opoku Agyemang', '11356825', 'M', 'agyemangedward@gmail.com'),
-- ('Nana Kwasi Kwakye', '11358243', 'F', 'nanakwakye@gmail.com');

-- SELECT * FROM cped.students

-- INSERT INTO cped.fees_payments (student_number, amount_paid, total_fee, payment_date) VALUES
-- ('10975105', 2992.00, 2992.00, '2024-01-10'),
-- ('11004272', 300.00,  2992.00, '2024-02-15'),
-- ('11010910', 200.00,  2992.00, '2024-03-20'),
-- ('11012330', 2992.00,  2992.00, '2024-04-10'),
-- ('11012343', 600.00,  2992.00, '2024-05-15'),
-- ('11014727', 450.00,  2992.00, '2024-01-20'),
-- ('11014977', 350.00,  2992.00, '2024-02-25'),
-- ('11015506', 2992.00,  2992.00, '2024-03-30'),
-- ('11018690', 250.00,  2992.00, '2024-04-05'),
-- ('11021544', 300.00,  2992.00, '2024-05-10'),
-- ('11023595', 2992.00,  2992.00, '2024-01-15'),
-- ('11025159', 200.00,  2992.00, '2024-02-20'),
-- ('11038081', 400.00,  2992.00, '2024-03-25'),
-- ('11049492', 600.00,  2992.00, '2024-04-30'),
-- ('11049523', 500.00, 2992.00,  '2024-05-05'),
-- ('11053386', 300.00, 2992.00, '2024-01-18'),
-- ('11105235', 200.00, 2992.00, '2024-03-28'),
-- ('11112276', 2992.00, 2992.00, '2024-03-28'),
-- ('11116537', 600.00,  2992.00, '2024-04-02'),
-- ('11116737', 500.00,  2992.00, '2024-05-07'),
-- ('11116804', 300.00,  2992.00, '2024-01-20'),
-- ('11117318', 200.00,  2992.00, '2024-02-25'),
-- ('11117536', 400.00,  2992.00, '2024-03-30'),
-- ('11123762', 600.00,  2992.00, '2024-04-05'),
-- ('11139245', 2992.00, 2992.00,  '2024-05-10'),
-- ('11139828', 300.00,  2992.00, '2024-01-22'),
-- ('11164744', 200.00, 2992.00,  '2024-02-27'),
-- ('11170350', 400.00,  2992.00, '2024-03-05'),
-- ('11172376', 600.00,  2992.00, '2024-04-10'),
-- ('11208328', 2992.00,  2992.00, '2024-05-15'),
-- ('11209640', 300.00,  2992.00, '2024-01-25'),
-- ('11213307', 200.00,  2992.00, '2024-02-28'),
-- ('11218951', 400.00,  2992.00, '2024-03-10'),
-- ('11238291', 600.00, 2992.00,  '2024-04-15'),
-- ('11246366', 500.00,  2992.00, '2024-05-20'),
-- ('11252855', 2992.00,  2992.00, '2024-01-28'),
-- ('11252857', 200.00,  2992.00, '2024-02-28'),
-- ('11253931', 400.00, 2992.00,  '2024-03-15'),
-- ('11254079', 600.00,  2992.00, '2024-04-20'),
-- ('11254301', 500.00, 2992.00,'2024-04-20'),
-- ('11254405', 300.00,  2992.00, '2024-01-30'),
-- ('11262592', 200.00,  2992.00, '2024-03-02'),
-- ('11264010', 400.00,  2992.00, '2024-03-17'),
-- ('11275876', 600.00,  2992.00, '2024-04-22'),
-- ('11285635', 500.00,  2992.00, '2024-05-27'),
-- ('11292620', 300.00,  2992.00, '2024-02-02'),
-- ('11293871', 200.00,  2992.00, '2024-03-04'),
-- ('11296641', 2992.00,  2992.00, '2024-03-19'),
-- ('11296662', 600.00,  2992.00, '2024-04-24'),
-- ('11297849', 500.00,  2992.00, '2024-05-29'),
-- ('11305528', 300.00,  2992.00, '2024-02-04'),
-- ('11330446', 200.00,  2992.00, '2024-03-06'),
-- ('11332163', 400.00,  2992.00, '2024-03-21'),
-- ('11333321', 600.00,  2992.00, '2024-04-26'),
-- ('11334401', 500.00,  2992.00, '2024-05-31'),
-- ('11338323', 300.00,  2992.00, '2024-02-06'),
-- ('11347946', 200.00,  2992.00, '2024-03-08'),
-- ('11348310', 400.00,  2992.00, '2024-03-23'),
-- ('11353826', 600.00,  2992.00, '2024-04-28'),
-- ('11356825', 750.00,  2992.00, '2024-03-20'),
-- ('11356825', 2992.00,  2992.00, '2024-03-20');


-- SELECT * FROM cped.fees_payments

-- ALTER TABLE cped.fees_payments
-- ALTER COLUMN payment_date TYPE TIMESTAMPTZ
-- USING payment_date::timestamptz;

--  INSERT INTO cped.courses (course_code, course_name, credit_hours) VALUES
-- ('CPEN 202', 'Computer system design', '3'),
-- ('CPEN 204', 'Data structures and Algorithms', '3'),
-- ('CPEN 206', 'Linear circuits', '3'),
-- ('CPEN 208', 'Software Engineering', '3'),
-- ('CPEN 212', 'Data Communications', '2'),
-- ('SENG202', 'Differential equations', '3'),
-- ('CBAS210', 'Academic Writing II', '2');

-- SELECT * FROM cped.courses

-- INSERT INTO cped.course_enrollments (student_number, course_code, enrollment_date, semester) VALUES
-- ('11049492', 'CBAS210', '2024-02-25', '2'),
-- ('11049523', 'CBAS210', '2024-02-25', '2'),
-- ('11170350', 'CBAS210', '2024-02-25', '2'),
-- ('11172376', 'CBAS210', '2024-02-25', '2'),
-- ('11262592', 'CBAS210', '2024-02-25', '2'),
-- ('11264010', 'CBAS210', '2024-02-25', '2'),
-- ('11338323', 'CBAS210', '2024-02-25', '2'),
-- ('11347946', 'CBAS210', '2024-02-25', '2'),
-- ('11254079', 'CPEN 212', '2024-05-15', '2'),
-- ('11023595', 'CPEN 212', '2024-05-15', '2'),
-- ('11123762', 'CPEN 212', '2024-05-15', '2'),
-- ('11139245', 'CPEN 212', '2024-05-15', '2'),
-- ('11253931', 'CPEN 212', '2024-05-15', '2'),
-- ('11254079', 'CPEN 212', '2024-05-15', '2'),
-- ('11330446', 'CPEN 212', '2024-05-15', '2'),
-- ('11332163', 'CPEN 212', '2024-05-15', '2'),
-- ('11014727', 'CPEN 206', '2024-03-20', '2'),
-- ('11014977', 'CPEN 206', '2024-03-20', '2'),
-- ('11116737', 'CPEN 206', '2024-03-20', '2'),
-- ('11116804', 'CPEN 206', '2024-03-20', '2'),
-- ('11238291', 'CPEN 206', '2024-03-20', '2'),
-- ('11246366', 'CPEN 206', '2024-03-20', '2'),
-- ('11296641', 'CPEN 206', '2024-03-20', '2'),
-- ('11296662', 'CPEN 206', '2024-03-20', '2'),
-- ('11015506', 'CPEN 208', '2024-04-10', '2'),
-- ('11018690', 'CPEN 208', '2024-04-10', '2'),
-- ('11117318', 'CPEN 208', '2024-04-10', '2'),
-- ('11117536', 'CPEN 208', '2024-04-10', '2'),
-- ('11252855', 'CPEN 208', '2024-04-10', '2'),
-- ('11252857', 'CPEN 208', '2024-04-10', '2'),
-- ('11297849', 'CPEN 208', '2024-04-10', '2'),
-- ('11305528', 'CPEN 208', '2024-04-10', '2'),
-- ('11012330', 'CPEN 204', '2024-02-15', '2'),
-- ('11012343', 'CPEN 204', '2024-02-15', '2'),
-- ('11112276', 'CPEN 204', '2024-02-15', '2'),
-- ('11116537', 'CPEN 204', '2024-02-15', '2'),
-- ('11213307', 'CPEN 204', '2024-02-15', '2'),
-- ('11218951', 'CPEN 204', '2024-02-15', '2'),
-- ('11292620', 'CPEN 204', '2024-02-15', '2'),
-- ('11293871', 'CPEN 204', '2024-02-15', '2'),
-- ('11356825', 'CPEN 204', '2024-02-15', '2'),
-- ('11025159', 'SENG202', '2024-01-20', '2'),
-- ('11038081', 'SENG202', '2024-01-20', '2'),
-- ('11139828', 'SENG202', '2024-01-20', '2'),
-- ('11164744', 'SENG202', '2024-01-20', '2'),
-- ('11254301', 'SENG202', '2024-01-20', '2'),
-- ('11254405', 'SENG202', '2024-01-20', '2'),
-- ('11333321', 'SENG202', '2024-01-20', '2'),
-- ('11334401', 'SENG202', '2024-01-20', '2'),
-- ('10975105', 'CPEN 202', '2024-01-10', '2'),
-- ('11004272', 'CPEN 202', '2024-01-10', '2'),
-- ('11010910', 'CPEN 202', '2024-01-10', '2'),
-- ('11053386', 'CPEN 202', '2024-01-10', '2'),
-- ('11105235', 'CPEN 202', '2024-01-10', '2'),
-- ('11208328', 'CPEN 202', '2024-01-10', '2'),
-- ('11209640', 'CPEN 202', '2024-01-10', '2'),
-- ('11275876', 'CPEN 202', '2024-01-10', '2'),
-- ('11285635', 'CPEN 202', '2024-01-10', '2'),
-- ('11348310', 'CPEN 202', '2024-01-10', '2'),
-- ('11353826', 'CPEN 202', '2024-01-10', '2');

-- SELECT * FROM cped.course_enrollments

-- INSERT INTO cped.lecturers (lecturer_name) VALUES
-- ('Agyare Debrah'),
-- ('Dr. Margaret Ansah Richardson'),
-- ('Dr. Godfrey Augustus Mills'),
-- ('Mr. John Asiammah'),
-- ('Dr. Isaac Adjaye Aboagye'),
-- ('Dr. John Kutor'),
-- ('Dr. Percy Okae');

-- INSERT INTO cped.lecturer_courses (course_code, lecturer_name) VALUES
-- ('CPEN 202', 'Agyare Debrah'),
-- ('CPEN 204', 'Dr. Margaret Ansah Richardson'),
-- ('CPEN 206', 'Dr. Godfrey Augustus Mills'),
-- ('CPEN 208', 'Mr. John Asiammah'),
-- ('CPEN 212', 'Dr. Isaac Adjaye Aboagye'),
-- ('SENG202', 'Dr. John Kutor'),
-- ('CBAS210', 'Dr. Percy Okae');

-- INSERT INTO cped.lecturer_courses (course_name) VALUES
-- ('Computer system design'),
-- ('Data structures and Algorithms'),
-- ('Linear circuits'),
-- ('Software Engineering'),
-- ('Data Communications'),
-- ('Differential equations'),
-- ('Academic Writing II');

-- DELETE FROM cped.lecturer_courses
-- WHERE course_code IS NULL AND lecturer_name IS NULL;

-- SELECT * FROM cped.lecturer_courses

-- UPDATE cped.lecturer_courses
-- SET course_name = CASE course_code
--     WHEN 'CPEN 202' THEN 'Computer system design'
--     WHEN 'CPEN 204' THEN 'Data structures and Algorithms'
--     WHEN 'CPEN 206' THEN 'Linear circuits'
--     WHEN 'CPEN 208' THEN 'Software Engineering'
--     WHEN 'CPEN 212' THEN 'Data Communications'
--     WHEN 'SENG202' THEN 'Differential equations'
--     WHEN 'CBAS210' THEN 'Academic Writing II'
--     ELSE course_name  -- Leave unchanged if no match
-- END
-- WHERE course_name IS NULL;


-- INSERT INTO cped.TAs (TAs_name) VALUES
-- ('Bamzy'),
-- ('Kudus'),
-- ('Prince'),
-- ('Akua'),
-- ('Ben'),
-- ('Kevin'),
-- ('Dave');

-- INSERT INTO cped.lecturer_TAs (lecturer_name, TAs_name) VALUES
-- ('Agyare Debrah', 'Bamzy'),
-- ('Dr. Margaret Ansah Richardson', 'Kudus'),
-- ('Dr. Godfrey Augustus Mills', 'Prince'),
-- ('Mr. John Asiammah', 'Akua'),
-- ('Dr. Percy Okae', 'Dave'),
-- ('Dr. John Kutor', 'Ben'),
-- ('Dr. Isaac Adjaye Aboagye', 'Kevin');

-- ALTER TABLE cped.fees_payments ADD COLUMN status TEXT;

-- CREATE OR REPLACE FUNCTION cped.set_payment_status()
-- RETURNS TRIGGER AS $$
-- DECLARE
--     total_paid NUMERIC(10,2);
--     required_fee NUMERIC(10,2);
-- BEGIN
--     SELECT COALESCE(SUM(amount_paid), 0)
--     INTO total_paid
--     FROM cped.fees_payments
--     WHERE student_number = NEW.student_number;

--     SELECT COALESCE(MAX(total_fee), 0)
--     INTO required_fee
--     FROM cped.fees_payments
--     WHERE student_number = NEW.student_number;

--     IF total_paid >= required_fee THEN
--         NEW.status := 'Fully Paid';
--     ELSE
--         NEW.status := 'Owing';
--     END IF;

--     RETURN NEW;
-- END;
-- $$ LANGUAGE plpgsql;

-- DROP FUNCTION IF EXISTS cped.set_payment_status();

-- CREATE OR REPLACE FUNCTION cped.update_payment_status()
-- RETURNS TRIGGER AS $$
-- BEGIN
--     IF NEW.amount_paid >= NEW.total_fee THEN
--         NEW.status := 'Paid';
--     ELSE
--         NEW.status := 'Owing';
--     END IF;
--     RETURN NEW;
-- END;
-- $$ LANGUAGE plpgsql;

-- CREATE TRIGGER trg_update_payment_status
-- BEFORE INSERT OR UPDATE ON cped.fees_payments
-- FOR EACH ROW
-- EXECUTE FUNCTION cped.update_payment_status();


-- SELECT * FROM cped.fees_payments


-- SELECT tgname, tgrelid::regclass AS table_name
-- FROM pg_trigger
-- WHERE tgname = 'trg_update_payment_status';

-- DROP TRIGGER IF EXISTS trg_update_payment_status ON cped.fees_payments;
-- DROP FUNCTION IF EXISTS cped.update_payment_status();

-- DELETE FROM cped.fees_payments;

-- CREATE OR REPLACE FUNCTION cped.update_payment_status()
-- RETURNS TRIGGER AS $$
-- BEGIN
--     IF NEW.amount_paid IS NOT NULL AND NEW.total_fee IS NOT NULL THEN
--         IF NEW.amount_paid >= NEW.total_fee THEN
--             NEW.status := 'Paid';
--         ELSE
--             NEW.status := 'Owing';
--         END IF;
--     END IF;
--     RETURN NEW;
-- END;
-- $$ LANGUAGE plpgsql;

-- DROP TRIGGER IF EXISTS trg_update_payment_status ON cped.fees_payments;

-- CREATE TRIGGER trg_update_payment_status
-- BEFORE INSERT OR UPDATE ON cped.fees_payments
-- FOR EACH ROW
-- EXECUTE FUNCTION cped.update_payment_status();

-- INSERT INTO cped.fees_payments (student_number, amount_paid, total_fee, payment_date) VALUES
-- ('10975105', 2992.00, 2992.00, '2024-01-10'),
-- ('11004272', 300.00,  2992.00, '2024-02-15'),
-- ('11010910', 200.00,  2992.00, '2024-03-20'),
-- ('11012330', 2992.00,  2992.00, '2024-04-10'),
-- ('11012343', 600.00,  2992.00, '2024-05-15'),
-- ('11014727', 450.00,  2992.00, '2024-01-20'),
-- ('11014977', 350.00,  2992.00, '2024-02-25'),
-- ('11015506', 2992.00,  2992.00, '2024-03-30'),
-- ('11018690', 250.00,  2992.00, '2024-04-05'),
-- ('11021544', 300.00,  2992.00, '2024-05-10'),
-- ('11023595', 2992.00,  2992.00, '2024-01-15'),
-- ('11025159', 200.00,  2992.00, '2024-02-20'),
-- ('11038081', 400.00,  2992.00, '2024-03-25'),
-- ('11049492', 600.00,  2992.00, '2024-04-30'),
-- ('11049523', 500.00, 2992.00,  '2024-05-05'),
-- ('11053386', 300.00, 2992.00, '2024-01-18'),
-- ('11105235', 200.00, 2992.00, '2024-03-28'),
-- ('11112276', 2992.00, 2992.00, '2024-03-28'),
-- ('11116537', 600.00,  2992.00, '2024-04-02'),
-- ('11116737', 500.00,  2992.00, '2024-05-07'),
-- ('11116804', 300.00,  2992.00, '2024-01-20'),
-- ('11117318', 200.00,  2992.00, '2024-02-25'),
-- ('11117536', 400.00,  2992.00, '2024-03-30'),
-- ('11123762', 600.00,  2992.00, '2024-04-05'),
-- ('11139245', 2992.00, 2992.00,  '2024-05-10'),
-- ('11139828', 300.00,  2992.00, '2024-01-22'),
-- ('11164744', 200.00, 2992.00,  '2024-02-27'),
-- ('11170350', 400.00,  2992.00, '2024-03-05'),
-- ('11172376', 600.00,  2992.00, '2024-04-10'),
-- ('11208328', 2992.00,  2992.00, '2024-05-15'),
-- ('11209640', 300.00,  2992.00, '2024-01-25'),
-- ('11213307', 200.00,  2992.00, '2024-02-28'),
-- ('11218951', 400.00,  2992.00, '2024-03-10'),
-- ('11238291', 600.00, 2992.00,  '2024-04-15'),
-- ('11246366', 500.00,  2992.00, '2024-05-20'),
-- ('11252855', 2992.00,  2992.00, '2024-01-28'),
-- ('11252857', 200.00,  2992.00, '2024-02-28'),
-- ('11253931', 400.00, 2992.00,  '2024-03-15'),
-- ('11254079', 600.00,  2992.00, '2024-04-20'),
-- ('11254301', 500.00, 2992.00,'2024-04-20'),
-- ('11254405', 300.00,  2992.00, '2024-01-30'),
-- ('11262592', 200.00,  2992.00, '2024-03-02'),
-- ('11264010', 400.00,  2992.00, '2024-03-17'),
-- ('11275876', 600.00,  2992.00, '2024-04-22'),
-- ('11285635', 500.00,  2992.00, '2024-05-27'),
-- ('11292620', 300.00,  2992.00, '2024-02-02'),
-- ('11293871', 200.00,  2992.00, '2024-03-04'),
-- ('11296641', 2992.00,  2992.00, '2024-03-19'),
-- ('11296662', 600.00,  2992.00, '2024-04-24'),
-- ('11297849', 500.00,  2992.00, '2024-05-29'),
-- ('11305528', 300.00,  2992.00, '2024-02-04'),
-- ('11330446', 200.00,  2992.00, '2024-03-06'),
-- ('11332163', 400.00,  2992.00, '2024-03-21'),
-- ('11333321', 600.00,  2992.00, '2024-04-26'),
-- ('11334401', 500.00,  2992.00, '2024-05-31'),
-- ('11338323', 300.00,  2992.00, '2024-02-06'),
-- ('11347946', 200.00,  2992.00, '2024-03-08'),
-- ('11348310', 400.00,  2992.00, '2024-03-23'),
-- ('11353826', 600.00,  2992.00, '2024-04-28'),
-- ('11356825', 750.00,  2992.00, '2024-03-20'),
-- ('11356825', 2992.00,  2992.00, '2024-03-20');

-- SELECT student_number, amount_paid, total_fee, status
-- FROM cped.fees_payments;

-- CREATE TRIGGER trigger_set_payment_status
-- BEFORE INSERT OR UPDATE ON cped.fees_payments
-- FOR EACH ROW
-- EXECUTE FUNCTION cped.set_payment_status();

-- CREATE OR REPLACE FUNCTION cped.get_outstanding_fees()
-- RETURNS JSON AS $$
-- DECLARE
--     result JSON;
-- BEGIN
--     SELECT json_agg(
--         json_build_object(
--             'student_number', student_number,
--             'student_name', student_name,
--             'total_paid', total_paid,
--             'total_fee', total_fee,
--             'outstanding_amount', total_fee - total_paid
--         )
--     )
--     INTO result
--     FROM (
--         SELECT 
--             s.student_number,
--             s.student_name,
--             COALESCE(SUM(f.amount_paid), 0) AS total_paid,
--             COALESCE(MAX(f.total_fee), 0) AS total_fee
--         FROM cped.students s
--         LEFT JOIN cped.fees_payments f ON s.student_number = f.student_number
--         GROUP BY s.student_number, s.student_name
--     ) AS sub;

--     RETURN result;
-- END;
-- $$ LANGUAGE plpgsql;

-- SELECT cped.get_outstanding_fees();






