<template>
    <div v-if="transformedWords.length">
      <table>
        <thead>
          <tr>
            <th>Word</th>
            <th>Frequency</th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="wordObj in transformedWords" :key="wordObj.frequency">
            <td>{{ wordObj.word }}</td>
            <td>{{ wordObj.frequency }}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <div v-else>
      <p>No words to display</p>
    </div>
  </template>
  
  <script>
  export default {
    props: ['words'],
    computed: {
      transformedWords() {
        if (this.words && this.words.length) {
          return this.words.map((wordObj) => ({
            word: wordObj.word.toUpperCase(),
            frequency: wordObj.frequency,
          }));
        }
        return [];
      },
    },
  };
  </script>
  