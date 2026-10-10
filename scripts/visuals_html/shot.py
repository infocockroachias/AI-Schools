#!/usr/bin/env python3
"""Batch-screenshot PRATIMAI HTML visuals to PNG (device_scale_factor=2).
Usage: python3 shot.py [name1.html name2.html ...]   (default: all *.html)
Follows charts-skill playwright guidance: auto-fit viewport from #root bbox."""
import asyncio, os, sys, pathlib

HERE = pathlib.Path(__file__).parent
OUT = HERE  # PNGs land next to their HTML sources

async def shot(page, html_path, png_path):
    await page.goto(f"file://{html_path}", wait_until="networkidle")
    await page.wait_for_timeout(600)  # fonts + connector JS
    sel = "#root" if (await page.locator("#root").count()) else "#mindmap"
    el = page.locator(sel)
    bbox = await el.bounding_box()
    if bbox:
        w = max(1200, int(bbox["width"] + 60))
        h = int(bbox["height"] + 60)
        await page.set_viewport_size({"width": w, "height": h})
        await page.wait_for_timeout(300)
        # redraw connectors after resize if the page supports it
        try:
            await page.evaluate("typeof drawAllLines === 'function' && drawAllLines()")
            await page.wait_for_timeout(200)
        except Exception:
            pass
    await el.screenshot(path=str(png_path))
    kb = os.path.getsize(png_path) / 1024
    print(f"  OK {png_path.name}  {kb:.0f} KB")

async def main():
    names = sys.argv[1:] or sorted(p.name for p in HERE.glob("*.html"))
    from playwright.async_api import async_playwright
    async with async_playwright() as p:
        browser = await p.chromium.launch(headless=True)
        page = await browser.new_page(
            viewport={"width": 1400, "height": 900}, device_scale_factor=2)
        for n in names:
            html = HERE / n
            png = OUT / (html.stem + ".png")
            if not html.exists():
                print(f"  SKIP {n} (missing)"); continue
            try:
                await shot(page, html, png)
            except Exception as e:
                print(f"  FAIL {n}: {e}")
        await browser.close()

if __name__ == "__main__":
    asyncio.run(main())
