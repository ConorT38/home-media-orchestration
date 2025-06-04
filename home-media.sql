-- Create table for videos
CREATE TABLE videos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    filename VARCHAR(255) NOT NULL,
    cdn_path VARCHAR(255) NOT NULL,
    uploaded DATETIME NOT NULL,
    views INT DEFAULT 0
);

-- Create table for shows
CREATE TABLE shows (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Create table for episodes
CREATE TABLE episodes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    episode_number INT NOT NULL,
    show_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    FOREIGN KEY (show_id) REFERENCES shows(id)
);

-- Create table for movies
CREATE TABLE movies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    video_id INT NOT NULL,
    FOREIGN KEY (video_id) REFERENCES videos(id)
);