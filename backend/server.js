// importing all modules
import dotenv from 'dotenv';
dotenv.config();
import express from 'express';
import mongoose from 'mongoose';
import cors from 'cors';
import http from 'http';
import router from './routes/routes.js';

// express app initialization
const app = express();

const server = http.createServer(app);

app.use(cors());
app.use(express.json());

// Database connection
const mongo_URI = process.env.MONGO_URI;
mongoose.connect(mongo_URI, {
  useNewUrlParser: true,
  useUnifiedTopology: true,
  useCreateIndex: true,
  useFindAndModify: false,
}).then(() =>
  console.log("MongoDB connected...")
).catch((err) => 
  console.log(err)
);

// routes
app.get('/', (req, res) => {
  res.send("Hello world")
});

app.use('/api/v1', router)

// for getting exception in process

process.on('uncaughtException', function (err) {
  console.log('Caught exception: ' + err);
}); 

// server initialize

const port = process.env.PORT || 5000;
server.listen(port, () => {
  console.log(`Server running on port ${port}`);
});