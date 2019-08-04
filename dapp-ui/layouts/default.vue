<template>
  <div>
    <div id="app">
      <div id="nav">
        <!-- <router-link to="/">Home</router-link> |
        <router-link to="/about">About</router-link>-->
        <div class="logo" @click="goToHome()">
          <img
            data-v-64fe992e
            src="../assets/credify_logo.svg"
            style="width: 50px; margin-top: 3px; margin-left: -10px;"
          />
          <span class="credify">credify</span>
        </div>
        <div class="user-display">
          <div class="notifications">
            <img
              data-v-4279a8fa
              src="https://app.incento.io/_nuxt/img/5d8e998.svg"
              style="width: 35px;"
            />
          </div>
          <div class="profile" @click="goToProfile()">
            <img data-v-126af358 style="width: 35px;" src="../assets/profile.svg" />
          </div>
        </div>
      </div>
    </div>
    <nuxt class="mt" />

    <div id="footer" class>
      <div class="columns-normal has-text-centered is-mobile">
        <div class="column">
          <a href="/LenderHome" class>
            <div>
              <img src="../assets/takeloan'.svg" alt="service" class="icon" />
              <div class="title">Lend Loan</div>
            </div>
          </a>
        </div>
        <div class="column">
          <a href="/test" class>
            <div>
              <img src="../assets/home.svg" alt="service" class="icon" />
              <div class="title">Home</div>
            </div>
          </a>
        </div>
        <div class="column">
          <a href="/test" class>
            <div>
              <img src="../assets/repaylaon.svg" alt="service" class="icon" />
              <div class="title">Repay Loan</div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { fetchAllProperties, setProvider } from "~/plugins/utils";
import { sampleTx } from "~/plugins/walletConnect";

export default {
  components: {},
  async mounted() {
    // this.$router.push("test");
    // init Metamask
    await setProvider();
    // fetch all properties
    console.log("jfdlj");
    const properties = await fetchAllProperties();
    // this.posts = properties
    // console.log("props  coming in machu: ", properties);
    this.myLoans = properties.myLoans;
    this.notMyLoans = properties.notMyLoans;
  },
  data() {
    return {
      posts: [],
      myLoans: [],
      notMyLoans: [],
      loan_lenders: {}
    };
  },
  methods: {
    async sendTx() {
      await sampleTx();
    },
    goToProfile() {
      this.$router.push("/profile");
    },
    goToHome() {
      this.$router.push("/test");
    }
  }
};
</script>

<style>
.credify {
  margin-left: 10px;
  font-weight: 700;
  font-size: xx-large;
  color: #007bff;
}
.title {
  font-size: 1rem;
  color: #007bff;
  margin: 2px;
}

#nav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: white;
  /* position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 2em; */
}

#footer {
  position: fixed;
  bottom: 0;
  left: 0;
  width: 100vw;
  height: 8em;
}

.mt {
  margin-top: 75px;
}

html {
  font-family: "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI",
    Roboto, "Helvetica Neue", Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
}

.button--green {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #3b8070;
  color: #3b8070;
  text-decoration: none;
  padding: 10px 30px;
}

.button--green:hover {
  color: #fff;
  background-color: #3b8070;
}

.button--grey {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #35495e;
  color: #35495e;
  text-decoration: none;
  padding: 10px 30px;
  margin-left: 15px;
}

.button--grey:hover {
  color: #fff;
  background-color: #35495e;
}

#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#nav {
  padding: 20px;
  display: flex;
  justify-content: space-between;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}

.user-display {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  margin-right: 20px;
}

.profile {
  margin-right: -10px;
  margin-left: 10px;
}

.greeting-div,
.services {
  margin-top: 10%;
}
.columns {
  margin-left: -0.75rem;
  margin-right: -0.75rem;
  margin-top: -0.25rem;
  display: flex;
  justify-content: space-between;
}
.columns-normal {
  display: flex;
  justify-content: space-between;
}
.columns:last-child {
  margin-bottom: -0.75rem;
}
.column {
  display: block;
  flex-basis: 0;
  flex-grow: 1;
  flex-shrink: 1;
}
.has-text-weight-bold {
  font-weight: 700 !important;
}
.add-money-btn {
  font-style: normal;
  font-weight: 700;
  font-size: 14px;
  line-height: 19px;
  text-align: center;
  color: #007bff;
}
.add-money-link {
  padding: 5px 10px;
  border: 1px solid #007bff;
  border-radius: 50px;
  background: #f1f0f0;
}
.add-money-btn a {
  color: #007bff;
}

a {
  color: #007bff;
  cursor: pointer;
  text-decoration: none;
}
.balance-card {
  color: #fff;
  padding-top: 1em;
  padding-bottom: 1em;
  /* background: linear-gradient(217.3deg, #fdc67e 54.82%, #f87898 98.16%); */
  mix-blend-mode: normal;
  box-shadow: 0 2px 20px #f0ecec;
  border-radius: 13px;
}
#drive-btns {
  display: flex;
  justify-content: space-evenly;
}

.logo {
  display: flex;
  justify-content: center;
  align-items: center;
}

.padding {
  padding: 0.75rem;
}
.balance-amount {
  font-size: 36px;
}
.card-one {
  background: linear-gradient(135deg, #fcdf8a 0%, #f38381 100%);
}
.card-two {
  background: linear-gradient(135deg, #fad961 0%, #f78b30 100%);
}
.card-three {
  background: linear-gradient(135deg, #1bcedf 0%, #3b77ab 100%);
}
.card-four {
  background: linear-gradient(135deg, #f02fc2 0%, #966eda 100%);
}
.card-five {
  background: linear-gradient(135deg, #c53364 0%, #622774 100%);
}
.right-icon {
  font-size: 50px;
  margin-left: 50px;
}
</style>
