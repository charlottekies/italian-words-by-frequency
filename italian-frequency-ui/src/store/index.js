import { createStore } from "vuex";
import words from "./modules/words";

const store = createStore({
  modules: {
    words,
  },
});

export default store;
