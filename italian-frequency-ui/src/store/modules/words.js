import { getWords } from "@/api/words";

const state = {
  words: [],
};

const mutations = {
  setWords(state, words) {
    state.words = words;
  },
};

const actions = {
  async fetchWords({ commit }) {
    const words = await getWords();
    commit("setWords", words);
  },
};

export const getters = {
  words: (state) => state.words,
};

export default {
  namespaced: true,
  state,
  mutations,
  actions,
};
