-- AlterTable
ALTER TABLE "Student_details" ADD COLUMN     "format" TEXT,
ADD COLUMN     "themes" TEXT;

-- CreateTable
CREATE TABLE "Data" (
    "id" SERIAL NOT NULL,
    "type" TEXT,
    "grade_level" TEXT,
    "format" TEXT,
    "theme" TEXT,
    "name" TEXT,
    "link" TEXT,
    "description" TEXT,

    CONSTRAINT "Data_pkey" PRIMARY KEY ("id")
);
