import mongoose from "mongoose";

const UserSchema = mongoose.Schema({
  phone: {
    type: String,
    required: true,
    index: true,
    unique: [true, 'Phone number already exists'],
  },
  name: {
    type: String,
    required: [true, 'Please enter your name'],
  },
  username: {
    type: String,
    required: [true, 'Please enter UserName'],
    index: true,
    unique: [true, 'UserName already exists'],
  },
  password: {
    type: String,
    required: [true, 'Please enter password'],
  }
})

const User = mongoose.model('User', UserSchema);

export default User;