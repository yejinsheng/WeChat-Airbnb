// pages/searchMore/searchMore.js
Page({
  getImage: function () {
    wx.request({
      url: 'http://localhost:8000/imagelist',
      method: "get",
      success: (res) => {
        this.setData({ imglist: res.data });
      },
      fail(res) {
        console.log("失败", res);
      }
    });
  },
  getcardList() {
    wx.request({
      url: 'http://localhost:8000/cardlist?pno=1&pageSize=8',
      method: "get",
      success: (res) => {
        this.setData({ cardlist: res.data.data });
      },
      fail(res) {
        console.log("失败", res);
      }
    });
  },
  /**
   * 页面的初始数据
   */
  data: {

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.getImage();
    this.getcardList();
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})