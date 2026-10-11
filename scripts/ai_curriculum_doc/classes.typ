// ============================================================
//  PRATIMAI · The AI Curriculum — class sections (data + builder)
//  All chapter data sourced from the five published handouts.
// ============================================================
#import "template.typ": *

#let classes = (
  // ------------------------------------------------ CLASS 6
  (
    num: "6", theme: "AI Around Me", level: "Level 1 — Notice", step: 1,
    role: "AI Detective",
    tagline: "My detective notebook for spotting smart machines",
    overview: "Class 6 opens the five-year journey by training attention — the quiet skill underneath all AI literacy. Students notice that “smart” machines are everywhere, and learn the detective's first secret: every clever machine is doing one of two things. It is either following exact steps somebody wrote, or it is learning patterns from examples. Twenty paper missions later, they have trained machines themselves, fed learners good and bad data, chased patterns through games, guarded their privacy online, and closed the year with a real investigation of the AI in their own neighbourhood. Nothing needs a screen; everything needs curiosity. By the end of the year, a child no longer says “the computer is so smart” — the child asks: what did it learn from, and who showed it that?",
    facts: (("5", "chapters"), ("20", "paper missions"), ("14", "words to keep"), ("0", "screens needed")),
    chapters: (
      (num: 1, title: "Machines That Seem Smart", missions: "T6-01 – T6-05",
        q: [When is a machine actually learning — and when is it only following steps?],
        outcomes: (
          [Separate rule-followers from learners through the Human Robot game and flashcard teaching],
          [Judge a fair humans-versus-machines contest and defend the verdict],
          [Use the book's three detective questions on machines they meet every day],
        ),
        words: ("algorithm", "automation", "artificial intelligence", "training examples", "predict"),
        core: [Every “smart” machine is either following exact written steps or learning patterns from examples — and telling the two apart is the first skill of AI literacy.],
        links: [Maths — patterns · English — exact instructions]),
      (num: 2, title: "Data: The Food of AI", missions: "T6-06 – T6-09",
        q: [What do machines learn from — and what happens when the food is bad?],
        outcomes: (
          [Hunt the four kinds of data hiding around the classroom],
          [Tidy observations into tables, and turn tables into bar charts],
          [Feed a learner bad examples and watch “garbage in, garbage out” happen],
        ),
        words: ("data", "pixel", "tally", "garbage in, garbage out", "bar chart"),
        core: [Machines learn from data the way children learn from teachers — poor data teaches poor lessons, and a learner is only as good as its food.],
        links: [Maths — tables & bar graphs · Science — observation]),
    ),
    chaptersB: (
      (num: 3, title: "Patterns & Decisions", missions: "T6-10 – T6-13",
        q: [How does a machine decide what to do next?],
        outcomes: (
          [Hunt number and letter patterns, then play Guess My Rule with a hidden rule-keeper],
          [Trace an if-then decision machine step by step],
          [Challenge answers whose confidence is higher than their accuracy],
        ),
        words: ("pattern", "prediction", "confidence", "if-then", "question tree"),
        core: [A prediction is a pattern turned into a decision — and every prediction carries a confidence that must be questioned, not trusted.],
        links: [Maths — number patterns · English — clear questions]),
      (num: 4, title: "Be a Smart Digital Citizen", missions: "T6-14 – T6-17",
        q: [How do I enjoy the online world — and stay safe, kind and honest?],
        outcomes: (
          [Sort personal information with the privacy traffic light],
          [Cook unguessable passphrases and run the three-check real-or-fake detector],
          [Follow one drawing's digital footprint across the internet],
        ),
        words: ("privacy", "personal information", "passphrase", "verify", "digital footprint"),
        core: [The online world runs on the same honesty and care as the offline one — what you share, whom you trust and what you forward are your choices.],
        links: [Social Science — community life · English — checking facts]),
      (num: 5, title: "My Neighbourhood AI Investigation", missions: "T6-18 – T6-20", capstone: true,
        q: [What can I discover about AI near me — using my own data?],
        outcomes: (
          [Plan and run a real survey of five grown-ups about the machines around them],
          [Organise and chart the collected data, then design a helper machine of their own],
          [Close the year's big case by answering page one's question — with evidence],
        ),
        words: ("survey", "tally", "bar chart", "limit", "evidence"),
        core: [Evidence beats impression: a careful survey of their own neighbourhood shows children that AI knowledge begins with their own questions.],
        links: [Social Science — community survey · Maths — data & charts]),
    ),
    exit: (
      [Tell rule-followers from learners, and explain what data taught a machine],
      [Read and draw charts, question a confident claim, and guard personal information],
      [Run a small survey and defend a conclusion with evidence],
    ),
    award: "1 badge earned · Level 1 — Notice complete",
    footprint: (("Maths", 4), ("English", 3), ("Social Science", 2), ("Science", 1)),
    spotlight: ("T6-01", "Human Robot", [One student becomes the Robot, the other the Engineer. The Robot must follow the written steps *literally* — and the funniest failure lands the lesson no lecture could: a machine never guesses what you *meant*, only what you *said*.]),
  ),
  // ------------------------------------------------ CLASS 7
  (
    num: "7", theme: "How Machines Learn", level: "Level 2 — Sort & Predict", step: 2,
    role: "AI Investigator",
    tagline: "My case file for training machines — and catching their mistakes",
    overview: "In Class 7 the investigator takes over the machine. Last year students spotted learning machines; this year they operate one. They run all three learning jobs with their own hands — classification, regression and clustering — and sit the same hidden exam a machine sits, so that “practice versus exam” stops being a metaphor. They meet the machines that see, read and recommend, tour five sectors where AI already works across India, and then study how these systems fail: biased data, faked content, and the question of who answers when something goes wrong. The capstone turns the class itself into a prediction machine — built from a real survey, checked for bias, and graded against another section's test set.",
    facts: (("5", "chapters"), ("17", "paper missions"), ("14", "words to keep"), ("0", "screens needed")),
    chapters: (
      (num: 1, title: "The Learning Machine", missions: "T7-01 – T7-05",
        q: [How can a machine learn without being told the rules?],
        outcomes: (
          [Run classification, regression and clustering by hand with real objects and numbers],
          [Sit the same hidden exam a machine sits — training set versus test set],
          [Explain in one sentence why a machine needs examples instead of rules],
        ),
        words: ("classification", "regression", "clustering", "training set", "test set"),
        core: [A machine can be taught by examples instead of rules — but it must then be examined on examples it has never seen.],
        links: [Maths — graphs & averages · English — precise definitions]),
      (num: 2, title: "Machines That See, Read and Recommend", missions: "T7-06 – T7-09",
        q: [What does a machine actually see when it looks at a picture, a message or you?],
        outcomes: (
          [Be the vision machine: turn pixels into features and predict what they show],
          [Be the reading machine: count words and frequencies — and meet the idiom that defeats it],
          [Be the recommender: find people whose pattern of likes matches yours],
        ),
        words: ("feature", "frequency", "recommendation", "context", "idiom"),
        core: [A machine sees numbers, not meaning; counting is powerful, but understanding context is still a human skill.],
        links: [Maths — tally & frequency · Languages — idioms and meaning]),
    ),
    chaptersB: (
      (num: 3, title: "AI at Work in India", missions: "T7-10 – T7-12",
        q: [Where is AI already working — and how do I read its report card?],
        outcomes: (
          [Tour five sectors — healthcare, education, transport, agriculture, communication],
          [Write benefit-and-limit report cards for real AI helpers],
          [Draw bar, line and pie charts — and catch the charts that lie],
        ),
        words: ("structured data", "trend", "sample", "benefit", "limit"),
        core: [Every real AI system deserves two grades: what it does well and where it stops — professionals always read both.],
        links: [Maths — data handling & percentages · Social Science — community work]),
      (num: 4, title: "When AI Gets It Wrong", missions: "T7-13 – T7-15",
        q: [Who taught the machine — and who answers for its mistakes?],
        outcomes: (
          [Train a deliberately one-sided suggestion machine and watch bias walk in with the data],
          [Run three checks on faked or edited content, and hunt what is missing],
          [Debate who is responsible when a machine causes harm],
        ),
        words: ("bias", "misinformation", "verify", "fairness", "accountability"),
        core: [A machine is a mirror of its training: unfair data makes unfair machines, and people — not machines — answer for the harm.],
        links: [Social Science — fairness & rules · English — checking evidence]),
      (num: 5, title: "Class Survey Machine", missions: "T7-16 – T7-17", capstone: true,
        q: [Can our class build — and check — its own prediction machine?],
        outcomes: (
          [Collect structured data with a real survey, chart it and read the pattern],
          [Predict a number from a trend, then check the sample for bias],
          [Grade the class machine against another section's test set],
        ),
        words: ("structured data", "sample", "trend", "prediction", "report card"),
        core: [An honest prediction machine checks itself: sample, bias and test set are not extra work — they are the work.],
        links: [Maths — data & trends · Social Science — surveys · English — reporting]),
    ),
    exit: (
      [Run classification, regression and clustering — and explain train-versus-test honestly],
      [Read any chart critically, and write a fair benefit-and-limit report card],
      [Trace an AI failure back to its data, and name who is responsible],
    ),
    award: "1 badge earned · Level 2 — Sort & Predict complete",
    footprint: (("Maths", 4), ("English", 3), ("Social Science", 3), ("Languages", 1)),
    spotlight: ("T7-13", "The Unfair Machine", [The class trains a deliberately one-sided suggestion machine — then watches unfairness walk in with the data. Bias stops being a vocabulary word and becomes something students caused, observed and can explain.]),
  ),
  // ------------------------------------------------ CLASS 8
  (
    num: "8", theme: "Build the AI Cycle", level: "Level 3 — Build the Cycle", step: 3,
    role: "AI Engineer",
    tagline: "My case file for planning, testing and improving an AI people can trust",
    overview: "Class 8 promotes the investigator to engineer — and engineers begin with plans, not machines. Students learn the loop every serious AI team runs: scope the problem, collect the right data, build and test, reflect and improve. They audit real tables for who is missing, repair unfair datasets, run a sampling game that ends with a surprise, hand-run the simplest classifier and grade its accuracy honestly, and put a text generator's fluency under the microscope to see why smooth talk can still invent facts. The capstone is a complete AI project proposal — problem, audited data plan, chosen tool, honest test, fairness check and known limits — pressure-tested by classmates in a live review gallery.",
    facts: (("5", "chapters"), ("17", "paper missions"), ("16", "words to keep"), ("0", "screens needed")),
    chapters: (
      (num: 1, title: "The AI Project Cycle", missions: "T8-01 – T8-03",
        q: [What does it take to build an AI that people can trust?],
        outcomes: (
          [Turn vague complaints into precise, buildable problem statements],
          [Sequence the cycle — scope, data, build, reflect — and plan a dataset first],
          [Walk a plant-health case where skipping a step costs the crop],
        ),
        words: ("machine learning", "AI project cycle", "problem statement", "dataset"),
        core: [Serious AI is built as a loop, not a leap: scope the problem, plan the data, build, then reflect and improve.],
        links: [Maths — percentages & data · English — precise definitions · Science — plant health case]),
      (num: 2, title: "Data & Fairness", missions: "T8-04 – T8-07",
        q: [If the data only knows some of us, who does the machine actually serve?],
        outcomes: (
          [Audit real tables — count who is over-represented and who is missing],
          [Run a sampling game that ends with a surprise, then repair an unfair dataset three ways],
          [Write the consent rules every honest data collector must follow],
        ),
        words: ("sampling", "consent", "fairness", "representation"),
        core: [A dataset is a promise about who the system will serve — engineers must check who the data includes before any model is built.],
        links: [Maths — percentages, sampling · Social Science — inclusion & community · English — persuasive asking]),
    ),
    chaptersB: (
      (num: 3, title: "How Models Learn & What No-Code Tools Do", missions: "T8-08 – T8-10",
        q: [How does a machine decide — and how do we measure whether it decides well?],
        outcomes: (
          [Hand-run a nearest-neighbour classifier that judges new cases by similar examples],
          [Grade it with a real accuracy percentage on a hidden test set],
          [Survey the no-code market — chatbots, image classifiers, predictors — with their limits],
        ),
        words: ("nearest neighbour", "accuracy", "no-code tool", "classifier"),
        core: [“The model works” means nothing until accuracy is measured on data the model has never seen — and even then, read the limits.],
        links: [Maths — distance on a grid, percentages · Science — leaf features · Social Science — honest advertising]),
      (num: 4, title: "Ethics & Responsible AI", missions: "T8-11 – T8-14",
        q: [Why does a machine that sounds so right sometimes get it so wrong — and who answers?],
        outcomes: (
          [Play the next-word prediction game and see why fluency invites invention],
          [Hunt hallucinations in a real-looking AI paragraph],
          [Take an AI scenario to court as judge, lawyer and witness — then write a personal AI-use pledge],
        ),
        words: ("text generator", "hallucination", "misinformation", "responsible use"),
        core: [A text generator predicts, it does not know; the very trick that makes it fluent is the trick that makes it invent.],
        links: [English — language patterns & argument · Social Science — privacy & public impact · Maths — likelihood]),
      (num: 5, title: "Capstone: The AI Project Proposal", missions: "T8-15 – T8-17", capstone: true,
        q: [Can you plan an AI that people can trust — and defend the plan to a live audience?],
        outcomes: (
          [Write a complete proposal: problem, audited data plan, chosen tool, honest test, fairness check],
          [Survive the peer-review gallery as classmates pressure-test every claim],
          [Sharpen real budget choices with a trade-off and optimisation round],
        ),
        words: ("peer review", "trade-off", "optimise", "stakeholder"),
        core: [A proposal that cannot survive friendly criticism is not ready for the world — review is not a hurdle, it is the design tool.],
        links: [All five strands by design · English — persuasive writing · Maths — budgeting & optimisation]),
    ),
    exit: (
      [Run the AI project cycle from sharp problem statement to fairness check],
      [Audit a dataset for representation and consent — and repair what is unfair],
      [Measure accuracy honestly, and name a tool's limits before praising it],
    ),
    award: "1 badge earned · Level 3 — Build the Cycle complete",
    footprint: (("Maths", 5), ("English", 4), ("Social Science", 3), ("Science", 2)),
    spotlight: ("T8-08", "Nearest Neighbour by Hand", [Students hand-run the simplest learning machine — a classifier that judges new cases by their most similar labelled examples — then grade it with a real accuracy score on a hidden test set, and face the limits it reveals.]),
  ),
  // ------------------------------------------------ CLASS 9
  (
    num: "9", theme: "The Logic Under the Magic", level: "Level 4 — Reason", step: 4,
    role: "AI Analyst",
    tagline: "My case file for the maths that makes machines learn — and the reasons they fail",
    overview: "Class 9 opens the engine room. The analyst replaces admiration with mechanism: averages and the spread they hide, probability rolled on the desk, a line of best fit drawn through real dots, nearest-neighbour distances used as evidence. Data literacy turns students into inspectors of the numbers that feed learning systems — auditing sources, catching the three classic ways graphs lie, and separating privacy from security. Generative AI is built, not browsed: a next-word table constructed by hand turns the mystery into a mechanism before the ethics floor debates deepfakes, copyright and access. The capstone lifts eyes to the world: one SDG-linked AI brief, defended before an ethics review panel.",
    facts: (("5", "chapters"), ("21", "paper missions"), ("20", "words to keep"), ("0", "screens needed")),
    chapters: (
      (num: 1, title: "Reflect, Scope, Plan", missions: "T9-01 – T9-04",
        q: [Why does AI work — and when does it fail?],
        outcomes: (
          [Separate rule-based systems from learning-based ones, and nest AI, ML and deep learning],
          [Rebuild the planning toolkit at analyst level: 4Ws canvas, stakeholders, system map],
          [Name every data feature a system needs before any mathematics begins],
        ),
        words: ("deep learning", "rule-based system", "learning-based system", "problem scoping", "system map"),
        core: [Before the mathematics comes the map: a system that is scoped clearly is already halfway to working honestly.],
        links: [Maths — data & coordinates · Social Science — stakeholders · English — precise definitions]),
      (num: 2, title: "Data Literacy", missions: "T9-05 – T9-09",
        q: [Can I trust this number — and can I trust the picture it comes in?],
        outcomes: (
          [Sort data by type and structure, then audit a source for quality and motive],
          [Catch the three classic ways graphs lie — truncated axes, cherry-picked windows, impossible pies],
          [Separate privacy from security, and build a personal data dashboard],
        ),
        words: ("qualitative data", "quantitative data", "unstructured data", "privacy", "security"),
        core: [A number is a claim, and a graph is an argument — analysts check both before they believe either.],
        links: [Maths — statistics & graphs · Social Science — sources & media · English — critical reading]),
    ),
    chaptersB: (
      (num: 3, title: "The Maths Behind AI (on paper)", missions: "T9-10 – T9-14",
        q: [What does the machine actually compute — and when does the computation fool it?],
        outcomes: (
          [Compute mean, median and mode — and the spread each one hides],
          [Roll probability on the desk; draw and interrogate a line of best fit],
          [Classify with nearest-neighbour distances, then turn a table into an algorithm],
        ),
        words: ("mean", "median", "mode", "probability", "correlation", "line of best fit", "nearest neighbour"),
        core: [Every learning machine computes arithmetic a student can do by hand — doing it once by hand is worth a hundred demos.],
        links: [Maths — statistics, probability, coordinate geometry · Science — experiment & error · English — precise claims]),
      (num: 4, title: "Generative AI & Ethics", missions: "T9-15 – T9-18",
        q: [Machines that write, speak and show faces — how do they work, and what do we owe each other?],
        outcomes: (
          [Build a next-word table by hand and generate text from it — mystery becomes mechanism],
          [Run real-or-AI evidence checks; examine deepfakes, copyright and academic integrity],
          [Hold the balloon debate: which AI future deserves the seat?],
        ),
        words: ("generative AI", "deepfake", "verification routine", "bias"),
        core: [Generative AI does not retrieve answers — it constructs plausible ones; verifying what it makes is now a core life skill.],
        links: [English — language patterns & argument · Social Science — access & equity · Art — what is authorship?]),
      (num: 5, title: "Capstone: The SDG-linked AI Brief", missions: "T9-19 – T9-21", capstone: true,
        q: [Can you connect an AI idea to the world's goals — and defend it before a panel?],
        outcomes: (
          [Connect a scoped AI idea to one Sustainable Development Goal],
          [Write a formal brief with honest data and verified claims],
          [Face the ethics review panel — arguing from every stakeholder's chair],
        ),
        words: ("SDG", "ethics review", "flowchart", "trace"),
        core: [Good ideas earn their keep under examination: an AI brief is only as strong as the ethics review it survives.],
        links: [Social Science — SDGs & development · Maths — the Chapter 3 mechanisms · English — the brief as argument]),
    ),
    exit: (
      [Compute and question the numbers underneath any AI claim],
      [Audit sources, catch lying graphs, and keep private data safe],
      [Explain generative AI as a mechanism — and use it honestly],
    ),
    award: "1 badge earned · Level 4 — Reason complete",
    footprint: (("Maths", 4), ("English", 4), ("Social Science", 4), ("Science", 1), ("Art", 1)),
    spotlight: ("T9-16", "How a Text Generator Guesses", [Students build a next-word table with their own pencil and generate text from it. The mystery of fluent AI becomes a mechanism anyone can explain — which is what makes its inventiveness, and its honesty risks, discussable.]),
  ),
  // ------------------------------------------------ CLASS 10
  (
    num: "10", theme: "Decide, Evaluate, Design", level: "Level 5 — Evaluate & Design", step: 5,
    role: "AI Designer",
    tagline: "My field book for judging AI systems, designing them responsibly — and defending the call",
    overview: "Class 10 completes the journey from noticing to designing. The designer draws the map of every model family met since Class 6, runs a real kernel across an image by hand, and builds text tables a machine could count. Then the single number that flatters every product — accuracy — is replaced by a discipline: confusion matrices, precision, recall and base rates, chosen to match the stakes. Governance follows the machinery: bioethics in medical triage, a full algorithm audit, privacy rights and responsibilities, and generative AI as the integrity question of this decade. The capstone is a complete responsible-design brief — with an ethics gate that can stop the project — defended before a board of judges.",
    facts: (("5", "chapters"), ("21", "paper missions"), ("24", "words to keep"), ("0", "screens needed")),
    chapters: (
      (num: 1, title: "Models Explained", missions: "T10-01 – T10-04",
        q: [What exactly is the machine doing under there?],
        outcomes: (
          [Sort ten real products into model families on one map],
          [Meet the three learning strategies — supervised, unsupervised, reinforcement],
          [Run all four learning jobs on a kirana-store dataset],
        ),
        words: ("model family", "supervised learning", "unsupervised learning", "reinforcement learning", "weight"),
        core: [Every AI product since Class 6 lives on one map of model families — knowing the family tells you what it can and cannot do.],
        links: [Maths — functions & relations · Science — neuron models · Economics — market behaviour]),
      (num: 2, title: "Machines That See and Read", missions: "T10-05 – T10-09",
        q: [What does a machine actually receive — and what does it do with it?],
        outcomes: (
          [Run a real 3 × 3 kernel across a 6 × 6 image and watch an edge announce itself],
          [Stack filters into feature maps; normalise and clean text until a machine can count it],
          [Build bag-of-words and TF-IDF tables with a pencil],
        ),
        words: ("pixel", "grayscale", "kernel", "feature map", "normalisation"),
        core: [Images are grids of numbers and text is countable patterns — the machine's way of seeing is learnable, and learning it removes the magic.],
        links: [Maths — matrices & weighted sums · Science — optics & the eye · Languages — morphology, root words]),
    ),
    chaptersB: (
      (num: 3, title: "Judging a Model", missions: "T10-10 – T10-14",
        q: [Is it any good — good for whom, at what, judged how?],
        outcomes: (
          [Split data for an honest test and count the four fates of every prediction],
          [Compute precision and recall — then choose the metric the stakes demand],
          [Dismantle a “99% accurate” claim with the base rate],
        ),
        words: ("train/test split", "confusion matrix", "precision", "recall", "base rate"),
        core: [Accuracy alone is the least examined number in AI — professionals pick the metric that matches the stakes, and defend the choice.],
        links: [Maths — percentages, ratios, conditional probability · Science — screening tests · Civics — accountability]),
      (num: 4, title: "Ethics, Governance & Society", missions: "T10-15 – T10-18",
        q: [Who decides — and who answers when the decision harms?],
        outcomes: (
          [Run a medical-triage tool through the four bioethics principles],
          [Conduct a full algorithm audit — bias, transparency, accountability — with evidence],
          [Map privacy rights against responsibilities; face generative AI as the integrity question],
        ),
        words: ("accountability", "transparency", "data minimisation", "integrity"),
        core: [Every AI decision has a person behind it — governance is how societies make sure that person can be named, questioned and answered.],
        links: [Biology — medical ethics · Civics — rights & governance · Economics — labour markets · English — reasoned argument]),
      (num: 5, title: "Capstone: The Responsible AI Design Brief", missions: "T10-19 – T10-21", capstone: true,
        q: [Can you design AI that survives its own audit?],
        outcomes: (
          [Design a complete system on paper — problem, consented data plan, model family, defensible metric],
          [Set deployment limits and an ethics gate that can stop the project],
          [Pitch it — naming its own doubts before the Board of Judges does],
        ),
        words: ("design brief", "ethics gate", "deployment limits", "pitch"),
        core: [Responsible design is not a section of the proposal — it is the proposal; a system that cannot survive its own audit is not finished.],
        links: [All subjects by design · English — the pitch is reasoned writing · Economics — budgets and trade-offs]),
    ),
    exit: (
      [Judge any model with the metric the stakes demand — and defend the choice],
      [Audit a system for bias, transparency and accountability],
      [Design AI responsibly, and argue the call when the room pushes back],
    ),
    award: "1 portfolio earned · Level 5 — Evaluate & Design complete",
    footprint: (("Maths", 3), ("Science", 3), ("Economics", 3), ("English", 2), ("Civics", 2), ("Biology", 1)),
    spotlight: ("T10-13", "“99% Accurate”? The Base-Rate Trap", [Students dismantle a “99% accurate” screening claim using the base rate, and watch an excellent-looking tool fail the very people it was built to help. Accuracy alone never again gets to end an argument.]),
  ),
)

#let chapter-block-from(d) = chapter-block(
  d.num, d.title, d.missions, d.q, d.outcomes, d.words, d.core, d.links,
  capstone: d.at("capstone", default: false))

#let class-section(c) = {
  // ---------- page A : identity, overview, chapters 1–2, signature mission ----------
  pagebreak()
  class-band(c.num, c.theme, c.tagline, c.level, str(c.facts.at(1).first()) + " PAPER MISSIONS · 5 CHAPTERS", c.step)
  v(9pt)
  prose(c.overview)
  v(8pt)
  facts-strip(..c.facts)
  for d in c.chapters { chapter-block-from(d) }
  spotlight(..c.spotlight)
  // ---------- page B : chapters 3–5, outcomes, footprint ----------
  pagebreak()
  for d in c.chaptersB { chapter-block-from(d) }
  v(8pt)
  end-footprint(c.exit, c.award, c.footprint)
}
