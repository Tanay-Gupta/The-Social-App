import { Router } from 'express';
import { login, register, sendOtp, verifyOtp } from '../controllers/verificationControllers.js';

const router = Router();

router.post('/auth/sendOtp', sendOtp);
router.post('/auth/verifyOtp', verifyOtp);
router.post('/auth/register', register);
router.post('/auth/login', login);


export default router;