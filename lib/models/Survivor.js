const pool = require('../utils/pool');

module.exports = class Survivor {
  id;
  name;
  category;
  image;

  constructor(row) {
    this.id = row.id;
    this.name = row.name;
    this.category = row.category;
    this.image = row.image;
  }

  static async getAll() {
    const { rows } = await pool.query(
      `
        SELECT
            *
        FROM
            survivor_perks
        `
    );
    return rows.map((row) => new Survivor(row));
  }
};
