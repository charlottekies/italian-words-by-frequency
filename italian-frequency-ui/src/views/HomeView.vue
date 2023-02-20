<template>
  <div>
    <word-table :words="words" />
    <div v-if="!words || words.length === 0">
    </div>
  </div>
</template>

<script>
import WordTable from '@/components/WordTable.vue';
import { defineComponent } from 'vue';

export default defineComponent({
  name: 'HomeView',
  components: {
    WordTable,
  },
  data() {
    return {
      words: [],
    };
  },
  async created() {
    try {
      await this.$store.dispatch('words/fetchWords');
      this.words = this.$store.state.words.words;
    } catch (error) {
      console.error(error);
    }
  },
});
</script>
