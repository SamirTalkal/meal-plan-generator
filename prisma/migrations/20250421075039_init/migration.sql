/*
  Warnings:

  - A unique constraint covering the columns `[stripeSubscriptionId]` on the table `Profile` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `updatedAt` to the `Profile` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Profile" ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "stripeSubscriptionId" TEXT,
ADD COLUMN     "subscriptionTier" TEXT,
ADD COLUMN     "updatedAt" TIMESTAMP(3) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Profile_stripeSubscriptionId_key" ON "Profile"("stripeSubscriptionId");
