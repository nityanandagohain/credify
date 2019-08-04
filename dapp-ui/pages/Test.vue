<template>
  <div class="home">
    <div id="greetings">
      <div class="greeting-div">
        <div class="columns is-mobile">
          <div class="column has-text-weight-bold">
            Hi,
            <span class="username">Machu</span>
          </div>
          <div class="add-money-btn column has-text-right">
            <a href="/" class="add-money-link">+ Get Loan</a>
          </div>
        </div>
      </div>
    </div>
    <div id="all-loans">
      <div class="padding">
        <div class="balance-card hp card-one has-text-centered balance-card">
          <div class>
            <div class="columns cnt">
              <span class="balance-coin">
                <img src="https://cdn.worldvectorlogo.com/logos/dai-2.svg" class="padlock" />
              </span>
              <span class="balance-amount">50.0</span>
              <span @click="goToTakeLoan()" class="dia">
                <i class="fa right-icon fa-angle-right" aria-hidden="true"></i>
              </span>
              <!-- <div class="card-content">
                <p
                  class="title"
                >“There are two hard things in computer science: cache invalidation, naming things, and off-by-one errors.”</p>
                <p class="subtitle">Jeff Atwood</p>
              </div>-->
            </div>
          </div>
        </div>
      </div>

      <div class="padding">
        <div class="balance-card card-two op has-text-centered balance-card">
          <div class>
            <div class="columns cnt">
              <span class="balance-coin">
                <img src="https://cdn.worldvectorlogo.com/logos/dai-2.svg" class="padlock" />
              </span>
              <span class="balance-amount">100.0</span>
              <span>
                <img src="../assets/padlock.svg" alt class="dia" />
              </span>
            </div>
          </div>
        </div>
      </div>

      <div class="padding">
        <div class="balance-card card-one op has-text-centered balance-card">
          <div class>
            <div class="columns cnt">
              <span class="balance-coin">
                <img src="https://cdn.worldvectorlogo.com/logos/dai-2.svg" class="padlock" />
              </span>
              <span class="balance-amount">150.0</span>
              <span>
                <img src="../assets/padlock.svg" alt class="dia" />
              </span>
            </div>
          </div>
        </div>
      </div>

      <div class="padding">
        <div class="balance-card op card-two has-text-centered balance-card">
          <div class>
            <div class="columns cnt">
              <span class="balance-coin">
                <img src="https://cdn.worldvectorlogo.com/logos/dai-2.svg" class="padlock" />
              </span>
              <span class="balance-amount">200.0</span>
              <span>
                <img src="../assets/padlock.svg" alt class="dia" />
              </span>
            </div>
          </div>
        </div>
      </div>

      <!-- <div class="padding">
        <div class="balance-card card-one has-text-centered balance-card">
          <div class="columns">
            <div class="column">
              <span class="balance-coin">
                <img
                  src="https://cdn.worldvectorlogo.com/logos/dai-2.svg"
                  style="width: 32px;    margin-right: 20px;"
                />
              </span>
              <span class="balance-amount">250.0</span>
              <span>
                <img src="../assets/padlock.svg" alt style="width: 32px; margin-left: 20px;" />
              </span>
            </div>
          </div>
        </div>
      </div>-->
    </div>
    <!-- <div id="drive-btns">
      <a class="button is-link">Loan</a>
      <a class="button is-link">Payment</a>
    </div>-->
    
  </div>
</template>

<script>
export default {
  components: {},
  methods: {
    goToTakeLoan() {
      this.$router.push("/takeloan");
    }
  }
};
</script>

<style>
#greetings {
  padding: 1rem;
}
.cnt {
  align-items: center;
}
.hp {
  height: 5rem;
}
#all-loans {
  height: 400px;
  overflow-y: auto;
}
.dia {
  width: 62px;
  /* margin-left: 20px; */
  margin-right: 2rem;
}
.padlock {
  width: 32px;
  margin-left: 2.5rem;
}
#footer {
  position: fixed;
  bottom: 0.5;
  left: 0;
  width: 100%;
  background-color: white;
  /* position: fixed;
  bottom: 0;
  left: 0;
  width: 100%; */
}
.op {
  opacity: 0.5;
  height: 5.5rem;
}
.icon {
  align-items: center;
  display: inline-flex;
  justify-content: center;
  height: 3.5rem;
  width: 3.5rem;
}
.title {
  font-size: 1rem;
  color: #007bff;
  margin: 2px;
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

.padding {
  padding: 0.75rem;
}
.balance-amount {
  font-size: 36px;
  margin-left: -8rem;
  font-weight: 700;
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
  font-size: 60px;
  font-weight: 700;
  margin-left: 0;
}
</style>

