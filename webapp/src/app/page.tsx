import fs from "fs";
import path from "path";
import { FileLibrary, HeroStats } from "@/components/file-library";
import { LIBRARY } from "@/lib/library";
import { BookMarked, Download, ShieldCheck } from "lucide-react";

export default function Home() {
  const dir = path.join(process.cwd(), "public", "files");
  const sizes: Record<string, number> = {};
  for (const f of LIBRARY) {
    try {
      sizes[f.file] = fs.statSync(path.join(dir, f.file)).size;
    } catch {
      sizes[f.file] = 0;
    }
  }

  return (
    <div className="flex min-h-screen flex-col bg-[#FDFBF7]">
      {/* Header */}
      <header className="border-b border-teal-900/10 bg-[#0A3A47] text-white">
        <div className="mx-auto flex w-full max-w-6xl flex-col gap-6 px-4 py-10 sm:px-6 sm:py-12">
          <div className="flex items-center gap-3">
            <div className="flex gap-1" aria-hidden>
              <span className="h-3 w-3 bg-amber-500" />
              <span className="h-3 w-3 bg-teal-400" />
              <span className="h-3 w-1.5 bg-amber-500" />
            </div>
            <span className="text-sm font-bold tracking-[0.18em] text-teal-100">
              PRATIMAI · AI UNDERSTANDING FOR EVERY CLASSROOM
            </span>
          </div>
          <div className="flex flex-col gap-3">
            <h1 className="text-3xl font-extrabold tracking-tight sm:text-4xl">
              AI Handouts Library
            </h1>
            <p className="max-w-2xl text-sm leading-relaxed text-teal-100 sm:text-base">
              Two complete student handouts — <strong className="text-white">Class 6 · AI Around
              Me</strong> (Level 1 · NOTICE) and <strong className="text-white">Class 7 · How
              Machines Learn</strong> (Level 2 · SORT &amp; PREDICT) — plus their editable Typst
              sources and the full curriculum spec. Preview every book online and save any file
              locally with one click.
            </p>
          </div>
          <HeroStats />
        </div>
      </header>

      {/* Main */}
      <main className="mx-auto w-full max-w-6xl flex-1 px-4 py-10 sm:px-6">
        <FileLibrary sizes={sizes} />

        {/* How to use */}
        <section aria-labelledby="howto-heading" className="mt-12">
          <div className="mb-4 flex items-center gap-2">
            <BookMarked className="h-5 w-5 text-teal-700" aria-hidden />
            <h2 id="howto-heading" className="text-lg font-bold tracking-tight text-slate-900">
              How to use these files
            </h2>
          </div>
          <div className="grid gap-4 md:grid-cols-3">
            <div className="rounded-xl border bg-white p-5 shadow-sm">
              <div className="mb-2 text-xs font-bold tracking-[0.14em] text-teal-800">STEP 1</div>
              <p className="text-sm leading-relaxed text-slate-600">
                <strong className="text-slate-900">Download the PDF</strong> for your class and
                print it double-sided, A4. Nothing in either book needs a screen — every mission
                works with paper, pencils and classmates.
              </p>
            </div>
            <div className="rounded-xl border bg-white p-5 shadow-sm">
              <div className="mb-2 text-xs font-bold tracking-[0.14em] text-amber-700">STEP 2</div>
              <p className="text-sm leading-relaxed text-slate-600">
                <strong className="text-slate-900">Adapt freely</strong> — the Typst source zips
                contain the full design system and content modules. Edit any module, then rebuild
                with{" "}
                <code className="rounded bg-slate-100 px-1.5 py-0.5 text-xs">
                  typst compile --font-path fonts main.typ main.pdf
                </code>
                .
              </p>
            </div>
            <div className="rounded-xl border bg-white p-5 shadow-sm">
              <div className="mb-2 flex items-center gap-1.5 text-xs font-bold tracking-[0.14em] text-teal-800">
                <ShieldCheck className="h-3.5 w-3.5" aria-hidden /> SAFE BY DESIGN
              </div>
              <p className="text-sm leading-relaxed text-slate-600">
                Both handouts are <strong className="text-slate-900">fully unplugged</strong>: no
                task needs a device, an account, a photo or personal data. Answer hints live only
                at the very back — never beside a task.
              </p>
            </div>
          </div>
        </section>

        {/* Download-all strip */}
        <section className="mt-10 rounded-xl border border-teal-800/20 bg-[#0F4C5C] p-6 text-white shadow-sm sm:p-8">
          <div className="flex flex-col items-start justify-between gap-4 sm:flex-row sm:items-center">
            <div>
              <h2 className="text-lg font-bold">Grab everything at once</h2>
              <p className="mt-1 text-sm text-teal-100">
                Each link saves the original file straight to your device — no sign-in, no tracking.
              </p>
            </div>
            <div className="flex flex-wrap gap-2">
              {LIBRARY.map((f) => (
                <a
                  key={f.id}
                  href={`/files/${f.file}`}
                  download
                  className="inline-flex min-h-11 items-center gap-2 rounded-lg bg-white/10 px-4 py-2 text-sm font-semibold ring-1 ring-white/20 transition-colors hover:bg-white/20"
                >
                  <Download className="h-4 w-4" aria-hidden />
                  <span className="max-w-52 truncate">{f.file}</span>
                </a>
              ))}
            </div>
          </div>
        </section>
      </main>

      {/* Footer (sticks to bottom via mt-auto on parent flex) */}
      <footer className="mt-auto border-t border-teal-900/10 bg-[#0A3A47] pb-[env(safe-area-inset-bottom)] text-teal-100">
        <div className="mx-auto flex w-full max-w-6xl flex-col gap-1 px-4 py-6 text-xs sm:flex-row sm:items-center sm:justify-between sm:px-6">
          <span className="font-semibold tracking-wide">
            PRATIMAI · AI Handouts — Class 6 “AI Around Me” · Class 7 “How Machines Learn”
          </span>
          <span className="text-teal-300">
            Formative-only assessment · No solutions beside tasks · Built with Typst
          </span>
        </div>
      </footer>
    </div>
  );
}
