import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'

Vue.use(Router)


export default new Router({
  mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    },
    {
      path: '/find',
      name: 'find',
      component: () => import(/* webpackChunkName: "find" */ './views/Find.vue')
    },
    {
      path: '/restaurant',
      name: 'restaurant',
      component: () => import(/* webpackChunkName: "restaurant" */ './views/Restaurant.vue')
    },
    {
      path: '/localstorage',
      name: 'localstorage',
      component: () => import(/* webpackChunkName: "test" */ './views/Localstorage.vue')
    },
    {
      path: '/line',
      name: 'line',
      component: () => import(/* webpackChunkName: "line" */ './views/Line.vue')
    },
    {
      path: '/cv',
      name: 'CV',
      component: () => import(/* webpackChunkName: "cv" */ './views/CV.vue')
    }

  ]
})
