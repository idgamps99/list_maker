<template>
    <nav class="navbar bg-body-tertiary ">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">
          <img src="./assets/logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
          My List Maker
        </a>
      </div>
    </nav>

    <!-- <router-view/> -->
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: white;
}

.bg-body-tertiary {
  background-color: #1C2B45 !important;
}

.navbar-brand {
  color: white;
}
</style>
