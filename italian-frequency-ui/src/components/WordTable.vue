<template>
    <div v-if="transformedWords.length">
      <table>
        <thead>
          <tr>
            <th @click="sort('word')">
              Word
              <font-awesome-icon :icon="['fas', 'sort']" />
              <span v-if="sortKey === 'word'" class="sort-icon">
                <font-awesome-icon :icon="sortOrder === 'asc' ? ['fas', 'arrow-up'] : ['fas', 'arrow-down']" />
              </span>
            </th>
            <th @click="sort('frequency')">
              Frequency
              <font-awesome-icon :icon="['fas', 'sort']" />
              <span v-if="sortKey === 'frequency'" class="sort-icon">
                <font-awesome-icon :icon="sortOrder === 'asc' ? ['fas', 'arrow-up'] : ['fas', 'arrow-down']" />
              </span>
            </th>
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
      <p>No words to display.</p>
    </div>
  </template>
  
  <script>
  import { faSort, faArrowUp, faArrowDown } from "@fortawesome/free-solid-svg-icons";
  import { library } from "@fortawesome/fontawesome-svg-core";
  import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
  
  library.add(faSort, faArrowUp, faArrowDown);
  
  export default {
    props: ["words"],
    data() {
      return {
        sortKey: "",
        sortOrder: "",
      };
    },
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
    methods: {
        sort(key) {
            if (this.sortKey === key) {
                this.sortOrder = this.sortOrder === 'asc' ? 'desc' : 'asc';
            } else {
                this.sortKey = key;
                this.sortOrder = 'asc';
            }

            if (this.sortKey === 'word') {
                this.transformedWords.sort((a, b) => {
                const sortValue = a.word.localeCompare(b.word, undefined, { sensitivity: 'base' });
                return this.sortOrder === 'asc' ? sortValue : -sortValue;
                });
            } else if (this.sortKey === 'frequency') {
                this.transformedWords.sort((a, b) => {
                const sortValue = a.frequency - b.frequency;
                return this.sortOrder === 'asc' ? sortValue : -sortValue;
                });
            }
            },
    },
    components: {
      FontAwesomeIcon,
    },
  };
  </script>
  
  <style>
  .sort-icon {
    font-size: 12px;
    margin-left: 4px;
  }
  </style>
  