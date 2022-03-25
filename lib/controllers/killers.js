const { Router } = require('express');
const Killer = require('../models/Killer');

module.exports = Router().get('/', async (req, res) => {
  const killer = await Killer.getAll();
  res.send(killer);
});
