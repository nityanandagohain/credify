<template>
  <div id="take-loan">
    <div id="geetings">
      <div class="greeting-div">
        <div class="columns is-mobile">
          <div class="column has-text-weight-bold">
            <span class="username">Repayment</span>
          </div>
        </div>
      </div>
    </div>

    <div class="padding">
      <div class="balance-card card-one has-text-centered balance-card">
        <div class="columns-new">
          <div class="column">
            <span class="large">50.0</span>
          </div>
        </div>
        <div class="columns-new">
          <div class="column">
            <span class="balance-coin">Tenure:</span>
            <span class="balance-amount-new">6 months</span>
          </div>
        </div>
        <div class="columns-new">
          <div class="column">
            <span class="balance-coin">EMIs:</span>
            <span class="balance-amount-new">6</span>
          </div>
        </div>
        <div class="columns-new">
          <div class="column">
            <span class="balance-coin">Total Interest @24%:</span>
            <span class="balance-amount-new">122</span>
          </div>
        </div>
      </div>
    </div>

    <div class="padding">
      <div class="g--flex">
        <article>
          <ul class="timeline">
            <div class="timeline__endured">
              <div class="aside filled">
                <div class="aside__line filled__line">
                  <div class="filled__line__completed" style="height: 100%;"></div>
                </div>
              </div>

              <li class="timeline__event is--first-day is--monday is--complete">
                <p class="timeline__event__date">Monday 1st August</p>

                <figure class="dot">
                  <span class="ratio svg dot__icon">
                    <canvas width="9px" height="9px"></canvas>
                    <svg viewBox="0 0 9 9">
                      <use xlink:href="/src/svg/symbols/symbols.svg#tick" />
                    </svg>
                  </span>
                </figure>

                <h5 class="timeline__event__title">
                  10
                  <i class="fa fa-check" aria-hidden="true"></i>
                </h5>

                <h6 class="timeline__event__difference"></h6>
              </li>

              <li class="timeline__event">
                <p class="timeline__event__date">Tuesday 2nd August</p>
              </li>

              <li class="timeline__event">
                <p class="timeline__event__date">Wednesday 3rd August</p>
              </li>

              <li class="timeline__event is--complete">
                <p class="timeline__event__date">Thursday 4th August</p>

                <figure class="dot">
                  <span class="ratio svg dot__icon">
                    <canvas width="9px" height="9px"></canvas>
                    <svg viewBox="0 0 9 9">
                      <use xlink:href="/src/svg/symbols/symbols.svg#tick" />
                    </svg>
                  </span>
                </figure>

                <h5 class="timeline__event__title">
                  10
                  <i class="fa fa-check" aria-hidden="true"></i>
                </h5>

                <h6 class="timeline__event__difference"></h6>
              </li>

              <li class="timeline__event">
                <p class="timeline__event__date">Wednesday 3rd August</p>
              </li>

              <li class="timeline__event">
                <p class="timeline__event__date">Wednesday 3rd August</p>
              </li>

              <li class="timeline__event is--monday is--today">
                <p class="timeline__event__date">Monday 8th August</p>

                <figure class="dot">
                  <span class="ratio svg dot__icon is--waiting">
                    <canvas width="13px" height="3px"></canvas>
                    <svg viewBox="0 0 13 3">
                      <use xlink:href="/src/svg/symbols/symbols.svg#waiting" />
                    </svg>
                  </span>
                </figure>

                <h5 class="timeline__event__title">10</h5>

                <h6 class="timeline__event__difference"></h6>
              </li>
            </div>

            <li class="timeline__event">
              <p class="timeline__event__date">Tuesday 2nd August</p>
            </li>

            <li class="timeline__event">
              <p class="timeline__event__date">Wednesday 3rd August</p>
            </li>

            <li class="timeline__event is--monday is--today">
              <p class="timeline__event__date">Monday 8th August</p>

              <figure class="dot">
                <span class="ratio svg dot__icon is--waiting">
                  <canvas width="13px" height="3px"></canvas>
                  <svg viewBox="0 0 13 3">
                    <use xlink:href="/src/svg/symbols/symbols.svg#waiting" />
                  </svg>
                </span>
              </figure>

              <h5 class="timeline__event__title">10</h5>

              <h6 class="timeline__event__difference"></h6>
            </li>

            <li class="timeline__event">
              <p class="timeline__event__date">Tuesday 2nd August</p>
            </li>

            <li class="timeline__event">
              <p class="timeline__event__date">Wednesday 3rd August</p>
            </li>

            <li class="timeline__event is--monday is--today">
              <p class="timeline__event__date">Monday 8th August</p>

              <figure class="dot">
                <span class="ratio svg dot__icon is--waiting">
                  <canvas width="13px" height="3px"></canvas>
                  <svg viewBox="0 0 13 3">
                    <use xlink:href="/src/svg/symbols/symbols.svg#waiting" />
                  </svg>
                </span>
              </figure>

              <h5 class="timeline__event__title">10</h5>

              <h6 class="timeline__event__difference"></h6>
            </li>
          </ul>
        </article>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "repayment"
};
</script>
<style scoped>
.large {
  font-size: 50px;
}
.balance-amount-new {
  font-size: 18px;
}
.columns-new {
  margin-left: -0.75rem;
  margin-right: -0.75rem;
  margin-top: -0.25rem;
  display: flex;
  justify-content: flex-start;
}

