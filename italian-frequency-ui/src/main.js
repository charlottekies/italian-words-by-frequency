import { createApp } from "vue";
import App from "./App.vue";
import store from "./store";
import "./assets/styles.css";
import { library } from "@fortawesome/fontawesome-svg-core";
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import { faSort } from "@fortawesome/free-solid-svg-icons";

library.add(faSort);

createApp(App)
  .component("font-awesome-icon", FontAwesomeIcon)
  .use(store)
  .mount("#app");
