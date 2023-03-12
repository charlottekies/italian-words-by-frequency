BEGIN TRANSACTION;

CREATE TABLE Word (
    word_id SERIAL PRIMARY KEY,
    word VARCHAR,
    frequency INTEGER,
    translation VARCHAR
);

CREATE TABLE PartsOfSpeech (
    pos_id SERIAL PRIMARY KEY,
    pos VARCHAR
);

CREATE TABLE Lemmas (
    lemma_id SERIAL PRIMARY KEY,
    lemma VARCHAR
);

CREATE TABLE Morphologies (
    morphology_id SERIAL PRIMARY KEY,
    morphology VARCHAR
);

CREATE TABLE WordPos (
    word_pos_id SERIAL PRIMARY KEY,
    word_id INTEGER REFERENCES Word(word_id),
    pos_id INTEGER REFERENCES PartsOfSpeech(pos_id)
);

CREATE TABLE WordLemma (
    word_lemma_id SERIAL PRIMARY KEY,
    word_id INTEGER REFERENCES Word(word_id),
    lemma_id INTEGER REFERENCES Lemmas(lemma_id)
);

CREATE TABLE WordMorphology (
    word_morphology_id SERIAL PRIMARY KEY,
    word_id INTEGER REFERENCES Word(word_id),
    morphology_id INTEGER REFERENCES Morphologies(morphology_id)
);

COMMIT TRANSACTION;