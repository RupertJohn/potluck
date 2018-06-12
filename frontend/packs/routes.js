import Vue from 'vue/dist/vue.esm';
import VueRouter from 'vue-router';
import App from './components/home/app.vue'
import Other from './components/home/other.vue'

Vue.use(VueRouter);

const routes = [
  { path: '/other', component: Other },
  { path: '/', component: App }
];

const router = new VueRouter({
  routes,
  mode: 'history'
})

export default router;
