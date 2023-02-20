// This is an example API module for getting words from the server
export function getWords() {
  return fetch("http://localhost:8080/word").then((response) =>
    response.json()
  );
}
