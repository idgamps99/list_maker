<template>
    <nav class="navbar bg-body-tertiary ">
      <div class="container-fluid">
        <router-link to="/" class="navbar-brand">
          <img src="./assets/logo.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
          My List Maker
        </router-link>
      </div>
    </nav>

    <router-view />

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
  color: white;
}

.bg-body-tertiary {
  background-color: #1C2B45 !important;
}

.navbar-brand {
  color: white;
}
</style>
