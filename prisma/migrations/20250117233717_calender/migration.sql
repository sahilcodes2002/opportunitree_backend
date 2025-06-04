-- CreateTable
CREATE TABLE "Calenderevents" (
    "id" SERIAL NOT NULL,
    "student_id" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT,
    "start" TIMESTAMP(3) NOT NULL,
    "end" TIMESTAMP(3) NOT NULL,
    "color" TEXT NOT NULL,

    CONSTRAINT "Calenderevents_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Calenderevents" ADD CONSTRAINT "Calenderevents_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "Student"("id") ON DELETE CASCADE ON UPDATE CASCADE;
