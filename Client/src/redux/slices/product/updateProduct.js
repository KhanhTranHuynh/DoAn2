import { createAsyncThunk } from "@reduxjs/toolkit";
import axios from "axios";

export const updateProduct = createAsyncThunk(
  "categorys/updateProduct",
  async (obj) => {
    const response = await axios.put(
      "http://localhost:8000/api/ProductRouter/updateObj",
      obj
    );
    return response;
  }
);
