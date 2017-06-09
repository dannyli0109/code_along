var timer = {
  startBtn: document.querySelector("#start"),
  pauseBtn: document.querySelector("#pause"),
  resetBtn: document.querySelector("#reset"),
  timerTitle: document.querySelector("#timerLabel"),
  timerLabel: document.querySelector("#timer"),
  seconds: 0,
  timerId: 0,
  currentSpeed: 1000/60,
  secondsBy60: 0,
  minutes: 0,


  updateTime: function() {
    var secondsBy60String = ""
    var secondsString = ""
    if (timer.secondsBy60 < 10) {
      secondsBy60String = "0" + timer.secondsBy60
    } else {
      secondsBy60String = timer.secondsBy60
    }

    if (timer.seconds < 10) {
      secondsString = "0" + timer.seconds
    } else {
      secondsString = timer.seconds
    }
    timer.timerTitle.textContent = "Time elapsed:"
    timer.timerLabel.textContent = timer.minutes + " : " + secondsString + " : " + secondsBy60String
    timer.secondsBy60 += 1;
    if (timer.secondsBy60 >= 60) {
      timer.secondsBy60 = 0;
      timer.seconds += 1;
      if (timer.seconds >=60 ) {
        timer.minutes += 1;
        timer.seconds = 0;
      }
    }
  },


  start: function() {
    if (timer.timerId === 0) {
      timer.updateTime()
      timer.timerId = setInterval(timer.updateTime, timer.currentSpeed);
    }
  },

  pause: function() {
    if (timer.timerId !== 0) {
      clearInterval(timer.timerId);
      timer.timerId = 0;
      // timerId = setInterval(updateTime, currentSpeed);
    }
  },

  stop: function() {
    clearInterval(timer.timerId);
    timer.timerId = 0;
    timer.seconds = 0;
    timer.minutes = 0;
    timer.timerTitle.textContent = "Stop Watch"
    timer.timerLabel.textContent = ""

  }
}

timer.startBtn.addEventListener("click", timer.start)
timer.pauseBtn.addEventListener("click", timer.pause)
timer.resetBtn.addEventListener("click", timer.stop)
