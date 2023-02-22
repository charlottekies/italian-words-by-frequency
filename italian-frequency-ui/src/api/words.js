// This is an example API module for getting words from the server
const apiUrl = process.env.API_BASE_URL;

export function getWords() {
  return fetch(apiUrl + "/word").then((response) => response.json());
}
