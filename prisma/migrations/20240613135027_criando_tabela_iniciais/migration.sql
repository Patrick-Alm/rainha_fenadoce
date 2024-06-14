-- CreateTable
CREATE TABLE "candidatas" (
    "id" SERIAL NOT NULL,
    "nome" VARCHAR(60) NOT NULL,
    "clube" VARCHAR(40) NOT NULL,
    "idade" SMALLINT NOT NULL,
    "sonho" VARCHAR(255) NOT NULL,
    "numVotos" INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT "candidatas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "clientes" (
    "id" SERIAL NOT NULL,
    "nome" VARCHAR(60) NOT NULL,
    "email" VARCHAR(60) NOT NULL,
    "cidade" VARCHAR(30) NOT NULL,
    "dataNasc" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "clientes_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "votoss" (
    "id" SERIAL NOT NULL,
    "data" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "justificativa" VARCHAR(255),
    "candidataId" INTEGER NOT NULL,
    "clienteId" INTEGER NOT NULL,

    CONSTRAINT "votoss_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "votoss" ADD CONSTRAINT "votoss_candidataId_fkey" FOREIGN KEY ("candidataId") REFERENCES "candidatas"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "votoss" ADD CONSTRAINT "votoss_clienteId_fkey" FOREIGN KEY ("clienteId") REFERENCES "clientes"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
