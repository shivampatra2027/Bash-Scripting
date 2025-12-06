import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import morgan from "morgan";
import userRoute from "./routes/userRoute.js";

dotenv.config();

const app = express();

// Middleware
app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

// Routes
app.use("/api/users", userRoute);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
});
