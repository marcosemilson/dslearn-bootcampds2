INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg', 'https://static.thenounproject.com/png/1876386-200.png');

INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-07-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2021-07-13T20:50:07.12345Z', 1);
INSERT INTO tb_offer(edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-13T20:50:07.12345Z', TIMESTAMP WITH TIME ZONE '2021-12-13T20:50:07.12345Z', 1);

INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha Principal do Curso', 1, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg', 1, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Fórum', 'Tira Dúvidas', 2, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg', 2, 1);
INSERT INTO tb_resource(title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives Exclusivas para a turma', 3, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg', 0, 1);

INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Capitulo 1', 1, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg', 1, null);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Capitulo 2', 2, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg', 1, 1);
INSERT INTO tb_section(title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Capitulo 3', 3, 'https://cdn.pixabay.com/photo/2018/03/22/10/55/training-course-3250007_960_720.jpg', 1, 2);

INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1,1, TIMESTAMP WITH TIME ZONE '2020-07-13T17:50:07.12345Z', null, true, false);
INSERT INTO tb_enrollment(user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2,1, TIMESTAMP WITH TIME ZONE '2020-07-13T17:50:07.12345Z', null, true, false);

INSERT INTO tb_lesson(title, position, section_id) VALUES ('Aula 1 do Capitulo 1', 1, 1);
INSERT INTO tb_content(id, text_Content, video_Uri) VALUES (1, 'Material de Apoio: ABC', 'https://www.youtube.com/watch?v=c64a76Fen5U');
INSERT INTO tb_lesson(title, position, section_id) VALUES ('Aula 2 do Capitulo 1', 2, 1);
INSERT INTO tb_content(id, text_Content, video_Uri) VALUES (2, 'Material de Apoio: CDF', 'https://www.youtube.com/watch?v=c64a76Fen5U');
INSERT INTO tb_lesson(title, position, section_id) VALUES ('Aula 3 do Capitulo 1', 3, 1);
INSERT INTO tb_content(id, text_Content, video_Uri) VALUES (3, 'Material de Apoio: EFG', 'https://www.youtube.com/watch?v=c64a76Fen5U');
INSERT INTO tb_lesson(title, position, section_id) VALUES ('Aula 3 do Capitulo 1', 4, 1);
INSERT INTO tb_task(id, description, question_Count, approval_Count, weigth, due_Date) VALUES (4, 'Fazer Trabalho',5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-07-31T20:50:07.12345Z');

INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done(lesson_id, user_id, offer_id) VALUES (2, 1, 1);

