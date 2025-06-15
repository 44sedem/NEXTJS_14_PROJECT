"use client";
import React, { useContext, useState } from "react";
import { zodResolver } from "@hookform/resolvers/zod";
import { useForm } from "react-hook-form";
import { z } from "zod";
import { useRouter } from "next/navigation";
import { Mail, Lock, Eye, EyeOff } from 'lucide-react';
import axios from "axios";
import Link from "next/link";
import { AuthInfo } from "@/utils/student_api";
import { Alert, AlertDescription } from '@/components/ui/alert';

const schema = z.object({
  email: z.string().email("Invalid email address"),
  password: z.string().min(1, "Password is required"),
});

type FormData = z.infer<typeof schema>;

const SignInForm = () => {
  const router = useRouter();
  const [showPassword, setShowPassword] = useState(false);
  const { studentInfoStored, setStudentInfoStored } = useContext(AuthInfo);
  const [authError, setAuthError] = useState("");

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<FormData>({ resolver: zodResolver(schema) });

  const onSubmit = async (data: FormData) => {
    const endpoint = `http://localhost:8002/course_service/auth_user?id=${data.email}&password=${data.password}`;
    try {
      const response = await axios.get(endpoint);
      if (response.data.status === "success") {
        setStudentInfoStored({ id: response.data.user_type, type: response.data.user_id });
        window.location.href = `${response.data.user_type}/${response.data.user_id}`;
      } else {
        setAuthError("Login failed. Please check your credentials and try again.");
      }
    } catch (error) {
      console.error(`Error! ${error}`);
      setAuthError("An error occurred. Please try again later.");
    }
  };

  return (
    <div className="flex justify-center items-center min-h-screen bg-blue-300">
      <div className="bg-white p-8 rounded-lg shadow-md w-full max-w-md">
        <h1 className="text-xl font-bold text-center text-blue-600 mb-2">University of Ghana</h1>
        <h2 className="text-2xl font-black text-black mb-2 text-center  ">Log In</h2>
        <p className="text-center text-gray-700 font-medium mb-6">Login into page</p>
        {authError && (
          <Alert variant="destructive" className="mb-4 font-semibold">
            <AlertDescription>{authError}</AlertDescription>
          </Alert>
        )}
        <form onSubmit={handleSubmit(onSubmit)} className="space-y-4 font-medium">
          <div className="relative">
            <Mail className="absolute left-3 top-3 text-gray-400" size={20} />
            <input
              {...register("email")}
              type="email"
              placeholder="Isaacsedem@gmail.com"
              className="w-full pl-10 pr-3 py-2 border rounded-md font-semibold text-gray-900"
            />
          </div>
          {errors.email && <p className="text-red-500 text-sm font-semibold">{errors.email.message}</p>}

          <div className="relative">
            <Lock className="absolute left-3 top-3 text-gray-400" size={20} />
            <input
              {...register("password")}
              type={showPassword ? "text" : "password"}
              placeholder="********"
              className="w-full pl-10 pr-10 py-2 border rounded-md font-semibold text-gray-900"
            />
            <button
              type="button"
              onClick={() => setShowPassword(!showPassword)}
              className="absolute right-3 top-2.5 text-gray-400"
            >
              {!showPassword ? <Eye size={20} /> : <EyeOff size={20} />}
            </button>
          </div>
          {errors.password && <p className="text-red-500 text-sm font-semibold">{errors.password.message}</p>}

          <button
            type="submit"
            className="w-full bg-blue-500 text-white font-bold py-3 rounded-md hover:bg-pink-400 transition duration-300"
          >
            Log In
          </button>
        </form>
        <p className="text-xs text-center text-gray-600 font-semibold mt-4">
          Don&apos;t have an account?{" "}
          <Link href="/signup" className="text-blue-600 font-bold">Sign Up</Link>
        </p>
      </div>
    </div>
  );
};

export default SignInForm;
