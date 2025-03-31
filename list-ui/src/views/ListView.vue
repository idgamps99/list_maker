<template>
  <div class="card-container">
    <AlbumHeader :title="getTitle()" />

    <div class="album-card">
      <div class="album-cover">
        <div class="placeholder-text">[Album artwork]</div>
      </div>
      <div class="content">
        <h2 class="artist-name">Gorō Yamaguchi</h2>
        <h3 class="album-title">A Bell Ringing in the Empty Sky</h3>
        <div class="album-year">(1969)</div>
        <div class="album-genre">Honkyoku</div>
        <div class="album-description">instrumental, acoustic, peaceful, meditative, calm</div>
      </div>
    </div>

    <div class="album-card">
      <div class="album-cover">
        <div class="placeholder-text">[Album artwork]</div>
      </div>
      <div class="content">
        <h2 class="artist-name">Gorō Yamaguchi</h2>
        <h3 class="album-title">A Bell Ringing in the Empty Sky</h3>
        <div class="album-year">(1969)</div>
        <div class="album-genre">Honkyoku</div>
        <div class="album-description">instrumental, acoustic, peaceful, meditative, calm</div>
      </div>
    </div>
  </div>
</template>

<script>
import lists from '../lists.json'
import AlbumHeader from '@/components/AlbumHeader.vue'

export default {
  components: {
    AlbumHeader
  },
  data () {
    return {
      lists: lists
    }
  },
  methods: {
    getTitle () {
      const list = this.lists.find((element) => {
        return element.id === Number(this.$route.params.id)
      })
      return list.title
    }
  }
}
</script>

<style scoped>

.album-card {
  display: flex;
  background-color: #272A37;
  border-radius: 4px;
  overflow: hidden;
  width: 100%;
  max-width: 12000px;
  margin-top: 10px;
}

.album-cover {
  width: 170px;
  height: 170px;
  background-color: #222;
  display: flex;
  justify-content: center;
  align-items: center;
}

.placeholder-text {
  color: #666;
  font-size: 12px;
}

.content {
  padding: 14px;
  flex-grow: 1;
}

.artist-name {
  color: #4a9ddb;
  font-size: 22px;
  margin-bottom: 10px;
}

.album-title {
  color: #4a9ddb;
  font-size: 18px;
  font-style: italic;
  margin-bottom: 6px;
}

.album-year {
  color: #888;
  font-size: 16px;
  margin-bottom: 20px;
}

.album-genre {
  color: white;
  font-size: 16px;
  margin-bottom: 6px;
}

.album-description {
  color: #aaa;
  font-size: 14px;
}

</style>
