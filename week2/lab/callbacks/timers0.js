var timer = {
  startBtn: document.querySelector("#start"),
  pauseBtn: document.querySelector("#pause"),
  resetBtn: document.querySelector("#reset"),
  timerLabel: document.querySelector("#timer"),
  seconds: 0,
  timerId: 0,
  currentSpeed: 1000,

  updateTime: function() {
    timer.timerLabel.textContent = "Time elapsed: " + timer.seconds
    timer.seconds += 1;
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
    timer.timerLabel.textContent = "Stop Watch"

  }
}

timer.startBtn.addEventListener("click", timer.start)
timer.pauseBtn.addEventListener("click", timer.pause)
timer.resetBtn.addEventListener("click", timer.stop)
