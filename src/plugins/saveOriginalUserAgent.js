module.exports = {
  requestReceived: (req, res, next) => {
    req.prerender.userAgent = req.headers['user-agent'] + ' Prerender';
    next();
  },
};