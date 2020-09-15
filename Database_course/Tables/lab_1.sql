create table StudentsT
(
    id serial primary key,
    full_name VARCHAR(255),
    gender VARCHAR(6),
    birthday DATE,
    home_address VARCHAR(255),
    departmemt VARCHAR(255),
    dean_phone VARCHAR(15),
    dean_full_name VARCHAR(255),
    course INT,
    label_group VARCHAR(10),
    amount_of_students INT,
    average_score INT,
    stipend INT,
    military_depend BOOL
);

-- Test
create table StudentsK
(
    id serial primary key,
    full_name VARCHAR(255),
    gender VARCHAR(6),
    birthday DATE,
    home_address VARCHAR(255),
    departmemt VARCHAR(255),
    dean_phone VARCHAR(15),
    dean_full_name VARCHAR(255),
    course INT,
    label_group VARCHAR(10),
    amount_of_students INT,
    average_score INT,
    stipend INT,
    military_depend BOOL,

    CONSTRAINT check_gender CHECK (gender IN ('male', 'female')),
    CONSTRAINT check_deanPhone CHECK (dean_phone LIKE '8[(]383[)]\d{3}-\d{2}-\d{2}'),
    CONSTRAINT check_averageScore CHECK (average_score > 0 and average_score <= 5)
);

create table StudentsH
(
    id serial primary key,
    full_name VARCHAR(255),
    gender VARCHAR(6),
    birthday DATE,
    home_address VARCHAR(255),
    departmemt VARCHAR(255),
    dean_phone VARCHAR(15),
    dean_full_name VARCHAR(255),
    course INT,
    label_group VARCHAR(10),
    amount_of_students INT,
    average_score INT,
    stipend INT,
    military_depend BOOL,

    CONSTRAINT check_gender CHECK (gender IN ('male', 'female')),
    CONSTRAINT check_averageScore CHECK (average_score > 0 and average_score <= 5)
);

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (1, 'Sukhanova Natalia Filimonovna', 'female', DATE '1999-06-18', 'NSK', 'IVT', '8(383)342-42-77', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE);

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (2, 'Polovova Inna Moiseevna', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-75', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE);

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (3, 'Bychkova Elvira Ignatieivna', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-23', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (4, 'Kocherezhkina Angelina Trofimovna', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-75', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (5, 'Yavlenskaya Zhanna Leonidovna', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-10', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (6, 'Severova Eva Sergeevna', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-11', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (7, 'Pelevina Rimma Potapovna', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-22', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (8, 'Teplyakova Lyudmila Veniaminovna', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-33', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (9, 'Ezrina Evdokia Evlampievna', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-44', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (10, 'Geremesh Viacheslav Mechislavovich', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-55', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (12, 'Kvaskov Grigory Anatolievich', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-88', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (13, 'Uglitsky Avdey Apollinarievich', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-99', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (14, 'Baidavletov Efrem Pankratievich', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-45', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

INSERT INTO StudentsH (ID,full_name,gender,birthday,home_address,departmemt,dean_phone,dean_full_name,course,
label_group,amount_of_students,average_score,stipend,military_depend)
VALUES (15, 'Sazonov Modest Demyanovich', 'female', '1999-06-18', 'NSK', 'IVT', '8(383)342-42-54', 'inf_sys', 4,
'iv-722', 14, 4, 2300, TRUE );

-- Check constraints
insert into StudentsH (gender) value ('mAn');
insert into StudentsH (average_score) value (1000);