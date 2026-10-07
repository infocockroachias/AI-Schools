import type { Metadata } from "next";
import "./globals.css";
import { Toaster } from "@/components/ui/toaster";

export const metadata: Metadata = {
  title: "PRATIMAI · AI Handouts Library — Classes 6 & 7",
  description:
    "Print-ready, fully unplugged AI-understanding handouts for Classes 6 and 7 — view online and download the PDFs, Typst sources and the curriculum spec.",
  keywords: ["PRATIMAI", "AI literacy", "Class 6", "Class 7", "unplugged", "handouts", "download"],
  authors: [{ name: "PRATIMAI Curriculum Team" }],
  icons: {
    icon: "https://z-cdn.chatglm.cn/z-ai/static/logo.svg",
  },
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className="antialiased bg-background text-foreground">
        {children}
        <Toaster />
      </body>
    </html>
  );
}
