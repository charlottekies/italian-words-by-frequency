<template>
  <v-app>
    <div>
      <button @click="(showModal = true), generateWordList()">
        Take Assessment Quiz
      </button>
      <quiz-modal :is-open="showModal" @close="showModal = false">
        <div v-if="currentLevelWords[currentIndex]">
          <h2 id="quiz-word">{{ currentLevelWords[currentIndex].word }}</h2>

          <div id="quiz-answers-container">
            <div
              id="quiz-answers"
              v-for="(wordOption, index) in currentLevelWords[currentIndex].options"
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
      currentLevelWords: [],
      showModal: false,
      levelOneWords: [],
      levelTwoWords: [],
      levelThreeWords: [],
      levelFourWords: [],
      quizWords: [ ],
      scores: [0,0,0,0],
      currentLevelIndex: 0,
      currentIndex: 0,
      selectedOption: null,
      wordSet: 0, // Counter for the set of words
      correctOption: null,
    };
  },
  computed: {
    isLastWordInLevel() {
      return this.currentIndex == this.quizWords[this.currentLevelIndex].length-1
    }
  },
  methods: {
    generateWordList() {
      const firstWordGroup = this.getNextLevelWords(0);
      const secondWordGroup = this.getNextLevelWords(99);
      const thirdWordGroup = this.getNextLevelWords(100);
      const fourthWordGroup = this.getNextLevelWords(199);

      this.generateWordsWithAnswers(firstWordGroup, 1);
      this.generateWordsWithAnswers(secondWordGroup, 2);
      this.generateWordsWithAnswers(thirdWordGroup, 3);
      this.generateWordsWithAnswers(fourthWordGroup, 4);
      this.quizWords = [this.levelOneWords, this.levelTwoWords, this.levelThreeWords, this.levelFourWords]
    
      // this.shuffleWords() // make shuffle all words 
      this.selectedOption = null; // reset selected option when generating new word list
      this.currentIndex = 0;
    },
    getNextLevelWords(startingIndex) {
      const wordsCopy = [...this.words];
      const nextLevelWords = wordsCopy.splice(
        startingIndex,
        startingIndex + 100
      );
      return nextLevelWords;
    },
    generateWordsWithAnswers(wordGroup, level) {
      for (let i = 0; i < 5; i++) {
        const { randomIndex, randomWord } = this.generateRandomWord(wordGroup);
        wordGroup.splice(randomIndex, 1); // remove word so it can't be chosen again
        const { correctTranslation, incorrectTranslations } = this.generateTranslations(randomWord, wordGroup);
        const wordWithAnswers = this.generateWordWithAnswers(correctTranslation, incorrectTranslations, randomWord);
        switch (level) {
          case 1: 
            this.levelOneWords.push(wordWithAnswers);
            this.currentLevelWords.push(wordWithAnswers);
            break;
          case 2:
            this.levelTwoWords.push(wordWithAnswers);
            break;
          case 3:
            this.levelThreeWords.push(wordWithAnswers);
            break;
          case 4:
            this.levelFourWords.push(wordWithAnswers);
            break;
        }
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
    evaluateResponse() {
      let currentLevelWords = this.quizWords[this.currentLevelIndex]
      if (this.selectedOption == currentLevelWords[this.currentIndex].correctIndex) {
        this.scores[this.currentLevelIndex]++
        this.correctOption = true;
      } else {
        this.correctOption = false;
      }
    },
    isRightAnswer() {
      return this.selectedOption == this.levelOneWords[this.currentIndex].correctIndex
    },
    didPassLevel() {
      console.log(Number(this.scores[this.currentLevelIndex]) / Number(this.quizWords[this.currentLevelIndex].length));
      if ((this.scores[this.currentLevelIndex] / this.quizWords[this.currentLevelIndex].length) >= 0.80) {
        return true;
      } else {
        return false;
      }
    },
    showNextWord() {
      if (this.isLastWordInLevel) {
        this.evaluateResponse()
      } else if (this.isRightAnswer) {
        this.evaluateResponse()
      }
      setTimeout(() => {
        if (!this.isLastWordInLevel) {
          this.currentIndex++;
        } else if (this.didPassLevel()) {
          console.log("You passed this level!")
          this.currentIndex = 0;
          this.currentLevelIndex++ 
          this.currentLevelWords = this.quizWords[this.currentLevelIndex]
        } else {
          console.log("You failed this level")
        }
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
