import jwt from 'jsonwebtoken';
import AWS from 'aws-sdk';
import twilio from 'twilio';

import User from "../models/User.js";
import VerModel from "../models/verification.js";



const sendSms = (phone, message) => {
  const accountSid = 'ACd1455dd78c113a2708fdaddc52a0f0a2'; 
  const authToken = '384ee6a75874ae6f11931bc3e1c64a8e'; 
  const client = twilio(accountSid, authToken); 
  
  client.messages 
    .create({   
      from: "+18782039349",      
      to: phone,
      body: message
    }) 
    .then(message => console.log(message.sid)) 
    .done();
}

export const sendOtp = async (req, res) => {
  try {
    const phone = req.body.phone;
    if(!phone) {
      return res.status(404).json({ msg: "Please enter a phone number" })
    }
    const user = await User.findOne({phone});
    if(user){
      return res.json({msg: "This number already registered"});
    }

    const otp = Math.floor(Math.random()*(10**6));

    // const params = {
    //   Message: `Your otp for social media app is ${otp}`,
    //   PhoneNumber: phone,
    //   MessageAttributes: {
    //     'AWS.SNS.SMS.SenderID': {
    //       'DataType': 'String',
    //       'StringValue': 'otp'
    //     }
    //   }
    // };
  
    // const publishTextPromise = new AWS.SNS({ apiVersion: '2010-03-31' }).publish(params).promise();
  
    // publishTextPromise.then(
    //   function (data) {
    //     console.log(JSON.stringify({ MessageID: data.MessageId }));
    // }).catch(
    //   function (err) {
    //     console.log(JSON.stringify({ Error: err }));
    // });

    sendSms(phone, `Your otp for social media app is ${otp}. Do not share this otp with anyone`);

    const ver = await VerModel.findOneAndUpdate({phone}, { otp, expireAt: new Date((new Date().getTime()+6000000))}, {
      new: true,
      upsert: true,
      runValidators: true,
    });

    console.log(ver)

    const token = jwt.sign({phone, expireAt:ver.expireAt}, process.env.JWT_SECRET, {
      expiresIn: '30d'
    })

    res.status(200).json({ msg: 'OTP send Successfully', token})
    
  } catch (error) {
    console.log(error);
    res.status(500).send({msg: "Please enter phone number again"});
  }
}

export const verifyOtp = async (req, res) => {
  try {
    const otp = req.body.otp;
    const token = req.headers.authorization.split(" ")[1];
    const verificationData = jwt.verify(token, process.env.JWT_SECRET);
    if (!token || !verificationData) {
      return res.status(401).json({ msg: 'Token not valid Try to Register again' });
    }
    const ver = await VerModel.findOne({phone: verificationData.phone});
    console.log(ver)
    if(otp !== ver.otp) {
      return res.status(401).json({ msg: 'Invalid Otp please try again' });
    }
    // console.log(new Date())
    // console.log(ver.expireAt)
    if(Date.now() >= ver.expireAt.getTime()){
      return res.status(410).json({ msg: 'Otp expired try again' });
    }
    const updateData = await VerModel.findOneAndUpdate({phone: verificationData.phone}, { isverified: true },  {
      new: true,
      runValidators: true,
    });

    const token2 = jwt.sign({phone: ver.phone}, process.env.JWT_SECRET, {
      expiresIn: '30d'
    })
    console.log(updateData)
    res.status(200).json({msg: 'Otp verified successfully', token: token2 });
  } catch (error) {
    res.status(500).send({msg: "Please enter phone number again"});
  }
}

export const register = async (req, res) => {
  try {
    const { name, username, password } = req.body;
    if(!name || !username || !password){
      return res.status(400).json({ msg: "Please enter all credentials required" })
    }
    const token = req.headers.authorization.split(" ")[1];
    const verificationData = jwt.verify(token, process.env.JWT_SECRET);
    if (!token || !verificationData) {
      return res.status(401).json({ msg: 'Token not valid Try to Register again' });
    }
    const phone = verificationData.phone;
    const checkIfPhoneNumExist = await VerModel.findOne({phone});
    if(!checkIfPhoneNumExist || !checkIfPhoneNumExist.isverified){
      return res.status(401).json({ msg: 'Phone number not verified please try again' });
    }
    const isPhoneExist = await User.findOne({phone});
    if(isPhoneExist) {
      return res.status(401).json({ msg: 'Phone number already exist please try with different phone number' });
    }
    const isUserNameExist = await User.findOne({username});
    if(isUserNameExist) {
      return res.status(401).json({ msg: 'UserName already exist please try with different UserName' });
    }
    const saveData = await User.create({name, username, password, phone});

    res.status(201).json({msg: "User registered successfully"});

  } catch (error) {
    console.log(error);
    res.status(500).send({error: error.message});
  }
}


export const login = async (req, res) => { 
  try {
    const { username, password } = req.body;
    if(!username || !password){
      return res.status(400).json({ msg: "Please enter all credentials required" })
    }
    const userData = await User.findOne({username});
    if(!userData){
      return res.status(400).json({ msg: "Credentials invalid" })
    }
    if(password !== userData.password){
      return res.status(400).json({ msg: "Credentials invalid" })
    }
    
    const token = jwt.sign({username: userData.username, phone: userData.phone}, process.env.JWT_SECRET, {
      expiresIn: '30d'
    });

    res.status(200).json({msg: "Login Successful", token})
  } catch (error) {
    console.log(error);
    res.status(500).send({error: error.message});
  }
}
