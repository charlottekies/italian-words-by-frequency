<template>
  <div>
    <button @click="showModal = true">Take Assessment Quiz</button>
    <quiz-modal :is-open="showModal" @close="showModal = false">
      <h2>Modal Content</h2>
      <p>This is the content of the modal.</p>
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
      showModal: false
    };
  },
  async created() {
    if (this.$store.state.words) {
        try {
        await this.$store.dispatch('words/fetchWords');
        this.words = this.$store.state.words.words;
      } catch (error) {
        console.error(error);
      }
    }
    else {
      console.log(this.$store.state.words.size)
    }
  },
});
</script>
