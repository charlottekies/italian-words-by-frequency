<template>
  <v-app>
  <div>
    <button @click="showModal = true, generateWordList()">Take Assessment Quiz</button>
    <quiz-modal :is-open="showModal" @close="showModal = false">
      <div v-if="levelOneWords[currentIndex]">
        <h2 id="quiz-word">{{ levelOneWords[currentIndex].word }}</h2>

      <div id="quiz-answers-container">
        <div id="quiz-answers" v-for="(wordOption, index) in levelOneWords[currentIndex].options" :key="index">
          <v-btn-toggle v-model="selectedOption">
            <v-btn  :value="index"
                    :key="'option-' + index"
                    :color="correctOption === null ? 'primary' : correctOption ? 'success' : 'error'"
                    dark
                    @click="showNextWord"
                    :ripple="true"
                    elevation="0">
                     {{ wordOption }}
          </v-btn>
          </v-btn-toggle>
        </div>
      </div>
      </div>
    </quiz-modal>
    <word-table :words="words" />
    <div v-if="!words || words.length === 0">
    </div>
  </div>
</v-app>
</template>

<script>
import WordTable from '@/components/WordTable.vue';
import QuizModal from '@/components/QuizModal.vue';
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'HomeView',
  components: {
    WordTable,
    QuizModal
  },
  data() {
    return {
      words: [],
      showModal: false,
      levelOneWords: [],
      levelTwoWords: [],
      levelThreeWords: [],
      levelFourWords: [],
      levelFiveWords: [],
      quizWords: [this.levelOneWords, this.levelTwoWords, this.levelThreeWords, this.levelFourWords, this.levelFiveWords],
      currentIndex: 0,
      selectedOption: null,
      wordSet: 0,  // Counter for the set of words
      correctOption: null,
      levelOneWordsScore: 0,
      levelTwoWordsScore: 0
    };
  },
  methods: {
    showNextWord() {
      if (this.selectedOption == this.levelOneWords[this.currentIndex].correctIndex) {
        this.correctOption = true; // set correctOption to true
        this.levelOneWordsScore++; // increment the score
      } else {
        this.correctOption = false; // set correctOption to false
      }
      setTimeout(() => {
        // Your existing code to show the next word goes here
        // ...
        this.currentIndex++;
        if (this.currentIndex >= this.levelOneWords.length) {
          // Calculate the final score for levelOneWords
          const score = this.levelOneWordsScore / this.levelOneWords.length;
          if (score >= 0.8) {
            console.log("You passed!");
          } else {
            console.log("You failed.");
          }
          this.currentIndex = 0;
          this.levelOneWordsScore = 0; // reset the score
        }
        // Reset the selected option
        this.selectedOption = null;
      }, 250);
    },
    generateWordList() {
      console.log("Generate Word Lists initialized");
      // Get the first 500 words
      const wordsCopy = [...this.words];
      const first500Words = wordsCopy.splice(0, 500);

      // Select 5 random words from the first 500 words
      this.levelOneWords = [];
      for (let i = 0; i < 5; i++) {
        // Choose a random word from the first 500 words
        const randomIndex = Math.floor(Math.random() * first500Words.length);
        const randomWord = first500Words[randomIndex];

        // Remove the chosen word from the array of words
        first500Words.splice(randomIndex, 1);

        // Choose a correct translation for the word
        const correctTranslation = randomWord.translation;

        // Choose 3 incorrect translations from the remaining 499 words
        const incorrectTranslations = [];
        for (let j = 0; j < 3; j++) {
          const randomIndex = Math.floor(Math.random() * first500Words.length);
          const randomWord = first500Words[randomIndex];
          incorrectTranslations.push(randomWord.translation);
          first500Words.splice(randomIndex, 1);
      }

      // Shuffle the options and create an object with the word and its options
      const options = [correctTranslation, ...incorrectTranslations].sort(() => Math.random() - 0.5);
      const wordWithOptions = {
        word: randomWord.word,
        options: options,
        correctIndex: options.indexOf(correctTranslation)
      };

      // Add the word with options to the levelOneWords array
      this.levelOneWords.push(wordWithOptions);
    }

      // Shuffle the levelOneWords array
      for (let i = this.levelOneWords.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [this.levelOneWords[i], this.levelOneWords[j]] = [this.levelOneWords[j], this.levelOneWords[i]];
  }
    this.levelOneWordsScore = 0;
    this.selectedOption = null; // reset selected option when generating new word list
    this.currentIndex = 0;
  }
  },
  async created() {
    if (!this.$store.state.words.length) {
        try {
        await this.$store.dispatch('words/fetchWords');
        this.words = this.$store.state.words.words;
      } catch (error) {
        console.error(error);
      }
    }
  },
});
</script>