.fa-check {
  color: green;
}

*,
*:before,
*:after,
* * {
  box-sizing: border-box;
  -webkit-tap-highlight-color: rgba(255, 255, 255, 0) !important;
  -webkit-focus-ring-color: rgba(255, 255, 255, 0) !important;
  outline: none !important;
}

.g--flex {
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
}

.g--flex > * {
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
}

body {
  font: 15px/1 "Proxima Nova", sans-serif;
}

html,
body,
body > * {
  min-height: 100%;
}

html,
body,
body > * {
  height: 100%;
}

/*
    elements
*/
.ratio {
  position: relative;
}

.ratio canvas {
  visibility: hidden;
  display: block;
  width: 100%;
}

.ratio canvas + * {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

.ratio.set--height canvas {
  width: auto;
  height: 100%;
}

.svg {
  display: inline-block;
}

.timeline {
  position: relative;
  min-width: 545px;
  background: white;
}
.timeline__event {
  position: relative;
  top: 9px;
  z-index: 2;
  display: flex;
  align-items: center;
  height: 20px;
  cursor: default;
}
.timeline__event:before {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  width: 23px;
  height: 2px;
  background: #e0dee0;
  content: "";
}
.timeline__event.is--monday:before {
  background-color: #c2c2c2;
}
.timeline__event.is--weekend:before {
  width: 11px;
}
.timeline__event__date {
  opacity: 0;
  width: 35.2941176471%;
  padding-left: 35px;
  color: #7e828d;
  font-size: 0.8rem;
  transition: opacity 0.2s ease-in;
}
.timeline__event.is--first-day .timeline__event__date,
.timeline__event.is--today .timeline__event__date,
.timeline__event.is--last-day .timeline__event__date,
.timeline__event:hover .timeline__event__date,
.timeline__event:focus .timeline__event__date {
  opacity: 1;
  transition: opacity 0.2s ease-in;
}
.timeline__endured {
  position: relative;
  padding-top: 30px;
}

.dot {
  transform: translateX(-50%);
  display: flex;
  align-items: center;
  justify-content: center;
  width: 20px;
  height: 20px;
  background: white;
  border: 2px solid #718394;
  border-radius: 20px;
}
.dot__icon.is--waiting {
  width: 10px;
}
.is--complete .dot {
  background-color: #5d8eff;
  border: none;
}

.aside {
  position: absolute;
  top: 0;
  left: 0;
  width: 35.2941176471%;
  height: 100%;
}
.aside__line {
  position: absolute;
  top: 0;
  left: 100%;
  transform: translateX(-50%);
  width: 4px;
  height: 100%;
  background: #f0edf0;
}

.filled {
  transform: scaleY(0);
  transform-origin: top center;
  z-index: 1;
  background: #f3f1f3;
  animation: scaleDown 1s ease-in-out;
  animation-fill-mode: forwards;
}
.filled__line__completed {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  background: #5d8eff;
}

/*
    views
*/
.scene {
  position: relative;
  background-color: #020111;
}

.scene__shade {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

.scene__shade.is--past {
  -webkit-animation: fadeOut 0.5s linear;
  animation: fadeOut 0.5s linear;
  -webkit-animation-fill-mode: forwards;
  animation-fill-mode: forwards;
}

.scene__shade:nth-child(1) {
  z-index: 99;
  background: #020111;
  -webkit-animation-delay: 0.5s;
  animation-delay: 0.5s;
}

.scene__shade:nth-child(2) {
  z-index: 98;
  background: linear-gradient(to bottom, #020111 85%, #191621 100%);
  -webkit-animation-delay: 1s;
  animation-delay: 1s;
}

.scene__shade:nth-child(3) {
  z-index: 97;
  background: linear-gradient(to bottom, #020111 60%, #20202c 100%);
  -webkit-animation-delay: 1.5s;
  animation-delay: 1.5s;
}

.scene__shade:nth-child(4) {
  z-index: 96;
  background: linear-gradient(to bottom, #020111 10%, #3a3a52 100%);
  -webkit-animation-delay: 2s;
  animation-delay: 2s;
}

.scene__shade:nth-child(5) {
  z-index: 95;
  background: linear-gradient(to bottom, #20202c 0%, #515175 100%);
  -webkit-animation-delay: 2.5s;
  animation-delay: 2.5s;
}

.scene__shade:nth-child(6) {
  z-index: 94;
  background: linear-gradient(to bottom, #40405c 0%, #6f71aa 80%, #8a76ab 100%);
  -webkit-animation-delay: 3s;
  animation-delay: 3s;
}

.scene__shade:nth-child(7) {
  z-index: 93;
  background: linear-gradient(to bottom, #4a4969 0%, #7072ab 50%, #cd82a0 100%);
  -webkit-animation-delay: 3.5s;
  animation-delay: 3.5s;
}

.scene__shade:nth-child(8) {
  z-index: 92;
  background: linear-gradient(to bottom, #757abf 0%, #8583be 60%, #eab0d1 100%);
  -webkit-animation-delay: 4s;
  animation-delay: 4s;
}

.scene__shade:nth-child(9) {
  z-index: 91;
  background: linear-gradient(to bottom, #82addb 0%, #ebb2b1 100%);
  -webkit-animation-delay: 4.5s;
  animation-delay: 4.5s;
}

.scene__shade:nth-child(10) {
  z-index: 90;
  background: linear-gradient(to bottom, #94c5f8 1%, #a6e6ff 70%, #b1b5ea 100%);
  -webkit-animation-delay: 5s;
  animation-delay: 5s;
}

.scene__shade:nth-child(11) {
  z-index: 89;
  background: linear-gradient(to bottom, #b7eaff 0%, #94dfff 100%);
  -webkit-animation-delay: 5.5s;
  animation-delay: 5.5s;
}

.scene__shade:nth-child(12) {
  z-index: 88;
  background: linear-gradient(to bottom, #9be2fe 0%, #67d1fb 100%);
  -webkit-animation-delay: 6s;
  animation-delay: 6s;
}

.scene__shade:nth-child(13) {
  z-index: 87;
  background: linear-gradient(to bottom, #90dffe 0%, #38a3d1 100%);
  -webkit-animation-delay: 6.5s;
  animation-delay: 6.5s;
}

.scene__shade:nth-child(14) {
  z-index: 86;
  background: linear-gradient(to bottom, #57c1eb 0%, #246fa8 100%);
  -webkit-animation-delay: 7s;
  animation-delay: 7s;
}

.scene__shade:nth-child(15) {
  z-index: 85;
  background: linear-gradient(to bottom, #2d91c2 0%, #1e528e 100%);
  -webkit-animation-delay: 7.5s;
  animation-delay: 7.5s;
}

.scene__shade:nth-child(16) {
  z-index: 84;
  background: linear-gradient(to bottom, #2473ab 0%, #1e528e 70%, #5b7983 100%);
  -webkit-animation-delay: 8s;
  animation-delay: 8s;
}

.scene__shade:nth-child(17) {
  z-index: 83;
  background: linear-gradient(to bottom, #1e528e 0%, #265889 50%, #9da671 100%);
  -webkit-animation-delay: 8.5s;
  animation-delay: 8.5s;
}

.scene__shade:nth-child(18) {
  z-index: 82;
  background: linear-gradient(to bottom, #1e528e 0%, #728a7c 50%, #e9ce5d 100%);
  -webkit-animation-delay: 9s;
  animation-delay: 9s;
}

.scene__shade:nth-child(19) {
  z-index: 81;
  background: linear-gradient(
    to bottom,
    #154277 0%,
    #576e71 30%,
    #e1c45e 70%,
    #b26339 100%
  );
  -webkit-animation-delay: 9.5s;
  animation-delay: 9.5s;
}

.scene__shade:nth-child(20) {
  z-index: 80;
  background: linear-gradient(
    to bottom,
    #163c52 0%,
    #4f4f47 30%,
    #c5752d 60%,
    #b7490f 80%,
    #2f1107 100%
  );
  -webkit-animation-delay: 10s;
  animation-delay: 10s;
}

.scene__shade:nth-child(21) {
  z-index: 79;
  background: linear-gradient(
    to bottom,
    #071b26 0%,
    #071b26 30%,
    #8a3b12 80%,
    #240e03 100%
  );
  -webkit-animation-delay: 10.5s;
  animation-delay: 10.5s;
}

.scene__shade:nth-child(22) {
  z-index: 78;
  background: linear-gradient(
    to bottom,
    #010a10 30%,
    #59230b 80%,
    #2f1107 100%
  );
  -webkit-animation-delay: 11s;
  animation-delay: 11s;
}

.scene__shade:nth-child(23) {
  z-index: 77;
  background: linear-gradient(to bottom, #090401 50%, #4b1d06 100%);
  -webkit-animation-delay: 11.5s;
  animation-delay: 11.5s;
}

.scene__shade:nth-child(24) {
  z-index: 76;
  background: linear-gradient(to bottom, #00000c 80%, #150800 100%);
  -webkit-animation-delay: 12s;
  animation-delay: 12s;
}

.scene__shade:nth-child(25) {
  z-index: 75;
  background: #00000c;
  -webkit-animation-delay: 12.5s;
  animation-delay: 12.5s;
}

@-webkit-keyframes fadeOut {
  0% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}
@keyframes fadeOut {
  0% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}
@-webkit-keyframes scaleDown {
  0% {
    -webkit-transform: scaleY(0);
    transform: scaleY(0);
  }
  100% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
}
@keyframes scaleDown {
  0% {
    -webkit-transform: scaleY(0);
    transform: scaleY(0);
  }
  100% {
    -webkit-transform: scaleY(1);
    transform: scaleY(1);
  }
}
</style>

