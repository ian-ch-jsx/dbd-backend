const { Router } = require('express');
const Survivor = require('../models/Survivor');

module.exports = Router().get('/', async (req, res) => {
  const survivor = await Survivor.getAll();
  res.send(survivor);
});
