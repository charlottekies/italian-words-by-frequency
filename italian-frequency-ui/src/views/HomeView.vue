<template>
  <v-app>
    <div>
      <button @click="(showModal = true), generateWordList()">
        Take Assessment Quiz
      </button>
      <quiz-modal :is-open="showModal" @close="showModal = false">
        <div v-if="levelOneWords[currentIndex]">
          <h2 id="quiz-word">{{ levelOneWords[currentIndex].word }}</h2>

          <div id="quiz-answers-container">
            <div
              id="quiz-answers"
              v-for="(wordOption, index) in levelOneWords[currentIndex].options"
              :key="index"
            >
              <v-btn-toggle v-model="selectedOption">
                <v-btn
                  :value="index"
                  :key="'option-' + index"
                  :color="
                    correctOption === null
                      ? 'primary'
                      : correctOption
                      ? 'success'
                      : 'error'
                  "
                  dark
                  @click="showNextWord"
                  :ripple="true"
                  elevation="0"
                >
                  {{ wordOption }}
                </v-btn>
              </v-btn-toggle>
            </div>
          </div>
        </div>
      </quiz-modal>
      <word-table :words="words" />
      <div v-if="!words || words.length === 0"></div>
    </div>
  </v-app>
</template>

<script>
import WordTable from "@/components/WordTable.vue";
import QuizModal from "@/components/QuizModal.vue";
import { defineComponent } from "vue";

export default defineComponent({
  name: "HomeView",
  components: {
    WordTable,
    QuizModal,
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
      quizWords: [
        this.levelOneWords,
        this.levelTwoWords,
        this.levelThreeWords,
        this.levelFourWords,
        this.levelFiveWords,
      ],
      currentIndex: 0,
      selectedOption: null,
      wordSet: 0, // Counter for the set of words
      correctOption: null,
      levelOneWordsScore: 0,
      levelTwoWordsScore: 0,
    };
  },
  methods: {
    generateWordList() {
      const firstWordGroup = this.getNextLevelWords(0);
      // const secondWordGroup = this.getNextLevelWords(500);
      // const thirdLevelWordGroup = this.getNextLevelWords(999);
      // const fourthLevelWordGroup = this.getNextLevelWords(1499);
      // Select 5 random words from the first 500 words
      this.generateFirstLevelWordsWithAnswers(firstWordGroup)
      this.shuffleWords()
      this.levelOneWordsScore = 0;
      this.selectedOption = null; // reset selected option when generating new word list
      this.currentIndex = 0;
    },
    getNextLevelWords(startingIndex) {
      const wordsCopy = [...this.words];
      const nextLevelWords = wordsCopy.splice(
        startingIndex,
        startingIndex + 499
      );
      return nextLevelWords;
    },
    generateFirstLevelWordsWithAnswers(firstWordGroup) {
      this.levelOneWords = [];
      for (let i = 0; i < 5; i++) {
        const { randomIndex, randomWord } = this.generateRandomWord(firstWordGroup);
        firstWordGroup.splice(randomIndex, 1); // remove word so it can't be chosen again
        const { correctTranslation, incorrectTranslations } = this.generateTranslations(randomWord, firstWordGroup);
        const wordWithAnswers = this.generateWordWithAnswers(correctTranslation, incorrectTranslations, randomWord);
        this.levelOneWords.push(wordWithAnswers);
      }
    },
    generateRandomWord(words) {
      const randomIndex = Math.floor(Math.random() * words.length);
      const randomWord = words[randomIndex];
      return { randomIndex, randomWord };
    },
    generateTranslations(word, words) {
      // Choose a correct translation for the word
      const correctTranslation = word.translation;

      // Choose 3 incorrect translations from the remaining 499 words
      const incorrectTranslations = [];
      for (let j = 0; j < 3; j++) {
        const randomIndex = Math.floor(Math.random() * words.length);
        const randomWord = words[randomIndex];
        incorrectTranslations.push(randomWord.translation);
        words.splice(randomIndex, 1);
      }
      return { correctTranslation, incorrectTranslations };
    },
    generateWordWithAnswers(correctTranslation, incorrectTranslations, randomWord) {
      const options = [correctTranslation, ...incorrectTranslations].sort(
        () => Math.random() - 0.5
      );
        const wordWithOptions = {
        word: randomWord.word,
        options: options,
        correctIndex: options.indexOf(correctTranslation),
      };
      return wordWithOptions;
    },
    showNextWord() {
      if (
        this.selectedOption ==
        this.levelOneWords[this.currentIndex].correctIndex
      ) {
        this.correctOption = true; // set correctOption to true
        this.levelOneWordsScore++; // increment the score
      } else {
        this.correctOption = false; // set correctOption to false
      }
      setTimeout(() => {
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
    // TODO: Shuffle all words after creating whole list.
    shuffleWords() {
      for (let i = this.levelOneWords.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [this.levelOneWords[i], this.levelOneWords[j]] = [
          this.levelOneWords[j],
          this.levelOneWords[i],
        ];
      }
    },
  },
  async created() {
    if (!this.$store.state.words.length) {
      try {
        await this.$store.dispatch("words/fetchWords");
        this.words = this.$store.state.words.words;
      } catch (error) {
        console.error(error);
      }
    }
  },
});
</script>
