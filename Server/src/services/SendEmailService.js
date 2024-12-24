const nodemailer = require("nodemailer");

const transporter = nodemailer.createTransport({
  service: "gmail", // Use the email service you are using
  auth: {
    user: "khanhtranhuynh9@gmail.com", // Your email address
    pass: "ggss rkco vtoo mxnr", // Your email password or app password if you have 2FA enabled
  },
});

let sendEmail = async (data) => {
  return new Promise(async (resolve, reject) => {
    try {
      const number = Math.floor(100000 + Math.random() * 900000);
      const mailOptions = {
        from: "khanhtranhuynh9@gmail.com", // Sender address
        to: data.email, // List of receivers
        subject: "Shop Ban Dien Thoai", // Subject line
        html: `<b>Ma Xac Nhan Cua Ban La: ${number}</b>`, // HTML body
      };
      transporter.sendMail(mailOptions, (error, info) => {
        if (error) {
          resolve("Error occurred: " + error.message);
        }
        resolve({ message: "OK", datatest: number });
      });
    } catch (e) {
      reject(e);
    }
  });
};

module.exports = {
  sendEmail,
};
