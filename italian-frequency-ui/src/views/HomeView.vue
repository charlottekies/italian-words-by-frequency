<template>
  <div>
    <button @click="showModal = true, generateWordList()">Take Assessment Quiz</button>
    <quiz-modal :is-open="showModal" @close="showModal = false">
      <h2>Quiz</h2>
      <p>This is the content of the modal.</p>
      <div v-if="levelOneWords[currentIndex]">
        <p>{{ levelOneWords[currentIndex].word }}</p>
      </div>
      <button @click="showNextWord">Next Word</button>
      <button @click="showModal = false">Close</button>
    </quiz-modal>
    <word-table :words="words" />
    <div v-if="!words || words.length === 0">
    </div>
  </div>
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
      currentIndex: 0
    };
  },
  methods: {
    showNextWord() {
      console.log("Next word tapped");
      this.currentIndex++;
      if (this.currentIndex >= this.levelOneWords.length) {
        this.currentIndex = 0;
    }
  },
    generateWordList() {
      console.log("Generate Word Lists initialized");

      // Get the first 500 words
      const wordsCopy = [...this.words];
      const first500Words = wordsCopy.splice(0, 500);

      // Select 5 random words from the first 500 words
      this.levelOneWords = []
      for (let i = 0; i < 5; i++) {
        const randomIndex = Math.floor(Math.random() * first500Words.length);
        const randomWord = first500Words[randomIndex];
        this.levelOneWords.push(randomWord);
        // Remove the selected word from the first500Words array to prevent duplicates
        first500Words.splice(randomIndex, 1);
      }
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
