require('dotenv').config();

module.exports = {
//   test: {
//     dialect: 'postgres',
//     database: process.env.DATABASE_NAME,
//     username: process.env.DATABASE_USERNAME,
//     password: process.env.DATABASE_PASSWORD,
//     port: process.env.DATABASE_PORT,
//     host: process.env.DATABASE_HOST,
//   },
  test: {
        dialect: 'sqlite',
        storage: './database.test.sqlite',
     },

   production: {
      dialect: 'sqlite',
      storage: './database.test.sqlite',
   },
};
