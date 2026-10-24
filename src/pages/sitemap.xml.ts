// sitemap.xml for search engines: every page, plus the game and the Hustlepedia (static files in /public)
import type { APIRoute } from 'astro';

const posts = Object.values(import.meta.glob('./posts/*.md', { eager: true })) as any[];

export const GET: APIRoute = ({ site }) => {
  const day = (d: string | Date) => new Date(d).toISOString().slice(0, 10);
  const pages: { path: string; lastmod?: string }[] = [
    { path: '/' }, { path: '/blog/' }, { path: '/portfolio/' }, { path: '/contact/' }, { path: '/privacy/' },
    { path: '/game.html' }, { path: '/game3d/' }, { path: '/hustlepedia.html' },
    ...posts.map(p => ({ path: `${p.url}/`, lastmod: p.frontmatter.date ? day(p.frontmatter.date) : undefined })),
  ];
  const body = `<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
${pages.map(p => `  <url><loc>${new URL(p.path, site)}</loc>${p.lastmod ? `<lastmod>${p.lastmod}</lastmod>` : ''}</url>`).join('\n')}
</urlset>
`;
  return new Response(body, { headers: { 'Content-Type': 'application/xml' } });
};
