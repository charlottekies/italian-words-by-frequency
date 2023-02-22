// This is an example API module for getting words from the server
const apiUrl = secrets.API_BASE_URL;

export function getWords() {
  return fetch(apiUrl + "/word").then((response) => response.json());
}
