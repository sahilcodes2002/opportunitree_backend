-- DropIndex
DROP INDEX "Student_goals_student_id_key";

-- DropIndex
DROP INDEX "Student_interests_student_id_key";

-- CreateTable
CREATE TABLE "Student_learning" (
    "id" SERIAL NOT NULL,
    "student_id" INTEGER NOT NULL,
    "topic" TEXT NOT NULL,

    CONSTRAINT "Student_learning_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "learning_path" (
    "id" SERIAL NOT NULL,
    "Student_learning_id" INTEGER NOT NULL,
    "stage" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "info" TEXT NOT NULL,
    "link" TEXT NOT NULL,

    CONSTRAINT "learning_path_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Student_learning" ADD CONSTRAINT "Student_learning_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "Student"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "learning_path" ADD CONSTRAINT "learning_path_Student_learning_id_fkey" FOREIGN KEY ("Student_learning_id") REFERENCES "Student_learning"("id") ON DELETE CASCADE ON UPDATE CASCADE;
