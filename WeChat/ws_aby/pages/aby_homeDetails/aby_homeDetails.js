// pages/aby_homeDetails/aby_homeDetails.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    scrollHeight: 0,
    scrollViewHeights: [0],
    navActive: 1,
    scrollTop: 0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function() {
    var query = wx.createSelectorQuery();
    query.selectAll(".scrollView").boundingClientRect();
    var thiz = this;
    query.exec((res) => {
      for (var i = 0; i < res[0].length; i++) {
        var curs = thiz.data.scrollViewHeights;
        var prev = curs[i];
        curs[i + 1] = prev + res[0][i].height;
        thiz.setData({
          scrollViewHeights: curs
        })
      }
      curs[i + 1] = curs[i] + 100;
      this.setData({
        scrollHeight: wx.getSystemInfoSync().windowHeight + 60,
        scrollViewHeights: curs
      })
    })

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function() {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function() {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function() {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function() {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function() {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function() {

  },
  scroll: function(e) {
    for (var i = 1; i < 7; i++) {
      if (this.data.scrollViewHeights[i - 1] < e.detail.scrollTop && e.detail.scrollTop < this.data.scrollViewHeights[i]) {
        this.setData({
          navActive: i
        })
        break;
      }
    }
  },

  tosetScrollTop: function(e) {
    var i = e.currentTarget.dataset.index;
    this.setData({
      scrollTop: this.data.scrollViewHeights[i]
    })
  }
})