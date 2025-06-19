# 🍽️ AI Meal Plan Generator

A modern, full-stack web application that generates personalized meal plans using AI. Built with Next.js, TypeScript, and integrated with Stripe for subscription management.

## ✨ Features

- **AI-Powered Meal Planning**: Generate personalized 7-day meal plans based on your dietary preferences
- **Customizable Preferences**: Set diet type, calorie goals, allergies, cuisine preferences, and snack options
- **User Authentication**: Secure user management with Clerk
- **Subscription Management**: Multiple pricing tiers with Stripe integration
- **Interactive Calendar View**: Visual meal plan display with calendar interface
- **PDF Export**: Download your meal plans as PDF documents
- **Responsive Design**: Beautiful, modern UI that works on all devices
- **Real-time Updates**: React Query for efficient data fetching and caching

## 🚀 Tech Stack

- **Frontend**: Next.js 15, React 19, TypeScript
- **Styling**: Tailwind CSS 4
- **Authentication**: Clerk
- **Database**: PostgreSQL with Prisma ORM
- **Payment Processing**: Stripe
- **AI Integration**: OpenAI API (via OpenRouter)
- **State Management**: TanStack React Query
- **UI Components**: React Calendar, React Hot Toast
- **PDF Generation**: jsPDF, html2canvas

## 📋 Prerequisites

Before running this project, make sure you have:

- Node.js 18+ installed
- PostgreSQL database
- Stripe account
- Clerk account
- OpenRouter API key

## 🛠️ Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd meal-plan-generator
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   Create a `.env.local` file in the root directory:
   ```env
   # Database
   DATABASE_URL="postgresql://username:password@localhost:5432/meal_plan_generator"

   # Authentication
   NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=your_clerk_publishable_key
   CLERK_SECRET_KEY=your_clerk_secret_key

   # Stripe
   STRIPE_SECRET_KEY=your_stripe_secret_key
   NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY=your_stripe_publishable_key
   STRIPE_WEBHOOK_SECRET=your_stripe_webhook_secret
   STRIPE_PRICE_WEEKLY=price_weekly_id
   STRIPE_PRICE_MONTHLY=price_monthly_id
   STRIPE_PRICE_YEARLY=price_yearly_id

   # AI
   OPEN_ROUTER_API_KEY=your_openrouter_api_key
   ```

4. **Set up the database**
   ```bash
   npx prisma generate
   npx prisma db push
   ```

5. **Run the development server**
   ```bash
   npm run dev
   ```

6. **Open your browser**
   Navigate to [http://localhost:3000](http://localhost:3000)

## 🏗️ Project Structure

```
meal-plan-generator/
├── app/                          # Next.js app directory
│   ├── api/                      # API routes
│   │   ├── checkout/             # Stripe checkout
│   │   ├── generate-mealplan/    # AI meal plan generation
│   │   ├── webhook/              # Stripe webhooks
│   │   └── profile/              # User profile management
│   ├── mealplan/                 # Meal plan dashboard
│   ├── profile/                  # User profile page
│   ├── subscribe/                # Subscription page
│   └── sign-up/                  # Authentication
├── Components/                   # Reusable React components
├── lib/                         # Utility functions and configurations
├── prisma/                      # Database schema and migrations
└── public/                      # Static assets
```

## 💳 Subscription Plans

The application offers three subscription tiers:

- **Weekly Plan** ($9.99/week): Perfect for trying the service
- **Monthly Plan** ($39.99/month): Most popular option for ongoing use
- **Yearly Plan** ($299.99/year): Best value for long-term commitment

## 🔧 API Endpoints

- `POST /api/generate-mealplan` - Generate AI meal plans
- `POST /api/checkout` - Create Stripe checkout sessions
- `POST /api/webhook` - Handle Stripe webhooks
- `GET /api/profile/subscription-status` - Check subscription status
- `POST /api/profile/unsubscribe` - Cancel subscription

## 🎯 Key Features Explained

### AI Meal Plan Generation
The app uses OpenAI's API (via OpenRouter) to generate personalized meal plans. Users can specify:
- Diet type (vegetarian, keto, Mediterranean, etc.)
- Daily calorie goals
- Food allergies and restrictions
- Preferred cuisine styles
- Whether to include snacks

### User Management
- Secure authentication with Clerk
- User profile creation and management
- Subscription status tracking
- Plan management and cancellation

### Payment Processing
- Secure payment processing with Stripe
- Multiple subscription tiers
- Webhook handling for subscription events
- Automatic billing and renewal

## 🚀 Deployment

### Vercel (Recommended)
1. Connect your GitHub repository to Vercel
2. Set up environment variables in Vercel dashboard
3. Deploy automatically on push to main branch

### Other Platforms
The app can be deployed to any platform that supports Next.js:
- Netlify
- Railway
- DigitalOcean App Platform
- AWS Amplify

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/yourusername/meal-plan-generator/issues) page
2. Create a new issue with detailed information


## 🔮 Roadmap

- [ ] Recipe recommendations with cooking instructions
- [ ] Nutritional information and macro tracking
- [ ] Shopping list generation
- [ ] Meal plan sharing and social features
- [ ] Mobile app development
- [ ] Integration with grocery delivery services
- [ ] Meal plan templates and favorites
- [ ] Advanced dietary restrictions and preferences


