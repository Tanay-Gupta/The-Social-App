import mongoose from 'mongoose';

const VerificationSchema = mongoose.Schema({
  phone: {
    type: String,
    required: true,
    index: true,
    unique: [true, 'Phone number already exists'],
  },
  isverified: {
    type: Boolean,
    default: false
  },
  otp: {
    type: String,
    index: true
  },
  expireAt: {
    type: Date
  }
}, {
  timestamps: true
})

const Verification = mongoose.model('Verification', VerificationSchema);
export default Verification;