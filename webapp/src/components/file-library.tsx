"use client";

import { useState } from "react";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { LIBRARY, type LibraryFile } from "@/lib/library";
import {
  BookOpen,
  Download,
  Eye,
  FileCode2,
  FileText,
  FileArchive,
  GraduationCap,
  Printer,
  ShieldCheck,
  Sparkles,
} from "lucide-react";

const ACCENT = {
  teal: {
    chip: "bg-teal-700 text-white",
    ring: "hover:border-teal-600/60",
    bar: "bg-teal-700",
    soft: "bg-teal-50 text-teal-800 border-teal-200",
    label: "text-teal-800",
  },
  amber: {
    chip: "bg-amber-600 text-white",
    ring: "hover:border-amber-500/60",
    bar: "bg-amber-600",
    soft: "bg-amber-50 text-amber-800 border-amber-200",
    label: "text-amber-800",
  },
} as const;

function kindIcon(kind: LibraryFile["kind"], cls: string) {
  if (kind === "pdf") return <FileText className={cls} />;
  if (kind === "zip") return <FileArchive className={cls} />;
  return <FileCode2 className={cls} />;
}

function formatSize(bytes: number) {
  if (bytes >= 1024 * 1024) return `${(bytes / (1024 * 1024)).toFixed(1)} MB`;
  return `${Math.max(1, Math.round(bytes / 1024))} KB`;
}

function FileCard({ file, size }: { file: LibraryFile; size: number }) {
  const a = ACCENT[file.accent];
  const [open, setOpen] = useState(false);
  return (
    <article
      className={`group flex h-full flex-col rounded-xl border bg-white shadow-sm transition-all hover:shadow-md ${a.ring}`}
      aria-label={file.title}
    >
      <div className={`h-1.5 w-full rounded-t-xl ${a.bar}`} />
      <div className="flex flex-1 flex-col gap-3 p-6">
        <div className="flex items-start justify-between gap-3">
          <div className={`rounded-lg p-2.5 ${a.chip}`}>{kindIcon(file.kind, "h-6 w-6")}</div>
          <Badge variant="outline" className={`shrink-0 border ${a.soft}`}>
            {formatSize(size)}
          </Badge>
        </div>

        <div>
          <h3 className="text-xl font-bold leading-tight text-slate-900">{file.title}</h3>
          <p className={`mt-0.5 text-sm font-semibold ${a.label}`}>{file.subtitle}</p>
        </div>

        <p className="text-sm leading-relaxed text-slate-600">{file.description}</p>

        <ul className="mt-auto flex flex-wrap gap-1.5 pt-1">
          {file.meta.map((m) => (
            <li
              key={m}
              className="rounded-md bg-slate-100 px-2 py-0.5 text-xs font-medium text-slate-600"
            >
              {m}
            </li>
          ))}
        </ul>

        <div className="flex flex-wrap gap-2 pt-2">
          {file.kind === "pdf" && (
            <Dialog open={open} onOpenChange={setOpen}>
              <DialogTrigger asChild>
                <Button variant="outline" className="min-h-11 flex-1">
                  <Eye className="mr-2 h-4 w-4" aria-hidden />
                  View online
                </Button>
              </DialogTrigger>
              <DialogContent className="flex h-[92vh] max-w-5xl flex-col p-0 sm:h-[90vh]">
                <DialogHeader className="border-b px-6 py-4">
                  <DialogTitle className="text-left">
                    {file.title} — {file.subtitle}
                  </DialogTitle>
                  <DialogDescription className="text-left">
                    Preview below, or open it in a new tab for full-screen reading.
                  </DialogDescription>
                </DialogHeader>
                <div className="min-h-0 flex-1 bg-slate-100">
                  <iframe
                    title={`${file.title} preview`}
                    src={`/files/${file.file}#view=FitH`}
                    className="h-full w-full"
                    aria-label={`${file.title} PDF preview`}
                  />
                </div>
                <div className="flex items-center justify-end gap-2 border-t px-6 py-3">
                  <Button variant="ghost" asChild>
                    <a
                      href={`/files/${file.file}`}
                      target="_blank"
                      rel="noreferrer"
                      className="min-h-11"
                    >
                      <BookOpen className="mr-2 h-4 w-4" aria-hidden />
                      Open in new tab
                    </a>
                  </Button>
                  <Button asChild>
                    <a href={`/files/${file.file}`} download className="min-h-11">
                      <Download className="mr-2 h-4 w-4" aria-hidden />
                      Save PDF locally
                    </a>
                  </Button>
                </div>
              </DialogContent>
            </Dialog>
          )}
          <Button asChild className={`min-h-11 flex-1 ${a.chip} hover:opacity-90`}>
            <a href={`/files/${file.file}`} download>
              <Download className="mr-2 h-4 w-4" aria-hidden />
              Download
            </a>
          </Button>
        </div>
      </div>
    </article>
  );
}

export function FileLibrary({ sizes }: { sizes: Record<string, number> }) {
  const pdfs = LIBRARY.filter((f) => f.kind === "pdf");
  const rest = LIBRARY.filter((f) => f.kind !== "pdf");
  return (
    <div className="flex flex-col gap-10">
      <section aria-labelledby="handouts-heading">
        <div className="mb-4 flex items-center gap-2">
          <GraduationCap className="h-5 w-5 text-teal-700" aria-hidden />
          <h2 id="handouts-heading" className="text-lg font-bold tracking-tight text-slate-900">
            Student handouts — view & download
          </h2>
        </div>
        <div className="grid gap-6 md:grid-cols-2">
          {pdfs.map((f) => (
            <FileCard key={f.id} file={f} size={sizes[f.file] ?? 0} />
          ))}
        </div>
      </section>

      <section aria-labelledby="extras-heading">
        <div className="mb-4 flex items-center gap-2">
          <Sparkles className="h-5 w-5 text-amber-600" aria-hidden />
          <h2 id="extras-heading" className="text-lg font-bold tracking-tight text-slate-900">
            Sources & reference
          </h2>
        </div>
        <div className="grid gap-6 md:grid-cols-2 xl:grid-cols-3">
          {rest.map((f) => (
            <FileCard key={f.id} file={f} size={sizes[f.file] ?? 0} />
          ))}
        </div>
      </section>
    </div>
  );
}

export function HeroStats() {
  const stats = [
    { icon: Printer, label: "Print-ready A4 PDFs", value: "2 handouts" },
    { icon: ShieldCheck, label: "100% unplugged missions", value: "37 tasks" },
    { icon: FileCode2, label: "Editable Typst sources", value: "2 projects" },
  ];
  return (
    <div className="grid gap-3 sm:grid-cols-3">
      {stats.map((s) => (
        <div
          key={s.label}
          className="flex items-center gap-3 rounded-xl border bg-white/70 p-4 shadow-sm"
        >
          <div className="rounded-lg bg-teal-700 p-2 text-white">
            <s.icon className="h-5 w-5" aria-hidden />
          </div>
          <div>
            <div className="text-lg font-bold leading-none text-slate-900">{s.value}</div>
            <div className="text-xs font-medium text-slate-500">{s.label}</div>
          </div>
        </div>
      ))}
    </div>
  );
}
