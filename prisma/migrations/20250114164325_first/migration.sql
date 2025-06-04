-- CreateTable
CREATE TABLE "Emailwithcode" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "code" TEXT NOT NULL,

    CONSTRAINT "Emailwithcode_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Student" (
    "id" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Student_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Student_details" (
    "id" SERIAL NOT NULL,
    "student_id" INTEGER NOT NULL,
    "gpa" TEXT,
    "fav_subjects" TEXT,
    "satScore" TEXT,
    "ab_ib" TEXT,
    "dreamColleges" TEXT,
    "current_majors" TEXT,
    "majors" TEXT,
    "extracurriculars" TEXT,
    "sports" TEXT,
    "awards" TEXT,
    "achievements" TEXT,
    "hobbies" TEXT,
    "budget" TEXT,
    "state" TEXT,
    "city" TEXT,
    "stayLocal" BOOLEAN,
    "school" TEXT,
    "opportunities" BOOLEAN,
    "isUSResident" TEXT,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Student_details_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Student_interests" (
    "id" SERIAL NOT NULL,
    "student_id" INTEGER NOT NULL,
    "interests" TEXT[],

    CONSTRAINT "Student_interests_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Student_goals" (
    "id" SERIAL NOT NULL,
    "student_id" INTEGER NOT NULL,
    "goal" TEXT NOT NULL,
    "tasks" TEXT[],

    CONSTRAINT "Student_goals_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Emailwithcode_email_key" ON "Emailwithcode"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Student_username_key" ON "Student"("username");

-- CreateIndex
CREATE UNIQUE INDEX "Student_details_student_id_key" ON "Student_details"("student_id");

-- CreateIndex
CREATE UNIQUE INDEX "Student_interests_student_id_key" ON "Student_interests"("student_id");

-- CreateIndex
CREATE UNIQUE INDEX "Student_goals_student_id_key" ON "Student_goals"("student_id");

-- AddForeignKey
ALTER TABLE "Student_details" ADD CONSTRAINT "Student_details_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "Student"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Student_interests" ADD CONSTRAINT "Student_interests_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "Student"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Student_goals" ADD CONSTRAINT "Student_goals_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "Student"("id") ON DELETE CASCADE ON UPDATE CASCADE;
