-- CreateTable
CREATE TABLE `produtos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(191) NOT NULL,
    `descricao` VARCHAR(191) NOT NULL,
    `marca` VARCHAR(191) NOT NULL,
    `modelo` VARCHAR(191) NOT NULL,
    `imagem` VARCHAR(191) NOT NULL,
    `nota` DOUBLE NOT NULL,
    `videoReview` VARCHAR(191) NOT NULL,
    `precoBase` DOUBLE NOT NULL,
    `precoPromocional` DOUBLE NOT NULL,
    `menorPreco` DOUBLE NOT NULL,
    `maiorPreco` DOUBLE NOT NULL,
    `precoMedio` DOUBLE NOT NULL,
    `especificacoes` JSON NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
