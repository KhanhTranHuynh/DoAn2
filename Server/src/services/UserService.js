const bcrypt = require("bcryptjs");
const db = require("../models/index");
const { ganneralAccessToken, ganneralRefreshToken } = require("./jwtService");
const pool = require("../config/commectDBWithQuery");
const { Op } = require("@sequelize/core");

var salt = bcrypt.genSaltSync(10);

let getDetail = async (data) => {
  return new Promise(async (resolve, reject) => {
    try {
      const user = await db.User.findOne({
        where: { id: data },
      });
      if (user) {
        resolve({
          status: "OK",
          message: "getDetail successful",
          data: user,
        });
      } else {
        resolve({
          status: "OK",
          message: "Empty",
        });
      }
    } catch (e) {
      reject(e);
    }
  });
};

module.exports = {
  getDetail,
};
