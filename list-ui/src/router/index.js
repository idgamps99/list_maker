import { createRouter, createWebHistory } from 'vue-router'
import HomeView from '../views/HomeView.vue'
import ListView from '../views/ListView.vue'

const routes = [
  { path: '/', component: HomeView },
  { path: '/lists/:id', component: ListView }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router

// 1. define route for list page
// 2. create view for list page
// 3. link every list to that list page
// 4.
