import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  images: {
   remotePatterns:[
    {
      protocol: 'https',
      port: "",
      pathname: '/**',
      hostname: 'img.clerk.com',
    },
   ],
  },
  typescript: {
    ignoreBuildErrors: true,
  },
  eslint: {
    ignoreDuringBuilds: true,
  },
};

export default nextConfig;
