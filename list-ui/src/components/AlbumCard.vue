<template>
  <div class="album-card">
    <div class="album-cover">
      <div class="placeholder-text">[Album artwork]</div>
    </div>
    <div class="content">
      <h2 class="artist-name">{{ album.artist }}</h2>
      <h3 class="album-title">{{ album.album }}</h3>
      <div class="album-year">({{ album.release_year }})</div>
      <div class="album-genre">Genre</div>
      <div class="album-description">instrumental, acoustic, peaceful, meditative, calm</div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['album']
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
