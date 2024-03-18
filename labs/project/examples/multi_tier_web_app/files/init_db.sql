CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO posts (title, content) VALUES ('First Post', 'This is the first post content.');
INSERT INTO posts (title, content) VALUES ('Second Post', 'This is the second post content.');
