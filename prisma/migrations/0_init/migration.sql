-- CreateEnum
CREATE TYPE "adStatus" AS ENUM ('ON', 'OFF');

-- CreateEnum
CREATE TYPE "bidtype" AS ENUM ('CPC', 'CPM', 'CPI');

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User2" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,

    CONSTRAINT "User2_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ad_table" (
    "id" SERIAL NOT NULL,
    "ad_id" INTEGER NOT NULL,
    "w_size" INTEGER NOT NULL,
    "h_size" INTEGER NOT NULL,
    "bid_type" "bidtype" NOT NULL,
    "bid_floor" INTEGER NOT NULL,
    "web_url" TEXT NOT NULL,
    "img_url" TEXT NOT NULL,
    "budget_daily" INTEGER NOT NULL,
    "budget_now" INTEGER NOT NULL,
    "ad_status" "adStatus" NOT NULL,

    CONSTRAINT "ad_table_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bidClickLog" (
    "id" SERIAL NOT NULL,
    "res_bidid" TEXT NOT NULL,
    "res_id" TEXT NOT NULL,
    "res_impid" TEXT NOT NULL,
    "ssp_id" TEXT NOT NULL,
    "tag_id" TEXT NOT NULL,
    "ad_id" TEXT NOT NULL,
    "bid_price" INTEGER NOT NULL,
    "regdate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "bidClickLog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bidCpmLog" (
    "id" SERIAL NOT NULL,
    "ad_id" TEXT NOT NULL,
    "ad_price" INTEGER NOT NULL,
    "ad_cnt" INTEGER NOT NULL,
    "ad_status" "adStatus" NOT NULL,
    "regdate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "bidCpmLog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bidViewLog" (
    "id" SERIAL NOT NULL,
    "res_bidid" TEXT NOT NULL,
    "res_id" TEXT NOT NULL,
    "res_impid" TEXT NOT NULL,
    "ssp_id" TEXT NOT NULL,
    "tag_id" TEXT NOT NULL,
    "ad_id" TEXT NOT NULL,
    "bid_price" INTEGER NOT NULL,
    "regdate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "bidViewLog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bidWinLog" (
    "id" SERIAL NOT NULL,
    "res_bidid" TEXT NOT NULL,
    "res_id" TEXT NOT NULL,
    "res_impid" TEXT NOT NULL,
    "ssp_id" TEXT NOT NULL,
    "tag_id" TEXT NOT NULL,
    "ad_id" TEXT NOT NULL,
    "bid_price" INTEGER NOT NULL,
    "regdate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "bidWinLog_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "bid_count" (
    "id" SERIAL NOT NULL,
    "sspId" TEXT NOT NULL,
    "tagid" TEXT NOT NULL,
    "regdate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "bid_cnt" INTEGER NOT NULL DEFAULT 0,
    "bid_win" INTEGER NOT NULL DEFAULT 0,
    "bid_view" INTEGER NOT NULL DEFAULT 0,
    "bid_click" INTEGER NOT NULL DEFAULT 0,
    "bid_revenue" DOUBLE PRECISION NOT NULL DEFAULT 0.0,

    CONSTRAINT "bid_count_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User2_email_key" ON "User2"("email");

-- CreateIndex
CREATE UNIQUE INDEX "ad_table_ad_id_key" ON "ad_table"("ad_id");

-- CreateIndex
CREATE UNIQUE INDEX "bidWinLog_res_bidid_key" ON "bidWinLog"("res_bidid");

