-- CreateTable
CREATE TABLE `Users` (
    `uid` INTEGER NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(20) NOT NULL,
    `password` VARCHAR(32) NOT NULL,
    `telephone` VARCHAR(11) NOT NULL,
    `isAdmin` BOOLEAN NOT NULL DEFAULT false,
    `created` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`uid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `VehicleOwners` (
    `oid` INTEGER NOT NULL AUTO_INCREMENT,
    `oname` VARCHAR(20) NOT NULL,
    `telephone` VARCHAR(11) NOT NULL,
    `idCard` VARCHAR(10) NOT NULL,
    `contactName` VARCHAR(4) NOT NULL,
    `contactTelephone` VARCHAR(11) NOT NULL,
    `isConfirmed` BOOLEAN NOT NULL DEFAULT false,
    `created` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `isDeleted` BOOLEAN NOT NULL DEFAULT false,

    UNIQUE INDEX `VehicleOwners_idCard_key`(`idCard`),
    PRIMARY KEY (`oid`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
