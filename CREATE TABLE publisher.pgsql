CREATE TABLE publisher
(
    publisher_id INTEGER PRIMARY KEY,
    name varchar(32) NOT NULL,
    city varchar(32) NULL
);
CREATE TABLE book
(
    book_id INTEGER PRIMARY KEY,
    author varchar(32) NOT NULL,
    title varchar(32) NOT NULL,
    page_count INTEGER
);
INSERT INTO public.publisher VALUES 
(1, 'Ata-Mura', 'Astana'),
(2, 'Almaty-Kitap', 'Almaty'),
(3, 'Polyana', 'Moskva');
INSERT INTO public.book VALUES 
(1, 'A. Kunanbayev', 'Karasoz', 123),
(2, 'A. Kunanbayev', 'Kys', 9),
(3, 'L. Tolstoy', 'Voina i Mir', 908);
SELECT DISTINCT city FROM public.publisher;
SELECT * FROM public.book WHERE page_count < 150 AND author = 'A. Kunanbayev';
SELECT COUNT(*) FROM public.book WHERE author = 'L. Tolstoy'