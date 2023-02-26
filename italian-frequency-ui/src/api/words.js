/*eslint-disable */

//suppress all warnings between comments
/*eslint-enable */
const BASE_URL2 = process.env.API_BASE_URL;

export function getWords() {
  console.log(BASE_URL2);
  return fetch(BASE_URL2 + "/word").then((response) => response.json());
}
