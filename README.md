<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<title>Credit Card Payment Defaulters | Amit Kanojia</title>
<style>
:root{--bg:#F3F4F6;--card:#fff;--ink:#14213D;--mute:#56627A;--line:#D9DEE7;--acc:#F2C811;--navy:#0f2027;--navy2:#2c5364;
box-sizing:border-box;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}
@media(prefers-color-scheme:dark){:root:not([data-theme="light"]){--bg:#10151c;--card:#1a222d;--ink:#eef2f7;--mute:#a5b0c0;--line:#2b3644}}
:root[data-theme="dark"]{--bg:#10151c;--card:#1a222d;--ink:#eef2f7;--mute:#a5b0c0;--line:#2b3644}
*{box-sizing:border-box}html{scroll-behavior:smooth;scroll-padding-top:70px}
body{margin:0;background:var(--bg);color:var(--ink);font:16px/1.65 system-ui,-apple-system,"Segoe UI",Roboto,sans-serif}
a{color:inherit}
nav{position:sticky;top:env(safe-area-inset-top,0px);z-index:5;background:var(--navy);display:flex;gap:6px;align-items:center;padding:10px 18px;overflow-x:auto}
nav b{color:var(--acc);margin-right:auto;white-space:nowrap}
nav a{color:#dbe5ee;text-decoration:none;padding:6px 12px;border-radius:8px;font-size:14px;white-space:nowrap}
nav a:hover{background:#ffffff1a}
nav button{background:none;border:1px solid #ffffff44;color:#fff;border-radius:8px;padding:5px 10px;cursor:pointer}
.hero{background:linear-gradient(135deg,var(--navy),var(--navy2));color:#fff;padding:64px 20px 56px;text-align:center}
.hero h1{margin:0 0 12px;font-size:clamp(30px,6vw,52px);line-height:1.1}
.hero p{max-width:680px;margin:0 auto 24px;color:#cfdbe6;font-size:18px}
.tags{display:flex;gap:8px;justify-content:center;flex-wrap:wrap;margin-bottom:26px}
.tags span{background:#ffffff1a;border:1px solid #ffffff33;border-radius:99px;padding:4px 14px;font-size:14px}
.btn{display:inline-block;background:var(--acc);color:#14213D;font-weight:700;text-decoration:none;padding:12px 24px;border-radius:10px;margin:4px}
.btn.o{background:none;color:#fff;border:2px solid #ffffff66}
main{max-width:1040px;margin:0 auto;padding:0 20px}
section{padding:48px 0 8px}
h2{font-size:28px;margin:0 0 6px}h2+p.sub{color:var(--mute);margin:0 0 22px}
.shot{margin-top:-34px;background:var(--card);border:1px solid var(--line);border-radius:14px;padding:8px;box-shadow:0 14px 40px #0003}
.shot img{width:100%;display:block;border-radius:8px}
.grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:16px}
.card{background:var(--card);border:1px solid var(--line);border-radius:14px;padding:20px}
.card h3{margin:0 0 6px;font-size:17px}.card p{margin:0;color:var(--mute);font-size:15px}
.ic{font-size:26px}
.steps{counter-reset:s;display:grid;gap:14px}
.step{background:var(--card);border:1px solid var(--line);border-left:5px solid var(--acc);border-radius:12px;padding:16px 18px 16px 58px;position:relative}
.step:before{counter-increment:s;content:counter(s);position:absolute;left:16px;top:14px;width:30px;height:30px;border-radius:50%;background:var(--navy);color:var(--acc);display:grid;place-items:center;font-weight:700}
.step b{display:block}.step span{color:var(--mute);font-size:15px}
.chips{display:flex;flex-wrap:wrap;gap:8px}
.chips span{background:var(--card);border:1px solid var(--line);border-radius:8px;padding:5px 12px;font-family:ui-monospace,Menlo,Consolas,monospace;font-size:13px}
.note{color:var(--mute);font-size:14px;margin-top:14px}
.about{background:var(--navy);color:#fff;border-radius:16px;padding:32px;text-align:center;margin-top:48px}
.about p{max-width:640px;margin:0 auto 18px;color:#cfdbe6}
.about .btn{font-size:15px;padding:10px 20px}
footer{text-align:center;color:var(--mute);padding:32px 20px 40px;font-size:14px}
</style>
</head>
<body>
<nav>
<b>Amit Kanojia</b>
<a href="#overview">Overview</a><a href="#answers">Insights</a><a href="#build">How I built it</a><a href="#tools">Tools</a><a href="#contact">Contact</a>
<button id="t" type="button" aria-label="Toggle theme">Theme</button>
</nav>

<header class="hero">
<h1>Credit Card Payment Defaulters</h1>
<p>A Power BI dashboard that finds credit card payment defaulters by age and customer ID, so risky accounts can be spotted early.</p>
<div class="tags"><span>Power BI</span><span>SQL</span><span>Python</span><span>Matplotlib</span></div>
<a class="btn" href="https://app.powerbi.com/view?r=eyJrIjoiYmEyMDhiNmUtODE0OS00MThiLTkwOTEtNDgwYTlhMTljODIzIiwidCI6ImQxNTgwNDdmLThkOGMtNGY1NS1iYjcxLTVhMjk0NDAyYzdkMCJ9" target="_blank" rel="noopener">Open live dashboard</a>
<a class="btn o" href="https://github.com/amu5236/Credit-Card-Payment-Defaulters" target="_blank" rel="noopener">View on GitHub</a>
</header>

<main>
<div class="shot"><img src="dashboard.png" alt="Credit card payment defaulters Power BI dashboard with city donut chart, late payment scatter plot and filters"></div>

<section id="overview">
<h2>Project overview</h2>
<p class="sub">What the dashboard does</p>
<p>The dashboard tracks <b>late payments</b> and the <b>debt to income ratio</b>, shows the customer split <b>city wise</b>, and lets you filter by <b>customer ID, age and credit history years</b>. It helps a credit team see which customers may miss their next payment.</p>
</section>

<section id="answers">
<h2>Questions it answers</h2>
<p class="sub">Where to look in the dashboard</p>
<div class="grid">
<div class="card"><div class="ic">⏱️</div><h3>How many late payments?</h3><p>Late payments KPI card shows the total at a glance.</p></div>
<div class="card"><div class="ic">⚖️</div><h3>How stretched are customers?</h3><p>Debt to income ratio KPI card shows overall pressure.</p></div>
<div class="card"><div class="ic">🌆</div><h3>Which cities are at risk?</h3><p>The city wise donut chart shows where customers are concentrated.</p></div>
<div class="card"><div class="ic">🎂</div><h3>How does age matter?</h3><p>Late payments by age help find age groups that pay late more often.</p></div>
<div class="card"><div class="ic">🔎</div><h3>Who to watch closely?</h3><p>Customer ID, age and credit history filters isolate individual customers.</p></div>
</div>
</section>

<section id="build">
<h2>How I built it</h2>
<p class="sub">From raw data to defaulter insights</p>
<div class="steps">
<div class="step"><b>Clean and upload with SQL</b><span>Used SQL to clean the customer data and load it into Power BI.</span></div>
<div class="step"><b>Model the data</b><span>Set up the Power BI data model with measures for late payments and the debt to income ratio.</span></div>
<div class="step"><b>Visualise</b><span>Built KPI cards, a city wise donut chart and filters in Power BI, and used Python with the Matplotlib library for visualization.</span></div>
<div class="step"><b>Find defaulters</b><span>Used the age, customer ID and credit history filters to identify customers more likely to miss payments.</span></div>
</div>
</section>

<section id="tools">
<h2>Tools and data fields</h2>
<p class="sub">What I used</p>
<div class="chips"><span>Power BI</span><span>SQL</span><span>Python</span><span>Matplotlib</span></div>
<p class="note">Data fields: Customer_ID, Age, City, Annual_Income_INR, Credit_History_Years, Credit_Limit_INR, Credit_Score, Credit_Utilization_Pct, Debt_to_Income_Ratio, Late_Payments_12M, Num_Credit_Cards</p>
</section>

<div class="about" id="contact">
<h2>Amit Kanojia</h2>
<p>Data Analyst from Mumbai, India with about 1 year of experience building MIS reports and Power BI dashboards. I use SQL, Power BI (DAX), Excel and Python to turn operations data into clear reports.</p>
<a class="btn" href="mailto:Co1905630354@gmail.com">Email me</a>
<a class="btn" href="https://linkedin.com/in/amit-kanojia-5263ba2a0" target="_blank" rel="noopener">LinkedIn</a>
<a class="btn" href="https://amu5236.github.io" target="_blank" rel="noopener">More projects</a>
</div>
</main>
<footer>© Amit Kanojia · Co1905630354@gmail.com</footer>
<script>
const r=document.documentElement;
document.getElementById("t").onclick=()=>{const d=getComputedStyle(r).getPropertyValue("--bg").trim()==="#10151c";r.setAttribute("data-theme",d?"light":"dark")};
</script>
</body>
</html>
