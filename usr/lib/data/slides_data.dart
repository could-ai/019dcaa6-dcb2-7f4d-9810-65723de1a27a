import '../models/slide.dart';

final List<Slide> presentationSlides = [
  // 1. Title Slide
  const Slide(
    title: 'AI Driven Operational Improvements in Corporate Finance',
    subtitle: 'Bajaj Finance Limited\n\nInternship Presentation',
    layout: SlideLayout.title,
  ),

  // 2. Industry Profile (Combined)
  const Slide(
    title: 'Industry Profile: NBFC Sector',
    subtitle: 'Non-Banking Financial Companies in India',
    layout: SlideLayout.content,
    bulletPoints: [
      'NBFCs play a pivotal role in driving credit penetration and financial inclusion in India.',
      'Serve as an alternative to traditional banking, catering to unbanked and underserved segments.',
      'Key sectors: Consumer Durables, MSME, Vehicle Finance, and Microfinance.',
      'Heavily reliant on technology and analytics to maintain competitive advantage.',
    ],
  ),

  // 3. Industry Overview
  const Slide(
    title: 'Industry Overview: The Shift to Tech',
    layout: SlideLayout.split,
    primaryText: 'Financial Services and Fintech Integration',
    bulletPoints: [
      'Rapid shift from traditional underwriting to data-driven decision making.',
      'Adoption of alternative data for credit scoring.',
      'Integration of AI and Machine Learning to optimize operations and reduce Turn Around Time (TAT).',
      'Focus on digital lending and frictionless customer onboarding.',
    ],
  ),

  // 4. Market Size, Growth & Key Players
  const Slide(
    title: 'Market Size, Growth & Key Players',
    layout: SlideLayout.content,
    bulletPoints: [
      'Market Size: India\\'s NBFC sector AUM (Assets Under Management) is in the multi-trillion rupee range.',
      'Growth: Expected to grow at a healthy CAGR of 12-14% over the next few years.',
      'Key Players:',
      '  • Bajaj Finance Limited',
      '  • Muthoot Finance',
      '  • Cholamandalam Investment & Finance',
      '  • Tata Capital',
      '  • Shriram Finance',
    ],
  ),

  // 5. Trends, Opportunities & Challenges
  const Slide(
    title: 'Trends, Opportunities & Challenges',
    layout: SlideLayout.content,
    bulletPoints: [
      'Trends: Digital-first lending platforms, automated risk assessment, robotic process automation (RPA).',
      'Opportunities: Huge untapped MSME credit gap, rising middle-class consumption, Tier 2/3 city expansion.',
      'Challenges: Stringent RBI regulations, rising interest rates, rising cost of funds, and intense competition from Fintechs.',
    ],
  ),

  // 6. Company Overview
  const Slide(
    title: 'Company Overview: Bajaj Finance Limited',
    layout: SlideLayout.sectionHeader,
    subtitle: 'One of India\\'s Largest Diversified NBFCs',
    primaryText: 'Headquartered in Pune, Maharashtra. BFL is known for its highly profitable and diversified portfolio, extensive geographic reach, and pioneering use of data analytics in lending.',
  ),

  // 7. Vision, Mission & Products
  const Slide(
    title: 'Vision & Mission',
    layout: SlideLayout.split,
    primaryText: 'Vision:\nTo be the most preferred financial services provider in India.',
    secondaryText: 'Mission:\nTo focus on continuous innovation, exceptional customer-centricity, and sustainable profitability through data and technology.',
  ),

  // 8. Competitors
  const Slide(
    title: 'Competitors',
    layout: SlideLayout.content,
    bulletPoints: [
      'Traditional Banks: HDFC Bank, ICICI Bank, SBI (expanding heavily into retail lending).',
      'Other NBFCs: Tata Capital, Muthoot Finance, Shriram Finance.',
      'Fintech Startups: LendingKart, Navi, Groww (disrupting with niche digital products).',
    ],
  ),

  // 9. Products and Services
  const Slide(
    title: 'Products and Services',
    layout: SlideLayout.content,
    bulletPoints: [
      'Consumer Finance (EMI Network, Two-Wheeler Loans)',
      'SME Finance (Business Loans, Professional Loans)',
      'Commercial Lending (Auto Component Finance, Vendor Financing)',
      'Rural Lending',
      'Deposits (Fixed Deposits, Systematic Deposit Plans)',
      'Value Added Services (Insurance Distribution, Credit Cards)',
    ],
  ),

  // 10. Achievements and Milestones
  const Slide(
    title: 'Achievements and Milestones',
    layout: SlideLayout.content,
    bulletPoints: [
      'Holds the highest credit rating (AAA) for long-term borrowing.',
      'Massive customer franchise exceeding 80+ million customers.',
      'Pioneer of the "No Cost EMI" and ubiquitous EMI Network Card.',
      'Consistently recognized as one of the best employers in India.',
    ],
  ),

  // 11. SWOT Analysis
  const Slide(
    title: 'SWOT Analysis: Bajaj Finance',
    layout: SlideLayout.swot,
    swotData: {
      'Strengths': [
        'Huge customer base & distribution network',
        'Advanced data analytics capabilities',
        'Diversified product portfolio'
      ],
      'Weaknesses': [
        'Higher cost of funds compared to traditional banks',
        'Dependence on domestic market'
      ],
      'Opportunities': [
        'Expansion into Tier 2, 3, and 4 cities',
        'Deepening cross-sell via super app'
      ],
      'Threats': [
        'Regulatory tightening by RBI',
        'Aggressive expansion by Fintechs'
      ],
    },
  ),

  // 12. Department Overview & Objectives
  const Slide(
    title: 'Internship: Department Overview & Objectives',
    layout: SlideLayout.sectionHeader,
    subtitle: 'Corporate Finance & Operations Department',
    primaryText: 'Objective: Streamline operational processes using Artificial Intelligence and Machine Learning to reduce Turn Around Time (TAT), improve accuracy, and reduce operational overhead.',
  ),

  // 13. Roles, Responsibilities & Activities
  const Slide(
    title: 'Roles, Responsibilities & Activities',
    layout: SlideLayout.split,
    primaryText: 'Role: AI Implementation Intern / Process Analyst',
    bulletPoints: [
      'Analyzing current operational bottlenecks in document processing.',
      'Testing AI models for automated document verification (OCR).',
      'Collaborating with IT and Operations to design automated workflows.',
      'Generating performance dashboards to track AI effectiveness.',
    ],
  ),

  // 14. Tools, Techniques & Software Used
  const Slide(
    title: 'Tools, Techniques & Software Used',
    layout: SlideLayout.content,
    bulletPoints: [
      'Languages & Scripts: Python, SQL',
      'Data Analytics & Visualization: Tableau, PowerBI, MS Excel (Advanced)',
      'AI/ML Frameworks: TensorFlow, OpenCV (for document parsing)',
      'Process Automation: UiPath (RPA integration)',
    ],
  ),

  // 15. Skills Gained & Practical Exposure
  const Slide(
    title: 'Skills Gained & Practical Exposure',
    layout: SlideLayout.content,
    bulletPoints: [
      'Data preprocessing and exploratory data analysis.',
      'In-depth understanding of the corporate lending life-cycle.',
      'Bridging the gap between technical models and business operations.',
      'Cross-functional communication and stakeholder management.',
      'Professional presentation and reporting skills.',
    ],
  ),

  // 16. Problems Faced & Solutions
  const Slide(
    title: 'Problems Faced & Solutions',
    layout: SlideLayout.split,
    primaryText: 'Challenge: Inconsistent Legacy Data\\nLegacy formats caused high rejection rates in AI models.',
    secondaryText: 'Solution: Developed automated Python scripts to clean, standardize, and format the data before ingestion.\\n\\nChallenge: Resistance to new AI tools.\\nSolution: Conducted user-friendly training sessions.',
  ),

  // 17. Research Objectives & Data Collection
  const Slide(
    title: 'Research Methodology',
    subtitle: 'Objectives & Data Collection',
    layout: SlideLayout.sectionHeader,
    primaryText: 'Objective: Measure the quantitative impact of AI on loan processing time and error rates.',
    secondaryText: 'Data Collection: Secondary data extracted from internal Management Information Systems (MIS).',
  ),

  // 18. Sampling & Tools for Analysis
  const Slide(
    title: 'Sampling & Tools for Analysis',
    layout: SlideLayout.split,
    primaryText: 'Sampling Strategy',
    secondaryText: 'Tools Used',
    bulletPoints: [
      'Analyzed a sample of 5,000 corporate loan applications.',
      'Timeframe: Last 6 months of processing data (Pre and Post AI implementation).',
      'Tools: Python (Pandas for aggregation, SciPy for statistical significance testing).',
    ],
  ),

  // 19. Data Analysis & Key Findings
  const Slide(
    title: 'Data Analysis & Key Findings',
    layout: SlideLayout.content,
    bulletPoints: [
      'Finding 1: AI-based OCR reduced document verification time by 42%.',
      'Finding 2: Error rate in manual data entry dropped from 8% to 1.5%.',
      'Finding 3: Overall loan processing TAT improved by 1.2 days on average.',
      'Finding 4: Measurable cost savings in operational overhead due to reduced manual intervention.',
    ],
  ),

  // 20. Suggestions & Conclusion
  const Slide(
    title: 'Suggestions & Conclusion',
    layout: SlideLayout.conclusion,
    primaryText: 'Suggestions:',
    secondaryText: 'Conclusion:',
    bulletPoints: [
      'Scale the AI document verification module to SME and Rural lending divisions.',
      'Invest in continuous model retraining to handle new document formats.',
      'Conclusion: AI is no longer just an experiment but a critical enabler for operational efficiency, scalability, and risk management in corporate finance.',
    ],
  ),

  // 21. Thank You (Slide 20 per outline, effectively)
  const Slide(
    title: 'Thank You',
    subtitle: 'Open for Questions',
    layout: SlideLayout.title,
  ),
];
