INSERT INTO users(name, email, password)
VALUES ('John', 'john@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Anna', 'anna@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Binh Trinh', 'binhtt@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Eva Stanley', 'sebastianguerra@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Phong', 'phongtt@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, 
cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street,
city, province, post_code, active)
VALUES (1, 'Speed lamp', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930, 6, 4, 8, 
  'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', 'V3T 2S3', true), 
        (2, 'Blank corner', 'description', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 130, 2, 1, 3, 
  'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', 'V3T 2S3', true), 
        (3, 'Speed lamp', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930, 6, 4, 8, 
  'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', 'V3T 2S3', true), 
        (4, 'Speed lamp', 'description', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg', 930, 6, 4, 8, 
  'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', 'V3T 2S3', true);


INSERT INTO reservations (start_date, end_date,property_id, guest_id)
VALUES ('2022-05-31', '2022-06-02', 1, 1), 
  ('2022-05-29', '2022-05-31', 2, 2), 
  ('2022-05-29', '2022-05-31', 3, 3), 
  ('2022-05-20', '2022-05-28', 4, 1), 
  ('2022-05-16', '2022-05-20', 3, 2), 
  ('2022-04-29', '2022-05-01', 3, 3), 
  ('2022-05-30', '2022-06-01', 3, 4);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 5, 'messages'),
  (2, 2, 2, 3, 'messages'),
  (4, 3, 7, 3, 'messages'),
  (3, 3, 3, 4, 'messages');