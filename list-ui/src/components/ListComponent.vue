<template>
  <div class="card-product">
    <img src="https://upload.wikimedia.org/wikipedia/en/e/e9/Musichastherighttochildren.jpg" />
    <div class="card-product-infos">
      <h2>{{ list.title }}</h2>
      <p>Some kind of description <strong>of the list</strong> here.</p>
    </div>
  </div>
</template>

<script>
export default {
  props: ['list']
}
</script>

<style scoped>
.card-product {
  overflow: hidden;
  height: 120px;
  background: #191C28;
  box-shadow: 0 0 15px rgba(0,0,0,0.2);
  display: flex;
  align-items: center;
  margin: 18px;
}

.card-product img {
  height: 100%;
  width: 120px;
  object-fit: cover;
}

.card-product h2 {
  font-size: 18px;
  font-weight: bold;
  margin: 0;
}

.card-product p {
  font-size: 12px;
  line-height: 1.4;
  opacity: .7;
  margin-bottom: 0;
  margin-top: 8px;
}

.card-product .card-product-infos {
  padding: 16px;
}
</style>
