-- CreateTable
CREATE TABLE "contacs" (
    "id" SERIAL NOT NULL,
    "first_name" VARCHAR(100) NOT NULL,
    "last_name" VARCHAR(100),
    "email" VARCHAR(100),
    "phone" VARCHAR(20),
    "username" VARCHAR(100) NOT NULL,

    CONSTRAINT "contacs_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "contacs" ADD CONSTRAINT "contacs_username_fkey" FOREIGN KEY ("username") REFERENCES "users"("username") ON DELETE RESTRICT ON UPDATE CASCADE;
