"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class User extends Model {
    static associate(models) {}
  }
  User.init(
    {
      User_Name: DataTypes.STRING,
      User_Email: DataTypes.STRING,
      User_Password: DataTypes.STRING,
      User_Role: DataTypes.STRING,
    },
    {
      sequelize,
      modelName: "User",
    }
  );
  return User;
};
