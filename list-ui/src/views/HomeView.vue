<template>
  <div class="card-container">

    <router-link to="/lists/1">
      <ListComponent
        v-for="list in lists"
        :key="list.id"
        :list="list"
      />
    </router-link>
  </div>
</template>

<script>
import ListComponent from '../components/ListComponent.vue'
import lists from '../lists.json'

export default {
  data () {
    return {
      lists: lists
    }
  },
  components: {
    ListComponent
  },
  mounted () {
    console.log(this.lists)
  }
}

</script>

<style scoped>
.card-container {
  margin: 60px;
}
</style>
