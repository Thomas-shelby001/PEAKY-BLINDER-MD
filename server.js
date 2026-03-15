const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

// Start your bot
require('./index'); // Replace './index' with your main bot file

// Keep Heroku happy with a web server
app.get('/', (req, res) => {
  res.send('Bot is running!');
});

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});