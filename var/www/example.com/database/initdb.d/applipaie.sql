-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 18 nov. 2023 à 21:22
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `appli paie`
--

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `ID` int(4) NOT NULL,
  `NOM` varchar(255) NOT NULL,
  `PRENOM` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `MOT DE PASSE` varbinary(255) NOT NULL,
  `NOM UTILISATEUR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`ID`, `NOM`, `PRENOM`, `EMAIL`, `MOT DE PASSE`, `NOM UTILISATEUR`) VALUES
(0, '[value-2]', '[value-3]', '[value-4]', 0x5b76616c75652d355d, '[value-6]'),
(4701, 'SCOFILELD', 'MICKAEL ', 'mickael-scofield@applipaie.ca', 0x2a43413742354235374632394136393339413143393934354146433934394431423435343241383744, 'mickael7802'),
(4702, 'BEN', 'MAURICE', 'ben-maurice@applipaie.ca', 0x2a31374541393344383032303241343344463643453532313636374333333743414633443646323433, 'maurice2015'),
(4703, 'BROZE', 'MAMADOU', 'broze-mamadou@applipaie.ca', 0x2a34393545463934413143453344433238323642444536374131433931393837454436333633414630, 'mamadou896'),
(4704, 'BENGA', 'ALICE', 'benga-alice@applipaie.ca', 0x2a35384244463641363834414134373830394537414531463230333946413146353231354337464339, 'alice1234'),
(4705, 'LAHMADI', 'MAROUANE', 'lahmadi-marouane@applipaie.ca', 0x2a45444331424430394638363339433933393441374431424535363937373545343346413742314341, 'marouane6258'),
(4706, 'TOUGHRAI', 'TAOUFIK', 'toughrai-taoufik@applipaie.ca', 0x2a30464537343738383736374439313441303341364237353233323738443337353343343636313143, 'taoufik4587'),
(4707, 'NDIONGUE', 'PENDA', 'ndiongue-penda@applipaie.ca', 0x2a32323932413838414631453142343245384338323146454242313533314534343435333342453536, 'penda64723'),
(4708, 'PATUPE', 'GHISLAIN', 'patupe-ghislain@applipaie.ca', 0x2a35443639433034303832313136323332343231383532383432323146354344384343384438374446, 'ghislain2685');

-- --------------------------------------------------------

--
-- Structure de la table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `worked_days` int(20) NOT NULL,
  `exception` int(10) DEFAULT NULL,
  `allowance` varchar(20) DEFAULT NULL,
  `overtime` varchar(20) DEFAULT NULL,
  `tax` varchar(20) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `paid_by` varchar(60) NOT NULL,
  `date` date NOT NULL,
  `employee_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `history`
--

INSERT INTO `history` (`id`, `worked_days`, `exception`, `allowance`, `overtime`, `tax`, `salary`, `paid_by`, `date`, `employee_no`) VALUES
(3, 25, 0, '2000', '1000', '4.0', '150000', 'admin', '2016-05-20', 34),
(4, 26, 0, '5000', '2000', '10.0', '200000', 'admin', '2016-06-22', 34),
(5, 20, 6, '3000', '', '7.0', '160000', 'admin', '2016-06-22', 20),
(6, 23, 0, '5000', '10000', '6.0', '110000', 'admin', '2016-07-02', 10);

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur ou commentatrice WordPress', 'wapuu@wordpress.example', 'https://fr.wordpress.org/', '', '2023-11-02 21:09:04', '2023-11-02 20:09:04', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://fr.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_bills`
--

CREATE TABLE `wp_erp_acct_bills` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `particulars` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_bill_account_details`
--

CREATE TABLE `wp_erp_acct_bill_account_details` (
  `id` int(11) NOT NULL,
  `bill_no` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_bill_details`
--

CREATE TABLE `wp_erp_acct_bill_details` (
  `id` int(11) NOT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_cash_at_banks`
--

CREATE TABLE `wp_erp_acct_cash_at_banks` (
  `id` int(11) NOT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `balance` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_chart_of_accounts`
--

CREATE TABLE `wp_erp_acct_chart_of_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_acct_chart_of_accounts`
--

INSERT INTO `wp_erp_acct_chart_of_accounts` (`id`, `name`, `slug`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Asset', 'asset', NULL, NULL, NULL, NULL),
(2, 'Asset', 'asset', NULL, NULL, NULL, NULL),
(3, 'Liability', 'liability', NULL, NULL, NULL, NULL),
(4, 'Liability', 'liability', NULL, NULL, NULL, NULL),
(5, 'Equity', 'equity', NULL, NULL, NULL, NULL),
(6, 'Income', 'income', NULL, NULL, NULL, NULL),
(7, 'Equity', 'equity', NULL, NULL, NULL, NULL),
(8, 'Expense', 'expense', NULL, NULL, NULL, NULL),
(9, 'Income', 'income', NULL, NULL, NULL, NULL),
(10, 'Asset & Liability', 'asset_liability', NULL, NULL, NULL, NULL),
(11, 'Expense', 'expense', NULL, NULL, NULL, NULL),
(12, 'Bank', 'bank', NULL, NULL, NULL, NULL),
(13, 'Asset & Liability', 'asset_liability', NULL, NULL, NULL, NULL),
(14, 'Bank', 'bank', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_currency_info`
--

CREATE TABLE `wp_erp_acct_currency_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sign` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_acct_currency_info`
--

INSERT INTO `wp_erp_acct_currency_info` (`id`, `name`, `sign`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'AED', 'د.إ', NULL, NULL, NULL, NULL),
(2, 'AED', 'د.إ', NULL, NULL, NULL, NULL),
(3, 'AFN', '؋', NULL, NULL, NULL, NULL),
(4, 'AFN', '؋', NULL, NULL, NULL, NULL),
(5, 'ALL', 'L', NULL, NULL, NULL, NULL),
(6, 'ALL', 'L', NULL, NULL, NULL, NULL),
(7, 'AMD', 'AMD', NULL, NULL, NULL, NULL),
(8, 'AMD', 'AMD', NULL, NULL, NULL, NULL),
(9, 'ANG', 'ƒ', NULL, NULL, NULL, NULL),
(10, 'ANG', 'ƒ', NULL, NULL, NULL, NULL),
(11, 'AOA', 'Kz', NULL, NULL, NULL, NULL),
(12, 'AOA', 'Kz', NULL, NULL, NULL, NULL),
(13, 'ARS', '$', NULL, NULL, NULL, NULL),
(14, 'ARS', '$', NULL, NULL, NULL, NULL),
(15, 'AUD', '$', NULL, NULL, NULL, NULL),
(16, 'AUD', '$', NULL, NULL, NULL, NULL),
(17, 'AWG', 'ƒ', NULL, NULL, NULL, NULL),
(18, 'AWG', 'ƒ', NULL, NULL, NULL, NULL),
(19, 'AZN', '₼', NULL, NULL, NULL, NULL),
(20, 'AZN', '₼', NULL, NULL, NULL, NULL),
(21, 'BAM', 'KM', NULL, NULL, NULL, NULL),
(22, 'BAM', 'KM', NULL, NULL, NULL, NULL),
(23, 'BBD', '$', NULL, NULL, NULL, NULL),
(24, 'BBD', '$', NULL, NULL, NULL, NULL),
(25, 'BDT', '৳', NULL, NULL, NULL, NULL),
(26, 'BDT', '৳', NULL, NULL, NULL, NULL),
(27, 'BGN', 'лв', NULL, NULL, NULL, NULL),
(28, 'BGN', 'лв', NULL, NULL, NULL, NULL),
(29, 'BHD', '.د.ب', NULL, NULL, NULL, NULL),
(30, 'BHD', '.د.ب', NULL, NULL, NULL, NULL),
(31, 'BIF', 'Fr', NULL, NULL, NULL, NULL),
(32, 'BIF', 'Fr', NULL, NULL, NULL, NULL),
(33, 'BMD', '$', NULL, NULL, NULL, NULL),
(34, 'BMD', '$', NULL, NULL, NULL, NULL),
(35, 'BND', '$', NULL, NULL, NULL, NULL),
(36, 'BND', '$', NULL, NULL, NULL, NULL),
(37, 'BOB', 'Bs.', NULL, NULL, NULL, NULL),
(38, 'BOB', 'Bs.', NULL, NULL, NULL, NULL),
(39, 'BRL', 'R$', NULL, NULL, NULL, NULL),
(40, 'BRL', 'R$', NULL, NULL, NULL, NULL),
(41, 'BSD', '$', NULL, NULL, NULL, NULL),
(42, 'BSD', '$', NULL, NULL, NULL, NULL),
(43, 'BTN', 'Nu.', NULL, NULL, NULL, NULL),
(44, 'BTN', 'Nu.', NULL, NULL, NULL, NULL),
(45, 'BWP', 'P', NULL, NULL, NULL, NULL),
(46, 'BWP', 'P', NULL, NULL, NULL, NULL),
(47, 'BYN', 'Br', NULL, NULL, NULL, NULL),
(48, 'BYN', 'Br', NULL, NULL, NULL, NULL),
(49, 'BYR', 'Br', NULL, NULL, NULL, NULL),
(50, 'BYR', 'Br', NULL, NULL, NULL, NULL),
(51, 'BZD', '$', NULL, NULL, NULL, NULL),
(52, 'BZD', '$', NULL, NULL, NULL, NULL),
(53, 'CAD', '$', NULL, NULL, NULL, NULL),
(54, 'CAD', '$', NULL, NULL, NULL, NULL),
(55, 'CDF', 'Fr', NULL, NULL, NULL, NULL),
(56, 'CDF', 'Fr', NULL, NULL, NULL, NULL),
(57, 'CHF', 'Fr', NULL, NULL, NULL, NULL),
(58, 'CHF', 'Fr', NULL, NULL, NULL, NULL),
(59, 'CLP', '$', NULL, NULL, NULL, NULL),
(60, 'CLP', '$', NULL, NULL, NULL, NULL),
(61, 'CNY', '¥', NULL, NULL, NULL, NULL),
(62, 'CNY', '¥', NULL, NULL, NULL, NULL),
(63, 'COP', '$', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_expenses`
--

CREATE TABLE `wp_erp_acct_expenses` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `people_id` int(11) DEFAULT NULL,
  `people_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `ref` varchar(255) DEFAULT NULL,
  `check_no` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `trn_by` int(11) DEFAULT NULL,
  `transaction_charge` decimal(20,2) DEFAULT 0.00,
  `trn_by_ledger_id` int(11) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_expense_checks`
--

CREATE TABLE `wp_erp_acct_expense_checks` (
  `id` int(11) NOT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `check_no` varchar(255) DEFAULT NULL,
  `voucher_type` varchar(255) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `bank` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pay_to` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_expense_details`
--

CREATE TABLE `wp_erp_acct_expense_details` (
  `id` int(11) NOT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_financial_years`
--

CREATE TABLE `wp_erp_acct_financial_years` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_acct_financial_years`
--

INSERT INTO `wp_erp_acct_financial_years` (`id`, `name`, `start_date`, `end_date`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, '2023', '2023-01-01', '2023-12-31', NULL, '2023-11-05', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_invoices`
--

CREATE TABLE `wp_erp_acct_invoices` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `discount` decimal(20,2) DEFAULT 0.00,
  `discount_type` varchar(255) DEFAULT NULL,
  `shipping` decimal(20,2) DEFAULT 0.00,
  `shipping_tax` decimal(20,2) DEFAULT 0.00,
  `tax` decimal(20,2) DEFAULT 0.00,
  `tax_zone_id` int(11) DEFAULT NULL,
  `estimate` tinyint(1) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `additional_notes` text DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_invoice_account_details`
--

CREATE TABLE `wp_erp_acct_invoice_account_details` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_invoice_details`
--

CREATE TABLE `wp_erp_acct_invoice_details` (
  `id` int(11) NOT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `unit_price` decimal(20,2) DEFAULT 0.00,
  `discount` decimal(20,2) DEFAULT 0.00,
  `shipping` decimal(20,2) DEFAULT 0.00,
  `tax` decimal(20,2) DEFAULT 0.00,
  `tax_cat_id` int(11) DEFAULT NULL,
  `item_total` decimal(20,2) DEFAULT 0.00,
  `ecommerce_type` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_invoice_details_tax`
--

CREATE TABLE `wp_erp_acct_invoice_details_tax` (
  `id` int(11) NOT NULL,
  `invoice_details_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `tax_rate` decimal(20,2) DEFAULT 0.00,
  `tax_amount` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_invoice_receipts`
--

CREATE TABLE `wp_erp_acct_invoice_receipts` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `transaction_charge` decimal(20,2) DEFAULT 0.00,
  `ref` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `trn_by` varchar(255) DEFAULT NULL,
  `trn_by_ledger_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_invoice_receipts_details`
--

CREATE TABLE `wp_erp_acct_invoice_receipts_details` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `invoice_no` int(11) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_journals`
--

CREATE TABLE `wp_erp_acct_journals` (
  `id` int(11) NOT NULL,
  `trn_date` date DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `voucher_amount` decimal(20,2) DEFAULT 0.00,
  `particulars` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_journal_details`
--

CREATE TABLE `wp_erp_acct_journal_details` (
  `id` int(11) NOT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_ledgers`
--

CREATE TABLE `wp_erp_acct_ledgers` (
  `id` int(11) NOT NULL,
  `chart_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `unused` tinyint(1) DEFAULT NULL,
  `system` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_acct_ledgers`
--

INSERT INTO `wp_erp_acct_ledgers` (`id`, `chart_id`, `category_id`, `name`, `slug`, `code`, `unused`, `system`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 1, NULL, 'Accounts Receivable', 'accounts_receivable', 120, 1, 1, NULL, NULL, NULL, NULL),
(2, 1, NULL, 'Accounts Receivable', 'accounts_receivable', 120, 1, 1, NULL, NULL, NULL, NULL),
(3, 1, NULL, 'Inventory', 'inventory', 140, NULL, 1, NULL, NULL, NULL, NULL),
(4, 1, NULL, 'Inventory', 'inventory', 140, NULL, 1, NULL, NULL, NULL, NULL),
(5, 1, NULL, 'Office Equipment', 'office_equipment', 150, NULL, 1, NULL, NULL, NULL, NULL),
(6, 1, NULL, 'Office Equipment', 'office_equipment', 150, NULL, 1, NULL, NULL, NULL, NULL),
(7, 1, NULL, 'Less Accumulated Depreciation on Office Equipment', 'less_accumulated_depreciation_on_office_equipment', 151, NULL, 1, NULL, NULL, NULL, NULL),
(8, 1, NULL, 'Less Accumulated Depreciation on Office Equipment', 'less_accumulated_depreciation_on_office_equipment', 151, NULL, 1, NULL, NULL, NULL, NULL),
(9, 1, NULL, 'Computer Equipment', 'computer_equipment', 160, NULL, 1, NULL, NULL, NULL, NULL),
(10, 1, NULL, 'Computer Equipment', 'computer_equipment', 160, NULL, 1, NULL, NULL, NULL, NULL),
(11, 1, NULL, 'Less Accumulated Depreciation on Computer Equipment', 'less_accumulated_depreciation_on_computer_equipment', 161, NULL, 1, NULL, NULL, NULL, NULL),
(12, 1, NULL, 'Less Accumulated Depreciation on Computer Equipment', 'less_accumulated_depreciation_on_computer_equipment', 161, NULL, 1, NULL, NULL, NULL, NULL),
(13, 1, NULL, 'Cash', 'cash', 90, NULL, 0, NULL, NULL, NULL, NULL),
(14, 1, NULL, 'Cash', 'cash', 90, NULL, 0, NULL, NULL, NULL, NULL),
(15, 2, NULL, 'Accounts Payable', 'accounts_payable', 200, 1, 1, NULL, NULL, NULL, NULL),
(16, 2, NULL, 'Accounts Payable', 'accounts_payable', 200, 1, 1, NULL, NULL, NULL, NULL),
(17, 2, NULL, 'Accruals', 'accruals', 205, NULL, 0, NULL, NULL, NULL, NULL),
(18, 2, NULL, 'Accruals', 'accruals', 205, NULL, 0, NULL, NULL, NULL, NULL),
(19, 2, NULL, 'Unpaid Expense Claims', 'unpaid_expense_claims', 210, NULL, 1, NULL, NULL, NULL, NULL),
(20, 2, NULL, 'Unpaid Expense Claims', 'unpaid_expense_claims', 210, NULL, 1, NULL, NULL, NULL, NULL),
(21, 2, NULL, 'Wages Payable', 'wages_payable', 215, NULL, 1, NULL, NULL, NULL, NULL),
(22, 2, NULL, 'Wages Payable', 'wages_payable', 215, NULL, 1, NULL, NULL, NULL, NULL),
(23, 2, NULL, 'Wages Payable - Payroll', 'wages_payable_payroll', 216, NULL, 0, NULL, NULL, NULL, NULL),
(24, 2, NULL, 'Wages Payable - Payroll', 'wages_payable_payroll', 216, NULL, 0, NULL, NULL, NULL, NULL),
(25, 2, NULL, 'Sales Tax', 'sales_tax', 220, NULL, 1, NULL, NULL, NULL, NULL),
(26, 2, NULL, 'Sales Tax', 'sales_tax', 220, NULL, 1, NULL, NULL, NULL, NULL),
(27, 2, NULL, 'Employee Tax Payable', 'employee_tax_payable', 230, NULL, 0, NULL, NULL, NULL, NULL),
(28, 2, NULL, 'Employee Tax Payable', 'employee_tax_payable', 230, NULL, 0, NULL, NULL, NULL, NULL),
(29, 2, NULL, 'Employee Benefits Payable', 'employee_benefits_payable', 235, NULL, 0, NULL, NULL, NULL, NULL),
(30, 2, NULL, 'Employee Benefits Payable', 'employee_benefits_payable', 235, NULL, 0, NULL, NULL, NULL, NULL),
(31, 2, NULL, 'Employee Deductions payable', 'employee_deductions_payable', 236, NULL, 0, NULL, NULL, NULL, NULL),
(32, 2, NULL, 'Employee Deductions payable', 'employee_deductions_payable', 236, NULL, 0, NULL, NULL, NULL, NULL),
(33, 2, NULL, 'Income Tax Payable', 'income_tax_payable', 240, NULL, 0, NULL, NULL, NULL, NULL),
(34, 2, NULL, 'Income Tax Payable', 'income_tax_payable', 240, NULL, 0, NULL, NULL, NULL, NULL),
(35, 2, NULL, 'Suspense', 'suspense', 250, NULL, 0, NULL, NULL, NULL, NULL),
(36, 2, NULL, 'Suspense', 'suspense', 250, NULL, 0, NULL, NULL, NULL, NULL),
(37, 2, NULL, 'Historical Adjustments', 'historical_adjustments', 255, NULL, 1, NULL, NULL, NULL, NULL),
(38, 2, NULL, 'Historical Adjustments', 'historical_adjustments', 255, NULL, 1, NULL, NULL, NULL, NULL),
(39, 2, NULL, 'Rounding', 'rounding', 260, NULL, 1, NULL, NULL, NULL, NULL),
(40, 2, NULL, 'Rounding', 'rounding', 260, NULL, 1, NULL, NULL, NULL, NULL),
(41, 2, NULL, 'Revenue Received in Advance', 'revenue_received_in_advance', 835, NULL, 0, NULL, NULL, NULL, NULL),
(42, 2, NULL, 'Revenue Received in Advance', 'revenue_received_in_advance', 835, NULL, 0, NULL, NULL, NULL, NULL),
(43, 2, NULL, 'Clearing Account', 'clearing_account', 855, NULL, 0, NULL, NULL, NULL, NULL),
(44, 2, NULL, 'Clearing Account', 'clearing_account', 855, NULL, 0, NULL, NULL, NULL, NULL),
(45, 2, NULL, 'Loan', 'loan', 290, NULL, 0, NULL, NULL, NULL, NULL),
(46, 2, NULL, 'Loan', 'loan', 290, NULL, 0, NULL, NULL, NULL, NULL),
(47, 5, NULL, 'Costs of Goods Sold', 'costs_of_goods_sold', 500, NULL, 1, NULL, NULL, NULL, NULL),
(48, 5, NULL, 'Costs of Goods Sold', 'costs_of_goods_sold', 500, NULL, 1, NULL, NULL, NULL, NULL),
(49, 5, NULL, 'Advertising', 'advertising', 600, NULL, 0, NULL, NULL, NULL, NULL),
(50, 5, NULL, 'Advertising', 'advertising', 600, NULL, 0, NULL, NULL, NULL, NULL),
(51, 5, NULL, 'Bank Service Charges', 'bank_service_charges', 605, NULL, 0, NULL, NULL, NULL, NULL),
(52, 5, NULL, 'Bank Service Charges', 'bank_service_charges', 605, NULL, 0, NULL, NULL, NULL, NULL),
(53, 5, NULL, 'Bank Transaction Charge', 'bank_transaction_charge', 606, NULL, 0, NULL, NULL, NULL, NULL),
(54, 5, NULL, 'Bank Transaction Charge', 'bank_transaction_charge', 606, NULL, 0, NULL, NULL, NULL, NULL),
(55, 5, NULL, 'Sales Return', 'sales_return', 607, NULL, 0, NULL, NULL, NULL, NULL),
(56, 5, NULL, 'Sales Return', 'sales_return', 607, NULL, 0, NULL, NULL, NULL, NULL),
(57, 5, NULL, 'Janitorial Expenses', 'janitorial_expenses', 610, NULL, 0, NULL, NULL, NULL, NULL),
(58, 5, NULL, 'Janitorial Expenses', 'janitorial_expenses', 610, NULL, 0, NULL, NULL, NULL, NULL),
(59, 5, NULL, 'Consulting & Accounting', 'consulting_accounting', 615, NULL, 0, NULL, NULL, NULL, NULL),
(60, 5, NULL, 'Consulting & Accounting', 'consulting_accounting', 615, NULL, 0, NULL, NULL, NULL, NULL),
(61, 5, NULL, 'Entertainment', 'entertainment', 620, NULL, 0, NULL, NULL, NULL, NULL),
(62, 5, NULL, 'Entertainment', 'entertainment', 620, NULL, 0, NULL, NULL, NULL, NULL),
(63, 5, NULL, 'Postage & Delivary', 'postage_delivary', 624, NULL, 0, NULL, NULL, NULL, NULL),
(64, 5, NULL, 'Postage & Delivary', 'postage_delivary', 624, NULL, 0, NULL, NULL, NULL, NULL),
(65, 5, NULL, 'General Expenses', 'general_expenses', 628, NULL, 0, NULL, NULL, NULL, NULL),
(66, 5, NULL, 'General Expenses', 'general_expenses', 628, NULL, 0, NULL, NULL, NULL, NULL),
(67, 5, NULL, 'Insurance', 'insurance', 632, NULL, 0, NULL, NULL, NULL, NULL),
(68, 5, NULL, 'Insurance', 'insurance', 632, NULL, 0, NULL, NULL, NULL, NULL),
(69, 5, NULL, 'Legal Expenses', 'legal_expenses', 636, NULL, 0, NULL, NULL, NULL, NULL),
(70, 5, NULL, 'Legal Expenses', 'legal_expenses', 636, NULL, 0, NULL, NULL, NULL, NULL),
(71, 5, NULL, 'Utilities', 'utilities', 640, NULL, 1, NULL, NULL, NULL, NULL),
(72, 5, NULL, 'Utilities', 'utilities', 640, NULL, 1, NULL, NULL, NULL, NULL),
(73, 5, NULL, 'Automobile Expenses', 'automobile_expenses', 644, NULL, 0, NULL, NULL, NULL, NULL),
(74, 5, NULL, 'Automobile Expenses', 'automobile_expenses', 644, NULL, 0, NULL, NULL, NULL, NULL),
(75, 5, NULL, 'Office Expenses', 'office_expenses', 648, NULL, 1, NULL, NULL, NULL, NULL),
(76, 5, NULL, 'Office Expenses', 'office_expenses', 648, NULL, 1, NULL, NULL, NULL, NULL),
(77, 5, NULL, 'Printing & Stationary', 'printing_stationary', 652, NULL, 0, NULL, NULL, NULL, NULL),
(78, 5, NULL, 'Printing & Stationary', 'printing_stationary', 652, NULL, 0, NULL, NULL, NULL, NULL),
(79, 5, NULL, 'Rent', 'rent', 656, NULL, 1, NULL, NULL, NULL, NULL),
(80, 5, NULL, 'Rent', 'rent', 656, NULL, 1, NULL, NULL, NULL, NULL),
(81, 5, NULL, 'Repairs & Maintenance', 'repairs_maintenance', 660, NULL, 0, NULL, NULL, NULL, NULL),
(82, 5, NULL, 'Repairs & Maintenance', 'repairs_maintenance', 660, NULL, 0, NULL, NULL, NULL, NULL),
(83, 5, NULL, 'Wages & Salaries', 'wages_salaries', 664, NULL, 0, NULL, NULL, NULL, NULL),
(84, 5, NULL, 'Wages & Salaries', 'wages_salaries', 664, NULL, 0, NULL, NULL, NULL, NULL),
(85, 5, NULL, 'Payroll Tax Expense', 'payroll_tax_expense', 668, NULL, 0, NULL, NULL, NULL, NULL),
(86, 5, NULL, 'Payroll Tax Expense', 'payroll_tax_expense', 668, NULL, 0, NULL, NULL, NULL, NULL),
(87, 5, NULL, 'Dues & Subscriptions', 'dues_subscriptions', 672, NULL, 0, NULL, NULL, NULL, NULL),
(88, 5, NULL, 'Dues & Subscriptions', 'dues_subscriptions', 672, NULL, 0, NULL, NULL, NULL, NULL),
(89, 5, NULL, 'Telephone & Internet', 'telephone_internet', 676, NULL, 0, NULL, NULL, NULL, NULL),
(90, 5, NULL, 'Telephone & Internet', 'telephone_internet', 676, NULL, 0, NULL, NULL, NULL, NULL),
(91, 5, NULL, 'Travel', 'travel', 680, NULL, 0, NULL, NULL, NULL, NULL),
(92, 5, NULL, 'Travel', 'travel', 680, NULL, 0, NULL, NULL, NULL, NULL),
(93, 5, NULL, 'Bad Debts', 'bad_debts', 684, NULL, 0, NULL, NULL, NULL, NULL),
(94, 5, NULL, 'Bad Debts', 'bad_debts', 684, NULL, 0, NULL, NULL, NULL, NULL),
(95, 5, NULL, 'Depreciation', 'depreciation', 700, NULL, 1, NULL, NULL, NULL, NULL),
(96, 5, NULL, 'Depreciation', 'depreciation', 700, NULL, 1, NULL, NULL, NULL, NULL),
(97, 5, NULL, 'Income Tax Expense', 'income_tax_expense', 710, NULL, 0, NULL, NULL, NULL, NULL),
(98, 5, NULL, 'Income Tax Expense', 'income_tax_expense', 710, NULL, 0, NULL, NULL, NULL, NULL),
(99, 5, NULL, 'Employee Benefits Expense', 'employee_benefits_expense', 715, NULL, 0, NULL, NULL, NULL, NULL),
(100, 5, NULL, 'Employee Benefits Expense', 'employee_benefits_expense', 715, NULL, 0, NULL, NULL, NULL, NULL),
(101, 5, NULL, 'Interest Expense', 'interest_expense', 800, NULL, 0, NULL, NULL, NULL, NULL),
(102, 5, NULL, 'Interest Expense', 'interest_expense', 800, NULL, 0, NULL, NULL, NULL, NULL),
(103, 5, NULL, 'Bank Revaluations', 'bank_revaluations', 810, NULL, 1, NULL, NULL, NULL, NULL),
(104, 5, NULL, 'Bank Revaluations', 'bank_revaluations', 810, NULL, 1, NULL, NULL, NULL, NULL),
(105, 5, NULL, 'Unrealized Currency Gains', 'unrealized_currency_gains', 815, NULL, 1, NULL, NULL, NULL, NULL),
(106, 5, NULL, 'Unrealized Currency Gains', 'unrealized_currency_gains', 815, NULL, 1, NULL, NULL, NULL, NULL),
(107, 5, NULL, 'Realized Currency Gains', 'realized_currency_gains', 820, NULL, 1, NULL, NULL, NULL, NULL),
(108, 5, NULL, 'Realized Currency Gains', 'realized_currency_gains', 820, NULL, 1, NULL, NULL, NULL, NULL),
(109, 5, NULL, 'Sales Discount', 'sales_discount', 825, NULL, 1, NULL, NULL, NULL, NULL),
(110, 5, NULL, 'Sales Discount', 'sales_discount', 825, NULL, 1, NULL, NULL, NULL, NULL),
(111, 4, NULL, 'Sales', 'sales', 400, NULL, 0, NULL, NULL, NULL, NULL),
(112, 4, NULL, 'Sales', 'sales', 400, NULL, 0, NULL, NULL, NULL, NULL),
(113, 4, NULL, 'Interest Income', 'interest_income', 460, NULL, 0, NULL, NULL, NULL, NULL),
(114, 4, NULL, 'Interest Income', 'interest_income', 460, NULL, 0, NULL, NULL, NULL, NULL),
(115, 4, NULL, 'Other Revenue', 'other_revenue', 470, NULL, 0, NULL, NULL, NULL, NULL),
(116, 4, NULL, 'Other Revenue', 'other_revenue', 470, NULL, 0, NULL, NULL, NULL, NULL),
(117, 4, NULL, 'Purchase Discount', 'purchase_discount', 475, NULL, 1, NULL, NULL, NULL, NULL),
(118, 4, NULL, 'Purchase Discount', 'purchase_discount', 475, NULL, 1, NULL, NULL, NULL, NULL),
(119, 3, NULL, 'Owners Contribution', 'owners_contribution', 300, NULL, 0, NULL, NULL, NULL, NULL),
(120, 3, NULL, 'Owners Contribution', 'owners_contribution', 300, NULL, 0, NULL, NULL, NULL, NULL),
(121, 3, NULL, 'Owners Draw', 'owners_draw', 310, NULL, 0, NULL, NULL, NULL, NULL),
(122, 3, NULL, 'Owners Draw', 'owners_draw', 310, NULL, 0, NULL, NULL, NULL, NULL),
(123, 3, NULL, 'Retained Earnings', 'retained_earnings', 320, NULL, 1, NULL, NULL, NULL, NULL),
(124, 3, NULL, 'Retained Earnings', 'retained_earnings', 320, NULL, 1, NULL, NULL, NULL, NULL),
(125, 3, NULL, 'Common Stock', 'common_stock', 330, NULL, 0, NULL, NULL, NULL, NULL),
(126, 3, NULL, 'Common Stock', 'common_stock', 330, NULL, 0, NULL, NULL, NULL, NULL),
(127, 1, NULL, 'Savings Account', 'savings_account', 92, NULL, 0, NULL, NULL, NULL, NULL),
(128, 1, NULL, 'Savings Account', 'savings_account', 92, NULL, 0, NULL, NULL, NULL, NULL),
(129, 2, NULL, 'Shipment Tax', 'shipment_tax', 221, NULL, 1, NULL, NULL, NULL, NULL),
(130, 2, NULL, 'Shipment Tax', 'shipment_tax', 221, NULL, 1, NULL, NULL, NULL, NULL),
(131, 1, NULL, 'Allowance for Doubtful Accounts', 'allowance_for_doubtful_accounts', 1001, NULL, 1, NULL, NULL, NULL, NULL),
(132, 1, NULL, 'Allowance for Doubtful Accounts', 'allowance_for_doubtful_accounts', 1001, NULL, 1, NULL, NULL, NULL, NULL),
(133, 1, NULL, 'Interest Receivable', 'interest_receivable', 1002, NULL, 1, NULL, NULL, NULL, NULL),
(134, 1, NULL, 'Interest Receivable', 'interest_receivable', 1002, NULL, 1, NULL, NULL, NULL, NULL),
(135, 1, NULL, 'Supplies', 'supplies', 1003, NULL, 1, NULL, NULL, NULL, NULL),
(136, 1, NULL, 'Prepaid Insurance', 'prepaid_insurance', 1004, NULL, 1, NULL, NULL, NULL, NULL),
(137, 1, NULL, 'Supplies', 'supplies', 1003, NULL, 1, NULL, NULL, NULL, NULL),
(138, 1, NULL, 'Prepaid Rent', 'prepaid_rent', 1005, NULL, 1, NULL, NULL, NULL, NULL),
(139, 1, NULL, 'Prepaid Insurance', 'prepaid_insurance', 1004, NULL, 1, NULL, NULL, NULL, NULL),
(140, 1, NULL, 'Prepaid Salary', 'prepaid_salary', 1006, NULL, 1, NULL, NULL, NULL, NULL),
(141, 1, NULL, 'Prepaid Rent', 'prepaid_rent', 1005, NULL, 1, NULL, NULL, NULL, NULL),
(142, 1, NULL, 'Land', 'land', 1007, NULL, 1, NULL, NULL, NULL, NULL),
(143, 1, NULL, 'Furniture & Fixture', 'furniture_fixture', 1008, NULL, 1, NULL, NULL, NULL, NULL),
(144, 1, NULL, 'Prepaid Salary', 'prepaid_salary', 1006, NULL, 1, NULL, NULL, NULL, NULL),
(145, 1, NULL, 'Buildings', 'buildings', 1009, NULL, 1, NULL, NULL, NULL, NULL),
(146, 1, NULL, 'Land', 'land', 1007, NULL, 1, NULL, NULL, NULL, NULL),
(147, 1, NULL, 'Copyrights', 'copyrights', 1010, NULL, 1, NULL, NULL, NULL, NULL),
(148, 1, NULL, 'Furniture & Fixture', 'furniture_fixture', 1008, NULL, 1, NULL, NULL, NULL, NULL),
(149, 1, NULL, 'Goodwill', 'goodwill', 1011, NULL, 1, NULL, NULL, NULL, NULL),
(150, 1, NULL, 'Buildings', 'buildings', 1009, NULL, 1, NULL, NULL, NULL, NULL),
(151, 1, NULL, 'Patents', 'patents', 1012, NULL, 1, NULL, NULL, NULL, NULL),
(152, 1, NULL, 'Copyrights', 'copyrights', 1010, NULL, 1, NULL, NULL, NULL, NULL),
(153, 1, NULL, 'Accoumulated Depreciation- Buildings', 'accoumulated_depreciation_buildings', 1013, NULL, 1, NULL, NULL, NULL, NULL),
(154, 1, NULL, 'Goodwill', 'goodwill', 1011, NULL, 1, NULL, NULL, NULL, NULL),
(155, 1, NULL, 'Accoumulated Depreciation- Furniture & Fixtures', 'accoumulated_depreciation_furniture_fixtures', 1014, NULL, 1, NULL, NULL, NULL, NULL),
(156, 1, NULL, 'Patents', 'patents', 1012, NULL, 1, NULL, NULL, NULL, NULL),
(157, 2, NULL, 'Notes Payable', 'notes_payable', 1201, NULL, 1, NULL, NULL, NULL, NULL),
(158, 1, NULL, 'Accoumulated Depreciation- Buildings', 'accoumulated_depreciation_buildings', 1013, NULL, 1, NULL, NULL, NULL, NULL),
(159, 2, NULL, 'Salaries and Wages Payable', 'salaries_and_wages_payable', 1202, NULL, 1, NULL, NULL, NULL, NULL),
(160, 1, NULL, 'Accoumulated Depreciation- Furniture & Fixtures', 'accoumulated_depreciation_furniture_fixtures', 1014, NULL, 1, NULL, NULL, NULL, NULL),
(161, 2, NULL, 'Unearned Rent Revenue', 'unearned_rent_revenue', 1203, NULL, 1, NULL, NULL, NULL, NULL),
(162, 2, NULL, 'Notes Payable', 'notes_payable', 1201, NULL, 1, NULL, NULL, NULL, NULL),
(163, 2, NULL, 'Interest Payable', 'interest_payable', 1204, NULL, 1, NULL, NULL, NULL, NULL),
(164, 2, NULL, 'Salaries and Wages Payable', 'salaries_and_wages_payable', 1202, NULL, 1, NULL, NULL, NULL, NULL),
(165, 2, NULL, 'Dividends Payable', 'dividends_payable', 1205, NULL, 1, NULL, NULL, NULL, NULL),
(166, 2, NULL, 'Unearned Rent Revenue', 'unearned_rent_revenue', 1203, NULL, 1, NULL, NULL, NULL, NULL),
(167, 2, NULL, 'Bonds Payable', 'bonds_payable', 1206, NULL, 1, NULL, NULL, NULL, NULL),
(168, 2, NULL, 'Interest Payable', 'interest_payable', 1204, NULL, 1, NULL, NULL, NULL, NULL),
(169, 2, NULL, 'Discount on Bonds Payable', 'discount_on_bonds_payable', 1207, NULL, 1, NULL, NULL, NULL, NULL),
(170, 2, NULL, 'Dividends Payable', 'dividends_payable', 1205, NULL, 1, NULL, NULL, NULL, NULL),
(171, 2, NULL, 'Premium on Bonds Payable', 'premium_on_bonds_payable', 1208, NULL, 1, NULL, NULL, NULL, NULL),
(172, 2, NULL, 'Bonds Payable', 'bonds_payable', 1206, NULL, 1, NULL, NULL, NULL, NULL),
(173, 2, NULL, 'Mortgage Payable', 'mortgage_payable', 1209, NULL, 1, NULL, NULL, NULL, NULL),
(174, 2, NULL, 'Discount on Bonds Payable', 'discount_on_bonds_payable', 1207, NULL, 1, NULL, NULL, NULL, NULL),
(175, 3, NULL, 'Owner\'s Equity', 'owner_s_equity', 1301, NULL, 1, NULL, NULL, NULL, NULL),
(176, 2, NULL, 'Premium on Bonds Payable', 'premium_on_bonds_payable', 1208, NULL, 1, NULL, NULL, NULL, NULL),
(177, 3, NULL, 'Paid-in Capital in Excess of Par- Common Stock', 'paid_in_capital_in_excess_of_par_common_stock', 1302, NULL, 1, NULL, NULL, NULL, NULL),
(178, 2, NULL, 'Mortgage Payable', 'mortgage_payable', 1209, NULL, 1, NULL, NULL, NULL, NULL),
(179, 3, NULL, 'Paid-in Capital in Excess of Par- Preferred Stock', 'paid_in_capital_in_excess_of_par_preferred_stock', 1303, NULL, 1, NULL, NULL, NULL, NULL),
(180, 3, NULL, 'Owner\'s Equity', 'owner_s_equity', 1301, NULL, 1, NULL, NULL, NULL, NULL),
(181, 3, NULL, 'Preferred Stock', 'preferred_stock', 1304, NULL, 1, NULL, NULL, NULL, NULL),
(182, 3, NULL, 'Paid-in Capital in Excess of Par- Common Stock', 'paid_in_capital_in_excess_of_par_common_stock', 1302, NULL, 1, NULL, NULL, NULL, NULL),
(183, 3, NULL, 'Paid-in Capital in Excess of Par- Preferred Stock', 'paid_in_capital_in_excess_of_par_preferred_stock', 1303, NULL, 1, NULL, NULL, NULL, NULL),
(184, 3, NULL, 'Treasury Stock', 'treasury_stock', 1305, NULL, 1, NULL, NULL, NULL, NULL),
(185, 3, NULL, 'Preferred Stock', 'preferred_stock', 1304, NULL, 1, NULL, NULL, NULL, NULL),
(186, 3, NULL, 'Dividends', 'dividends', 1306, NULL, 1, NULL, NULL, NULL, NULL),
(187, 3, NULL, 'Treasury Stock', 'treasury_stock', 1305, NULL, 1, NULL, NULL, NULL, NULL),
(188, 3, NULL, 'Income Summary', 'income_summary', 1307, NULL, 1, NULL, NULL, NULL, NULL),
(189, 3, NULL, 'Dividends', 'dividends', 1306, NULL, 1, NULL, NULL, NULL, NULL),
(190, 4, NULL, 'Service Revenue', 'service_revenue', 1401, NULL, 1, NULL, NULL, NULL, NULL),
(191, 3, NULL, 'Income Summary', 'income_summary', 1307, NULL, 1, NULL, NULL, NULL, NULL),
(192, 4, NULL, 'Sales Revenue', 'sales_revenue', 1402, NULL, 1, NULL, NULL, NULL, NULL),
(193, 4, NULL, 'Service Revenue', 'service_revenue', 1401, NULL, 1, NULL, NULL, NULL, NULL),
(194, 4, NULL, 'Sales Revenue', 'sales_revenue', 1402, NULL, 1, NULL, NULL, NULL, NULL),
(195, 4, NULL, 'Shipment', 'shipment', 1411, NULL, 1, NULL, NULL, NULL, NULL),
(196, 4, NULL, 'Shipment', 'shipment', 1411, NULL, 1, NULL, NULL, NULL, NULL),
(197, 4, NULL, 'Gain on Disposal of Plant Assets', 'gain_on_disposal_of_plant_assets', 1404, NULL, 1, NULL, NULL, NULL, NULL),
(198, 4, NULL, 'Gain on Disposal of Plant Assets', 'gain_on_disposal_of_plant_assets', 1404, NULL, 1, NULL, NULL, NULL, NULL),
(199, 4, NULL, 'Asset Sales', 'asset_sales', 1405, NULL, 1, NULL, NULL, NULL, NULL),
(200, 4, NULL, 'Asset Sales', 'asset_sales', 1405, NULL, 1, NULL, NULL, NULL, NULL),
(201, 4, NULL, 'Sales Return Discount', 'sales_return_discount', 1406, NULL, 1, NULL, NULL, NULL, NULL),
(202, 4, NULL, 'Sales Return Discount', 'sales_return_discount', 1406, NULL, 1, NULL, NULL, NULL, NULL),
(203, 4, NULL, 'Sales Return Tax', 'sales_return_tax', 1407, NULL, 1, NULL, NULL, NULL, NULL),
(204, 4, NULL, 'Sales Return Tax', 'sales_return_tax', 1407, NULL, 1, NULL, NULL, NULL, NULL),
(205, 4, NULL, 'Purchase Return', 'purchase_return', 1408, NULL, 1, NULL, NULL, NULL, NULL),
(206, 4, NULL, 'Purchase Return', 'purchase_return', 1408, NULL, 1, NULL, NULL, NULL, NULL),
(207, 4, NULL, 'Purchase Return VAT', 'purchase_return_vat', 1409, NULL, 1, NULL, NULL, NULL, NULL),
(208, 4, NULL, 'Purchase Return VAT', 'purchase_return_vat', 1409, NULL, 1, NULL, NULL, NULL, NULL),
(209, 5, NULL, 'Amortization Expense', 'amortization_expense', 1501, NULL, 1, NULL, NULL, NULL, NULL),
(210, 5, NULL, 'Amortization Expense', 'amortization_expense', 1501, NULL, 1, NULL, NULL, NULL, NULL),
(211, 5, NULL, 'Freight-Out', 'freight_out', 1502, NULL, 1, NULL, NULL, NULL, NULL),
(212, 5, NULL, 'Freight-Out', 'freight_out', 1502, NULL, 1, NULL, NULL, NULL, NULL),
(213, 5, NULL, 'Insurance Expense', 'insurance_expense', 1503, NULL, 1, NULL, NULL, NULL, NULL),
(214, 5, NULL, 'Insurance Expense', 'insurance_expense', 1503, NULL, 1, NULL, NULL, NULL, NULL),
(215, 5, NULL, 'Loss on Disposal of Plant Assets', 'loss_on_disposal_of_plant_assets', 1504, NULL, 1, NULL, NULL, NULL, NULL),
(216, 5, NULL, 'Loss on Disposal of Plant Assets', 'loss_on_disposal_of_plant_assets', 1504, NULL, 1, NULL, NULL, NULL, NULL),
(217, 5, NULL, 'Maintenance and Repairs Expense', 'maintenance_and_repairs_expense', 1505, NULL, 1, NULL, NULL, NULL, NULL),
(218, 5, NULL, 'Maintenance and Repairs Expense', 'maintenance_and_repairs_expense', 1505, NULL, 1, NULL, NULL, NULL, NULL),
(219, 5, NULL, 'Purchase', 'purchase', 1506, NULL, 1, NULL, NULL, NULL, NULL),
(220, 5, NULL, 'Purchase', 'purchase', 1506, NULL, 1, NULL, NULL, NULL, NULL),
(221, 5, NULL, 'Asset Purchase', 'asset_purchase', 1507, NULL, 1, NULL, NULL, NULL, NULL),
(222, 5, NULL, 'Asset Purchase', 'asset_purchase', 1507, NULL, 1, NULL, NULL, NULL, NULL),
(223, 5, NULL, 'Purchase VAT', 'purchase_vat', 1509, NULL, 1, NULL, NULL, NULL, NULL),
(224, 5, NULL, 'Purchase VAT', 'purchase_vat', 1509, NULL, 1, NULL, NULL, NULL, NULL),
(225, 5, NULL, 'Sales Returns and Allowance', 'sales_returns_and_allowance', 1403, NULL, 1, NULL, NULL, NULL, NULL),
(226, 5, NULL, 'Sales Returns and Allowance', 'sales_returns_and_allowance', 1403, NULL, 1, NULL, NULL, NULL, NULL),
(227, 5, NULL, 'Purchase Return Discount', 'purchase_return_discount', 1410, NULL, 1, NULL, NULL, NULL, NULL),
(228, 5, NULL, 'Purchase Return Discount', 'purchase_return_discount', 1410, NULL, 1, NULL, NULL, NULL, NULL),
(229, 5, NULL, 'Bank Transaction Charge', 'bank_transaction_charge', 1508, NULL, 1, NULL, NULL, NULL, NULL),
(230, 5, NULL, 'Bank Transaction Charge', 'bank_transaction_charge', 1508, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_ledger_categories`
--

CREATE TABLE `wp_erp_acct_ledger_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `chart_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `system` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_acct_ledger_categories`
--

INSERT INTO `wp_erp_acct_ledger_categories` (`id`, `name`, `slug`, `chart_id`, `parent_id`, `system`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Current Asset', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Fixed Asset', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Inventory', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Non-current Asset', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Prepayment', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Bank & Cash', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Current Liability', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Liability', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Non-current Liability', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Depreciation', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Direct Costs', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Expense', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Revenue', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Sales', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Other Income', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Equity', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_ledger_details`
--

CREATE TABLE `wp_erp_acct_ledger_details` (
  `id` int(11) NOT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `trn_date` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_ledger_settings`
--

CREATE TABLE `wp_erp_acct_ledger_settings` (
  `id` int(11) NOT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `short_code` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_opening_balances`
--

CREATE TABLE `wp_erp_acct_opening_balances` (
  `id` int(11) NOT NULL,
  `financial_year_id` int(11) DEFAULT NULL,
  `chart_id` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_payment_methods`
--

CREATE TABLE `wp_erp_acct_payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_acct_payment_methods`
--

INSERT INTO `wp_erp_acct_payment_methods` (`id`, `name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Cash', NULL, NULL, NULL, NULL),
(2, 'Cash', NULL, NULL, NULL, NULL),
(3, 'Bank', NULL, NULL, NULL, NULL),
(4, 'Bank', NULL, NULL, NULL, NULL),
(5, 'Check', NULL, NULL, NULL, NULL),
(6, 'Check', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_pay_bill`
--

CREATE TABLE `wp_erp_acct_pay_bill` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `trn_by` varchar(255) DEFAULT NULL,
  `trn_by_ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_pay_bill_details`
--

CREATE TABLE `wp_erp_acct_pay_bill_details` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `bill_no` int(11) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_pay_purchase`
--

CREATE TABLE `wp_erp_acct_pay_purchase` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `trn_by` varchar(255) DEFAULT NULL,
  `transaction_charge` decimal(20,2) DEFAULT 0.00,
  `ref` varchar(255) DEFAULT NULL,
  `trn_by_ledger_id` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_pay_purchase_details`
--

CREATE TABLE `wp_erp_acct_pay_purchase_details` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `purchase_no` int(11) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `tax_cat_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_people_account_details`
--

CREATE TABLE `wp_erp_acct_people_account_details` (
  `id` int(11) NOT NULL,
  `people_id` varchar(255) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `trn_by` varchar(255) DEFAULT NULL,
  `voucher_type` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_people_trn`
--

CREATE TABLE `wp_erp_acct_people_trn` (
  `id` int(11) NOT NULL,
  `people_id` varchar(255) DEFAULT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `trn_date` date DEFAULT NULL,
  `trn_by` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `voucher_type` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_people_trn_details`
--

CREATE TABLE `wp_erp_acct_people_trn_details` (
  `id` int(11) NOT NULL,
  `people_id` varchar(255) DEFAULT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_products`
--

CREATE TABLE `wp_erp_acct_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `product_type_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tax_cat_id` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  `cost_price` decimal(20,2) DEFAULT 0.00,
  `sale_price` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_product_categories`
--

CREATE TABLE `wp_erp_acct_product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_product_details`
--

CREATE TABLE `wp_erp_acct_product_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `stock_in` int(11) DEFAULT NULL,
  `stock_out` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_product_types`
--

CREATE TABLE `wp_erp_acct_product_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_acct_product_types`
--

INSERT INTO `wp_erp_acct_product_types` (`id`, `name`, `slug`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Inventory', 'inventory', NULL, NULL, NULL, NULL),
(2, 'Service', 'service', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_purchase`
--

CREATE TABLE `wp_erp_acct_purchase` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `tax` decimal(20,2) DEFAULT NULL,
  `tax_zone_id` int(11) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `purchase_order` tinyint(1) DEFAULT NULL,
  `attachments` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_purchase_account_details`
--

CREATE TABLE `wp_erp_acct_purchase_account_details` (
  `id` int(11) NOT NULL,
  `purchase_no` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_purchase_details`
--

CREATE TABLE `wp_erp_acct_purchase_details` (
  `id` int(11) NOT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` decimal(10,2) DEFAULT NULL,
  `price` decimal(20,2) DEFAULT 0.00,
  `amount` decimal(20,2) DEFAULT 0.00,
  `tax` decimal(20,2) DEFAULT NULL,
  `tax_cat_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_purchase_details_tax`
--

CREATE TABLE `wp_erp_acct_purchase_details_tax` (
  `id` int(20) UNSIGNED NOT NULL,
  `invoice_details_id` int(20) NOT NULL,
  `agency_id` int(20) DEFAULT NULL,
  `tax_rate` decimal(20,2) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_synced_taxes`
--

CREATE TABLE `wp_erp_acct_synced_taxes` (
  `id` int(11) NOT NULL,
  `system_id` bigint(20) NOT NULL,
  `sync_id` bigint(20) DEFAULT NULL,
  `sync_slug` varchar(100) DEFAULT NULL,
  `sync_type` varchar(100) DEFAULT NULL,
  `sync_source` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_taxes`
--

CREATE TABLE `wp_erp_acct_taxes` (
  `id` int(11) NOT NULL,
  `tax_rate_name` varchar(255) DEFAULT NULL,
  `tax_number` varchar(100) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_tax_agencies`
--

CREATE TABLE `wp_erp_acct_tax_agencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ecommerce_type` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_tax_agency_details`
--

CREATE TABLE `wp_erp_acct_tax_agency_details` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `trn_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT 0.00,
  `credit` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_tax_categories`
--

CREATE TABLE `wp_erp_acct_tax_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_tax_cat_agency`
--

CREATE TABLE `wp_erp_acct_tax_cat_agency` (
  `id` int(11) NOT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `component_name` varchar(255) DEFAULT NULL,
  `tax_cat_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `tax_rate` decimal(20,2) DEFAULT 0.00,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_tax_pay`
--

CREATE TABLE `wp_erp_acct_tax_pay` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT 0.00,
  `voucher_type` varchar(255) DEFAULT NULL,
  `trn_by` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `ledger_id` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_transfer_voucher`
--

CREATE TABLE `wp_erp_acct_transfer_voucher` (
  `id` int(11) NOT NULL,
  `voucher_no` int(11) DEFAULT NULL,
  `trn_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `ac_from` int(11) DEFAULT NULL,
  `ac_to` int(11) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_trn_status_types`
--

CREATE TABLE `wp_erp_acct_trn_status_types` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_acct_trn_status_types`
--

INSERT INTO `wp_erp_acct_trn_status_types` (`id`, `type_name`, `slug`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Draft', 'draft', NULL, NULL, NULL, NULL),
(2, 'Draft', 'draft', NULL, NULL, NULL, NULL),
(3, 'Awaiting Payment', 'awaiting_payment', NULL, NULL, NULL, NULL),
(4, 'Awaiting Payment', 'awaiting_payment', NULL, NULL, NULL, NULL),
(5, 'Pending', 'pending', NULL, NULL, NULL, NULL),
(6, 'Pending', 'pending', NULL, NULL, NULL, NULL),
(7, 'Paid', 'paid', NULL, NULL, NULL, NULL),
(8, 'Paid', 'paid', NULL, NULL, NULL, NULL),
(9, 'Partially Paid', 'partially_paid', NULL, NULL, NULL, NULL),
(10, 'Partially Paid', 'partially_paid', NULL, NULL, NULL, NULL),
(11, 'Approved', 'approved', NULL, NULL, NULL, NULL),
(12, 'Approved', 'approved', NULL, NULL, NULL, NULL),
(13, 'Closed', 'closed', NULL, NULL, NULL, NULL),
(14, 'Closed', 'closed', NULL, NULL, NULL, NULL),
(15, 'Void', 'void', NULL, NULL, NULL, NULL),
(16, 'Void', 'void', NULL, NULL, NULL, NULL),
(17, 'Returned', 'returned', NULL, NULL, NULL, NULL),
(18, 'Returned', 'returned', NULL, NULL, NULL, NULL),
(19, 'Partially Returned', 'partially_returned', NULL, NULL, NULL, NULL),
(20, 'Partially Returned', 'partially_returned', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_acct_voucher_no`
--

CREATE TABLE `wp_erp_acct_voucher_no` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `editable` tinyint(4) DEFAULT 0,
  `created_at` date DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_audit_log`
--

CREATE TABLE `wp_erp_audit_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component` varchar(50) NOT NULL DEFAULT '',
  `sub_component` varchar(50) NOT NULL DEFAULT '',
  `data_id` bigint(20) DEFAULT NULL,
  `old_value` longtext DEFAULT NULL,
  `new_value` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `changetype` varchar(10) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_audit_log`
--

INSERT INTO `wp_erp_audit_log` (`id`, `component`, `sub_component`, `data_id`, `old_value`, `new_value`, `message`, `changetype`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'HRM', 'department', NULL, 'YToxOntzOjU6InRpdGxlIjtzOjIyOiJFbmdpbmVlcmluZyBEZXBhcnRtZW50Ijt9', 'YToxOntzOjU6InRpdGxlIjtzOjEzOiJJVCBEZXBhcnRtZW50Ijt9', '<strong>Engineering Department</strong> department has been edited', 'edit', 1, '2023-11-05 22:31:51', NULL),
(2, 'HRM', 'department', NULL, '', '', '<strong>Nurse departement</strong> department has been created', 'add', 1, '2023-11-05 22:32:52', NULL),
(3, 'HRM', 'department', NULL, '', '', '<strong>Doctor Departement</strong> department has been created', 'add', 1, '2023-11-05 22:33:26', NULL),
(4, 'HRM', 'department', NULL, 'YToxOntzOjE3OiJwYXJlbnRfZGVwYXJ0bWVudCI7czoyMToiUHJvZHVjdGlvbiBEZXBhcnRtZW50Ijt9', 'YToxOntzOjE3OiJwYXJlbnRfZGVwYXJ0bWVudCI7Tjt9', '<strong>Nurse departement</strong> department has been edited', 'edit', 1, '2023-11-05 22:33:56', NULL),
(5, 'HRM', 'employee', NULL, '', '', '<strong>ALICE</strong> employee has been created', 'add', 1, '2023-11-05 22:38:40', NULL),
(6, 'HRM', 'designation', NULL, '', '', '<strong>Doctor</strong> designation has been created', 'add', 1, '2023-11-05 22:53:55', NULL),
(7, 'HRM', 'employee', NULL, '', '', '<strong>MAURICE</strong> employee has been created', 'add', 1, '2023-11-05 22:56:38', NULL),
(8, 'HRM', 'employee', NULL, '', '', '<strong>JASON</strong> employee has been created', 'add', 1, '2023-11-05 23:09:54', NULL),
(9, 'HRM', 'employee', NULL, '', '', '<strong>ALICE BENGA</strong> employee has been deleted', 'delete', 1, '2023-11-05 23:13:07', NULL),
(10, 'HRM', 'designation', NULL, '', '', '<strong>Nurse</strong> designation has been created', 'add', 1, '2023-11-05 23:13:39', NULL),
(11, 'HRM', 'employee', NULL, '', '', '<strong>ALICE</strong> employee has been created', 'add', 1, '2023-11-05 23:16:59', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_company_locations`
--

CREATE TABLE `wp_erp_company_locations` (
  `id` int(11) UNSIGNED NOT NULL,
  `company_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` int(6) DEFAULT NULL,
  `country` varchar(5) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_crm_activities_task`
--

CREATE TABLE `wp_erp_crm_activities_task` (
  `id` int(11) UNSIGNED NOT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_crm_contact_group`
--

CREATE TABLE `wp_erp_crm_contact_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `private` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_crm_contact_subscriber`
--

CREATE TABLE `wp_erp_crm_contact_subscriber` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `subscribe_at` datetime DEFAULT NULL,
  `unsubscribe_at` datetime DEFAULT NULL,
  `hash` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_crm_customer_activities`
--

CREATE TABLE `wp_erp_crm_customer_activities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `email_subject` text DEFAULT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `extra` longtext DEFAULT NULL,
  `sent_notification` tinyint(4) DEFAULT 0,
  `done_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_crm_customer_companies`
--

CREATE TABLE `wp_erp_crm_customer_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_crm_save_email_replies`
--

CREATE TABLE `wp_erp_crm_save_email_replies` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `template` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_crm_save_search`
--

CREATE TABLE `wp_erp_crm_save_search` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `global` tinyint(4) DEFAULT 0,
  `search_name` text DEFAULT NULL,
  `search_val` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_holidays_indv`
--

CREATE TABLE `wp_erp_holidays_indv` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holiday_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_announcement`
--

CREATE TABLE `wp_erp_hr_announcement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `email_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_dependents`
--

CREATE TABLE `wp_erp_hr_dependents` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `relation` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_depts`
--

CREATE TABLE `wp_erp_hr_depts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `lead` int(11) UNSIGNED DEFAULT 0,
  `parent` int(11) UNSIGNED DEFAULT 0,
  `status` tinyint(1) UNSIGNED DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_hr_depts`
--

INSERT INTO `wp_erp_hr_depts` (`id`, `title`, `description`, `lead`, `parent`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General Management', NULL, 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(2, 'Operations Department', NULL, 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(3, 'Finance Department', NULL, 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(4, 'Sales Department', NULL, 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(5, 'Human Resource Department', NULL, 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(6, 'Purchase Department', NULL, 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(7, 'IT Department', '', 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 22:31:51'),
(8, 'Production Department', NULL, 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(9, 'Procurement Department', NULL, 0, 0, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(10, 'Nurse departement', '', 0, 0, 1, '2023-11-05 22:32:52', '2023-11-05 22:33:57'),
(11, 'Doctor Departement', '', 0, 0, 1, '2023-11-05 22:33:26', '2023-11-05 22:33:26');

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_designations`
--

CREATE TABLE `wp_erp_hr_designations` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_hr_designations`
--

INSERT INTO `wp_erp_hr_designations` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'President', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(2, 'Vice President', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(3, 'CEO', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(4, 'Managing Director', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(5, 'Product Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(6, 'Project Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(7, 'Program Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(8, 'Operations Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(9, 'Marketing Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(10, 'Business Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(11, 'Technology Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(12, 'Finance/Accounts Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(13, 'Human Resource Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(14, 'Hiring Manager', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(15, 'Senior Engineer', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(16, 'Engineer', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(17, 'Junior Engineer', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(18, 'Business Executive', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(19, 'Marketing Executive', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(20, 'Customer Support Executive', NULL, 1, '2023-11-05 00:00:00', '2023-11-05 00:00:00'),
(21, 'Doctor', '', 1, '2023-11-05 22:53:55', '2023-11-05 22:53:55'),
(22, 'Nurse', '', 1, '2023-11-05 23:13:39', '2023-11-05 23:13:39');

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_education`
--

CREATE TABLE `wp_erp_hr_education` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` int(11) UNSIGNED DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `degree` varchar(100) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `result_type` enum('grade','percentage') DEFAULT NULL,
  `finished` int(4) UNSIGNED DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `interest` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_employees`
--

CREATE TABLE `wp_erp_hr_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `employee_id` varchar(20) DEFAULT NULL,
  `designation` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `department` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `location` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hiring_source` varchar(20) NOT NULL,
  `hiring_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `date_of_birth` date NOT NULL,
  `reporting_to` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `pay_rate` decimal(20,2) UNSIGNED NOT NULL DEFAULT 0.00,
  `pay_type` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_hr_employees`
--

INSERT INTO `wp_erp_hr_employees` (`id`, `user_id`, `employee_id`, `designation`, `department`, `location`, `hiring_source`, `hiring_date`, `termination_date`, `date_of_birth`, `reporting_to`, `pay_rate`, `pay_type`, `type`, `status`, `deleted_at`) VALUES
(1, 2, '4701', 0, 0, 0, 'direct', '2027-12-31', '0000-00-00', '1990-03-09', 0, 0.00, '-1', 'permanent', 'active', '2023-11-05 22:13:07'),
(2, 3, '4702', 21, 11, 0, '-1', '2028-08-31', '0000-00-00', '1985-02-21', 0, 0.00, '-1', 'permanent', 'active', NULL),
(3, 4, '4703', 16, 7, 0, 'direct', '2123-12-31', '0000-00-00', '0000-00-00', 0, 0.00, 'biweekly', 'permanent', 'active', NULL),
(4, 5, '4701', 22, 10, 0, 'direct', '2027-12-31', '0000-00-00', '1990-03-09', 0, 0.00, 'biweekly', 'permanent', 'active', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_employee_history`
--

CREATE TABLE `wp_erp_hr_employee_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `module` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_hr_employee_history`
--

INSERT INTO `wp_erp_hr_employee_history` (`id`, `user_id`, `module`, `category`, `type`, `comment`, `data`, `date`) VALUES
(1, 2, 'employee', 'active', '', '', NULL, '2027-12-31 22:38:41'),
(2, 2, 'employment', '', 'permanent', '', NULL, '2027-12-31 22:38:41'),
(3, 3, 'employee', 'active', '', '', NULL, '2028-08-31 22:56:38'),
(4, 3, 'employment', '', 'permanent', '', NULL, '2028-08-31 22:56:38'),
(5, 4, 'employee', 'active', '', '', NULL, '2123-12-31 23:09:55'),
(6, 4, 'employment', '', 'permanent', '', NULL, '2123-12-31 23:09:55'),
(7, 5, 'employee', 'active', '', '', NULL, '2027-12-31 23:17:00'),
(8, 5, 'employment', '', 'permanent', '', NULL, '2027-12-31 23:17:00');

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_employee_notes`
--

CREATE TABLE `wp_erp_hr_employee_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `comment_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_employee_performance`
--

CREATE TABLE `wp_erp_hr_employee_performance` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` int(11) UNSIGNED DEFAULT NULL,
  `reporting_to` int(11) UNSIGNED DEFAULT NULL,
  `job_knowledge` varchar(100) DEFAULT NULL,
  `work_quality` varchar(100) DEFAULT NULL,
  `attendance` varchar(100) DEFAULT NULL,
  `communication` varchar(100) DEFAULT NULL,
  `dependablity` varchar(100) DEFAULT NULL,
  `reviewer` int(11) UNSIGNED DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `completion_date` datetime DEFAULT NULL,
  `goal_description` text DEFAULT NULL,
  `employee_assessment` text DEFAULT NULL,
  `supervisor` int(11) UNSIGNED DEFAULT NULL,
  `supervisor_assessment` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `performance_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_financial_years`
--

CREATE TABLE `wp_erp_hr_financial_years` (
  `id` int(11) UNSIGNED NOT NULL,
  `fy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` int(11) DEFAULT NULL,
  `end_date` int(11) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_holiday`
--

CREATE TABLE `wp_erp_hr_holiday` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `start` timestamp NOT NULL DEFAULT current_timestamp(),
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `range_status` varchar(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leaves`
--

CREATE TABLE `wp_erp_hr_leaves` (
  `id` smallint(6) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leaves_unpaid`
--

CREATE TABLE `wp_erp_hr_leaves_unpaid` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_id` smallint(6) UNSIGNED NOT NULL,
  `leave_request_id` bigint(20) UNSIGNED NOT NULL,
  `leave_approval_status_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `days` decimal(4,1) UNSIGNED NOT NULL DEFAULT 0.0,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `f_year` smallint(5) UNSIGNED NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leave_approval_status`
--

CREATE TABLE `wp_erp_hr_leave_approval_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_request_id` bigint(20) UNSIGNED NOT NULL,
  `approval_status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leave_encashment_requests`
--

CREATE TABLE `wp_erp_hr_leave_encashment_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `leave_id` smallint(6) UNSIGNED NOT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approval_status_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `encash_days` decimal(4,1) UNSIGNED NOT NULL DEFAULT 0.0,
  `forward_days` decimal(4,1) UNSIGNED NOT NULL DEFAULT 0.0,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `f_year` smallint(5) UNSIGNED NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leave_entitlements`
--

CREATE TABLE `wp_erp_hr_leave_entitlements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `leave_id` smallint(6) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `trn_id` bigint(20) UNSIGNED NOT NULL,
  `trn_type` enum('leave_policies','leave_approval_status','leave_encashment_requests','leave_entitlements','unpaid_leave','leave_encashment','leave_carryforward','manual_leave_policies','Accounts','others','leave_accrual','carry_forward_leave_expired') NOT NULL DEFAULT 'leave_policies',
  `day_in` decimal(5,1) UNSIGNED NOT NULL DEFAULT 0.0,
  `day_out` decimal(5,1) UNSIGNED NOT NULL DEFAULT 0.0,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_year` smallint(6) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leave_policies`
--

CREATE TABLE `wp_erp_hr_leave_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_id` smallint(5) UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `color` varchar(10) DEFAULT NULL,
  `apply_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `employee_type` enum('-1','permanent','parttime','contract','temporary','trainee') NOT NULL DEFAULT 'permanent',
  `department_id` int(11) NOT NULL DEFAULT -1,
  `location_id` int(11) NOT NULL DEFAULT -1,
  `designation_id` int(11) NOT NULL DEFAULT -1,
  `gender` enum('-1','male','female','other') NOT NULL DEFAULT '-1',
  `marital` enum('-1','single','married','widowed') NOT NULL DEFAULT '-1',
  `f_year` smallint(5) UNSIGNED DEFAULT NULL,
  `apply_for_new_users` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `carryover_days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `carryover_uses_limit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `encashment_days` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `encashment_based_on` enum('pay_rate','basic','gross') DEFAULT NULL,
  `forward_default` enum('encashment','carryover') NOT NULL DEFAULT 'encashment',
  `applicable_from_days` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `accrued_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `accrued_max_days` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `halfday_enable` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leave_policies_segregation`
--

CREATE TABLE `wp_erp_hr_leave_policies_segregation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_policy_id` bigint(20) UNSIGNED NOT NULL,
  `jan` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `feb` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `mar` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `apr` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `may` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `jun` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `jul` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `aug` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sep` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `oct` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `nov` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decem` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leave_requests`
--

CREATE TABLE `wp_erp_hr_leave_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `leave_id` smallint(6) UNSIGNED NOT NULL,
  `leave_entitlement_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `day_status_id` smallint(5) UNSIGNED NOT NULL DEFAULT 1,
  `days` decimal(5,1) UNSIGNED NOT NULL DEFAULT 0.0,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_status` smallint(6) UNSIGNED NOT NULL DEFAULT 2,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_leave_request_details`
--

CREATE TABLE `wp_erp_hr_leave_request_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_request_id` bigint(20) UNSIGNED NOT NULL,
  `leave_approval_status_id` bigint(20) UNSIGNED NOT NULL,
  `workingday_status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `f_year` smallint(6) NOT NULL,
  `leave_date` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_hr_work_exp`
--

CREATE TABLE `wp_erp_hr_work_exp` (
  `id` int(11) UNSIGNED NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_peoplemeta`
--

CREATE TABLE `wp_erp_peoplemeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `erp_people_id` bigint(20) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_peoplemeta`
--

INSERT INTO `wp_erp_peoplemeta` (`meta_id`, `erp_people_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'life_stage', ''),
(2, 2, 'life_stage', ''),
(3, 3, 'life_stage', ''),
(4, 5, 'life_stage', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_peoples`
--

CREATE TABLE `wp_erp_peoples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `first_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `other` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `street_1` varchar(255) DEFAULT NULL,
  `street_2` varchar(255) DEFAULT NULL,
  `city` varchar(80) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `life_stage` varchar(100) DEFAULT NULL,
  `contact_owner` bigint(20) DEFAULT NULL,
  `hash` varchar(40) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_peoples`
--

INSERT INTO `wp_erp_peoples` (`id`, `user_id`, `first_name`, `last_name`, `company`, `email`, `phone`, `mobile`, `other`, `website`, `fax`, `notes`, `street_1`, `street_2`, `city`, `state`, `postal_code`, `country`, `currency`, `life_stage`, `contact_owner`, `hash`, `created_by`, `created`) VALUES
(1, 2, 'ALICE', 'BENGA', NULL, 'alice-benga@hotmail.fr', '5142998765', '', NULL, NULL, NULL, NULL, '89 Rue des Sorbiers Delson', '', '', '', '', 'CA', NULL, '', NULL, 'c12f1b5e9600955da787d03a50a9349acce00e87', 1, '2023-11-05 22:38:35'),
(2, 3, 'MAURICE', 'KABBA', NULL, 'maurice-kabba@applipaie.com', '4386584213', '', NULL, NULL, NULL, NULL, '', '', '', 'AB', '', 'CA', NULL, '', NULL, 'ae64ed21bd972c3f9c8833a43af56d8fbea90f87', 1, '2023-11-05 22:56:34'),
(3, 4, 'JASON', 'MARTIN', NULL, 'jason-martin@applipaie.com', '5142998787', '', NULL, NULL, NULL, NULL, '', '', '', 'QC', '', 'CA', NULL, '', NULL, 'e4234a7ca74400148f4f9fb79530ea5fb90cfbe5', 1, '2023-11-05 23:09:52'),
(4, 2, 'ALICE', 'BENGA', NULL, 'alice-benga@applipaie.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f567dda27560d4e8c7c2b210fb96e52765fa9073', 1, '2023-11-05 23:12:44'),
(5, 5, 'ALICE', 'BENGA', NULL, 'alice-benga1@applipaie.com', '5142998765', '', NULL, NULL, NULL, NULL, '89 Rue des Sorbiers Delson', '', '', '', '', 'CA', NULL, '', NULL, '9aa7fb4046bf8a58ed042011af930c87e183366e', 1, '2023-11-05 23:16:56');

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_people_types`
--

CREATE TABLE `wp_erp_people_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_people_types`
--

INSERT INTO `wp_erp_people_types` (`id`, `name`) VALUES
(2, 'company'),
(1, 'contact'),
(3, 'customer'),
(5, 'employee'),
(4, 'vendor');

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_people_type_relations`
--

CREATE TABLE `wp_erp_people_type_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `people_id` bigint(20) UNSIGNED DEFAULT NULL,
  `people_types_id` int(11) UNSIGNED DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_erp_people_type_relations`
--

INSERT INTO `wp_erp_people_type_relations` (`id`, `people_id`, `people_types_id`, `deleted_at`) VALUES
(1, 1, 1, NULL),
(2, 2, 1, NULL),
(3, 3, 1, NULL),
(4, 4, 5, NULL),
(5, 5, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wp_erp_user_leaves`
--

CREATE TABLE `wp_erp_user_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', '/', 'yes'), --'http://localhost:8080'
(2, 'home', '/', 'yes'), --'http://localhost:8080'
(3, 'blogname', 'Application de paie', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'pepecalle05@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G\\hi', 'yes'),
(25, 'links_updated_date_format', 'd F Y G\\hi', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:117:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:57:\"index.php/erp_hr_announcement/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/erp_hr_announcement/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/erp_hr_announcement/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/erp_hr_announcement/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/erp_hr_announcement/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/erp_hr_announcement/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"index.php/erp_hr_announcement/([^/]+)/embed/?$\";s:67:\"index.php?post_type=erp_hr_announcement&name=$matches[1]&embed=true\";s:50:\"index.php/erp_hr_announcement/([^/]+)/trackback/?$\";s:61:\"index.php?post_type=erp_hr_announcement&name=$matches[1]&tb=1\";s:58:\"index.php/erp_hr_announcement/([^/]+)/page/?([0-9]{1,})/?$\";s:74:\"index.php?post_type=erp_hr_announcement&name=$matches[1]&paged=$matches[2]\";s:65:\"index.php/erp_hr_announcement/([^/]+)/comment-page-([0-9]{1,})/?$\";s:74:\"index.php?post_type=erp_hr_announcement&name=$matches[1]&cpage=$matches[2]\";s:54:\"index.php/erp_hr_announcement/([^/]+)(?:/([0-9]+))?/?$\";s:73:\"index.php?post_type=erp_hr_announcement&name=$matches[1]&page=$matches[2]\";s:46:\"index.php/erp_hr_announcement/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"index.php/erp_hr_announcement/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"index.php/erp_hr_announcement/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/erp_hr_announcement/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"index.php/erp_hr_announcement/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"index.php/erp_hr_announcement/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:60:\"index.php/erp_crm_tag/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?erp_crm_tag=$matches[1]&feed=$matches[2]\";s:55:\"index.php/erp_crm_tag/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?erp_crm_tag=$matches[1]&feed=$matches[2]\";s:36:\"index.php/erp_crm_tag/(.+?)/embed/?$\";s:44:\"index.php?erp_crm_tag=$matches[1]&embed=true\";s:48:\"index.php/erp_crm_tag/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?erp_crm_tag=$matches[1]&paged=$matches[2]\";s:30:\"index.php/erp_crm_tag/(.+?)/?$\";s:33:\"index.php?erp_crm_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=63&cpage=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:62:\"C:\\xampp\\htdocs\\app-paie/wp-content/themes/mediclean/style.css\";i:1;s:63:\"C:\\xampp\\htdocs\\app-paie/wp-content/plugins/akismet/akismet.php\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '63', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1714507727', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:14:\"erp_hr_manager\";a:2:{s:4:\"name\";s:10:\"HR Manager\";s:12:\"capabilities\";a:42:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:13:\"erp_view_list\";b:1;s:17:\"erp_list_employee\";b:1;s:19:\"erp_create_employee\";b:1;s:17:\"erp_view_employee\";b:1;s:17:\"erp_edit_employee\";b:1;s:19:\"erp_delete_employee\";b:1;s:17:\"erp_create_review\";b:1;s:17:\"erp_delete_review\";b:1;s:17:\"erp_manage_review\";b:1;s:22:\"erp_crate_announcement\";b:1;s:21:\"erp_view_announcement\";b:1;s:23:\"erp_manage_announcement\";b:1;s:18:\"erp_manage_jobinfo\";b:1;s:16:\"erp_view_jobinfo\";b:1;s:21:\"erp_manage_department\";b:1;s:22:\"erp_manage_designation\";b:1;s:24:\"erp_leave_create_request\";b:1;s:16:\"erp_leave_manage\";b:1;s:22:\"erp_manage_hr_settings\";b:1;s:21:\"erp_create_experience\";b:1;s:19:\"erp_edit_experience\";b:1;s:19:\"erp_view_experience\";b:1;s:21:\"erp_delete_experience\";b:1;s:20:\"erp_create_education\";b:1;s:18:\"erp_edit_education\";b:1;s:18:\"erp_view_education\";b:1;s:20:\"erp_delete_education\";b:1;s:17:\"erp_can_terminate\";b:1;s:20:\"erp_create_dependent\";b:1;s:18:\"erp_edit_dependent\";b:1;s:18:\"erp_view_dependent\";b:1;s:20:\"erp_delete_dependent\";b:1;s:19:\"erp_create_document\";b:1;s:17:\"erp_edit_document\";b:1;s:17:\"erp_view_document\";b:1;s:19:\"erp_delete_document\";b:1;s:21:\"erp_create_attendance\";b:1;s:19:\"erp_edit_attendance\";b:1;s:19:\"erp_view_attendance\";b:1;s:21:\"erp_delete_attendance\";b:1;}}s:8:\"employee\";a:2:{s:4:\"name\";s:8:\"Employee\";s:12:\"capabilities\";a:26:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:13:\"erp_view_list\";b:1;s:17:\"erp_list_employee\";b:1;s:17:\"erp_view_employee\";b:1;s:17:\"erp_edit_employee\";b:1;s:16:\"erp_view_jobinfo\";b:1;s:24:\"erp_leave_create_request\";b:1;s:21:\"erp_view_announcement\";b:1;s:21:\"erp_create_experience\";b:1;s:19:\"erp_edit_experience\";b:1;s:19:\"erp_view_experience\";b:1;s:21:\"erp_delete_experience\";b:1;s:20:\"erp_create_education\";b:1;s:18:\"erp_edit_education\";b:1;s:18:\"erp_view_education\";b:1;s:20:\"erp_delete_education\";b:1;s:20:\"erp_create_dependent\";b:1;s:18:\"erp_edit_dependent\";b:1;s:18:\"erp_view_dependent\";b:1;s:20:\"erp_delete_dependent\";b:1;s:19:\"erp_create_document\";b:1;s:17:\"erp_edit_document\";b:1;s:17:\"erp_view_document\";b:1;s:19:\"erp_delete_document\";b:1;s:19:\"erp_view_attendance\";b:1;}}s:14:\"erp_ac_manager\";a:2:{s:4:\"name\";s:18:\"Accounting Manager\";s:12:\"capabilities\";a:43:{s:4:\"read\";b:1;s:21:\"erp_ac_view_dashboard\";b:1;s:20:\"erp_ac_view_customer\";b:1;s:27:\"erp_ac_view_single_customer\";b:1;s:27:\"erp_ac_view_other_customers\";b:1;s:22:\"erp_ac_create_customer\";b:1;s:20:\"erp_ac_edit_customer\";b:1;s:27:\"erp_ac_edit_other_customers\";b:1;s:22:\"erp_ac_delete_customer\";b:1;s:29:\"erp_ac_delete_other_customers\";b:1;s:18:\"erp_ac_view_vendor\";b:1;s:25:\"erp_ac_view_other_vendors\";b:1;s:20:\"erp_ac_create_vendor\";b:1;s:18:\"erp_ac_edit_vendor\";b:1;s:25:\"erp_ac_edit_other_vendors\";b:1;s:20:\"erp_ac_delete_vendor\";b:1;s:27:\"erp_ac_delete_other_vendors\";b:1;s:16:\"erp_ac_view_sale\";b:1;s:25:\"erp_ac_view_single_vendor\";b:1;s:23:\"erp_ac_view_other_sales\";b:1;s:25:\"erp_ac_view_sales_summary\";b:1;s:27:\"erp_ac_create_sales_payment\";b:1;s:28:\"erp_ac_publish_sales_payment\";b:1;s:27:\"erp_ac_create_sales_invoice\";b:1;s:28:\"erp_ac_publish_sales_invoice\";b:1;s:19:\"erp_ac_view_expense\";b:1;s:26:\"erp_ac_view_other_expenses\";b:1;s:28:\"erp_ac_view_expenses_summary\";b:1;s:30:\"erp_ac_create_expenses_voucher\";b:1;s:31:\"erp_ac_publish_expenses_voucher\";b:1;s:29:\"erp_ac_create_expenses_credit\";b:1;s:30:\"erp_ac_publish_expenses_credit\";b:1;s:25:\"erp_ac_view_account_lists\";b:1;s:26:\"erp_ac_view_single_account\";b:1;s:21:\"erp_ac_create_account\";b:1;s:19:\"erp_ac_edit_account\";b:1;s:21:\"erp_ac_delete_account\";b:1;s:25:\"erp_ac_view_bank_accounts\";b:1;s:27:\"erp_ac_create_bank_transfer\";b:1;s:19:\"erp_ac_view_journal\";b:1;s:26:\"erp_ac_view_other_journals\";b:1;s:21:\"erp_ac_create_journal\";b:1;s:19:\"erp_ac_view_reports\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'fr_FR', 'yes'),
(103, 'user_count', '5', 'no'),
(104, 'widget_block', 'a:7:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Articles récents</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Commentaires récents</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Catégories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;i:8;a:1:{s:7:\"content\";s:53:\"<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->\";}}', 'yes'),
(105, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:1:{i:0;s:7:\"block-8\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:10:{i:1700182589;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1700183275;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700183352;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1700208551;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1700208552;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1700208668;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1700251749;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700251868;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1700770175;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(123, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698957247;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'recovery_keys', 'a:0:{}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:32:\"La vérification SSL a échoué.\";}}', 'yes'),
(139, 'can_compress_scripts', '1', 'yes'),
(145, 'recently_activated', 'a:2:{s:30:\"erp-pdf-invoice/wp-erp-pdf.php\";i:1700180132;s:14:\"erp/wp-erp.php\";i:1700180117;}', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(163, 'login_nocaptcha_message_type', 'notice-error', 'yes'),
(164, 'login_nocaptcha_error', 'La configuration de Login NoCaptcha est incorrecte. <a href=\"options-general.php?page=login-recaptcha/admin.php\">Cliquez ici</a> pour reconfigurer.', 'yes'),
(165, 'login_nocaptcha_key', '', 'yes'),
(166, 'login_nocaptcha_secret', '', 'yes'),
(167, 'login_nocaptcha_whitelist', '', 'yes'),
(168, 'login_nocaptcha_disable_css', '', 'yes'),
(171, 'current_theme', 'Twenty Twenty-One', 'yes'),
(172, 'theme_mods_mediclean', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:78:\"/wp-content/themes/mediclean/images/header-banner.jpg\";s:17:\"header_image_data\";a:3:{s:3:\"url\";s:78:\"/wp-content/themes/mediclean/images/header-banner.jpg\";s:13:\"thumbnail_url\";s:78:\"/wp-content/themes/mediclean/images/header-banner.jpg\";s:11:\"description\";s:18:\"Corporate Business\";}s:13:\"theme_options\";a:4:{s:21:\"show_social_in_footer\";b:0;s:10:\"blog_title\";s:0:\"\";s:14:\"copyright_text\";s:0:\"\";s:19:\"home_content_status\";b:1;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1699130333;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:30:\"sidebar-front-page-widget-area\";a:0:{}s:33:\"sidebar-footer-bottom-widget-area\";a:1:{i:0;s:7:\"block-8\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(173, 'theme_switched', '', 'yes'),
(174, 'widget_mediclean-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_mediclean-latest-news', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_mediclean-appointment', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'widget_mediclean-call-to-action', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(223, 'psw_general_features_option_name', 'a:4:{s:32:\"user_registration_default_role_0\";s:10:\"subscriber\";s:30:\"extra_emails_comma_separated_1\";s:21:\"pepecalle05@gmail.com\";s:24:\"user_registration_page_2\";s:1:\"6\";s:23:\"enable_a_blank_design_3\";s:3:\"yes\";}', 'yes'),
(236, 'jaxon_install', '1698982844', 'yes'),
(243, 'theme_mods_jaxon', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1698984863;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:30:\"sidebar-front-page-widget-area\";a:0:{}s:33:\"sidebar-footer-bottom-widget-area\";a:1:{i:0;s:7:\"block-8\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(245, 'theme_switched_via_customizer', '', 'yes'),
(246, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(255, 'jaxon-welcome-notice-dismissed', 'yes', 'yes'),
(273, 'downloaded_font_files', 'a:54:{s:66:\"https://fonts.gstatic.com/s/lato/v24/S6u8w4BMUTPHjxsAUi-qJCY.woff2\";s:77:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u8w4BMUTPHjxsAUi-qJCY.woff2\";s:63:\"https://fonts.gstatic.com/s/lato/v24/S6u8w4BMUTPHjxsAXC-q.woff2\";s:74:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u8w4BMUTPHjxsAXC-q.woff2\";s:70:\"https://fonts.gstatic.com/s/lato/v24/S6u_w4BMUTPHjxsI5wq_FQft1dw.woff2\";s:81:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u_w4BMUTPHjxsI5wq_FQft1dw.woff2\";s:67:\"https://fonts.gstatic.com/s/lato/v24/S6u_w4BMUTPHjxsI5wq_Gwft.woff2\";s:78:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u_w4BMUTPHjxsI5wq_Gwft.woff2\";s:70:\"https://fonts.gstatic.com/s/lato/v24/S6u_w4BMUTPHjxsI3wi_FQft1dw.woff2\";s:81:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u_w4BMUTPHjxsI3wi_FQft1dw.woff2\";s:67:\"https://fonts.gstatic.com/s/lato/v24/S6u_w4BMUTPHjxsI3wi_Gwft.woff2\";s:78:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u_w4BMUTPHjxsI3wi_Gwft.woff2\";s:63:\"https://fonts.gstatic.com/s/lato/v24/S6uyw4BMUTPHjxAwXjeu.woff2\";s:74:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6uyw4BMUTPHjxAwXjeu.woff2\";s:61:\"https://fonts.gstatic.com/s/lato/v24/S6uyw4BMUTPHjx4wXg.woff2\";s:72:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6uyw4BMUTPHjx4wXg.woff2\";s:67:\"https://fonts.gstatic.com/s/lato/v24/S6u9w4BMUTPHh6UVSwaPGR_p.woff2\";s:78:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u9w4BMUTPHh6UVSwaPGR_p.woff2\";s:65:\"https://fonts.gstatic.com/s/lato/v24/S6u9w4BMUTPHh6UVSwiPGQ.woff2\";s:76:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u9w4BMUTPHh6UVSwiPGQ.woff2\";s:67:\"https://fonts.gstatic.com/s/lato/v24/S6u9w4BMUTPHh50XSwaPGR_p.woff2\";s:78:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u9w4BMUTPHh50XSwaPGR_p.woff2\";s:65:\"https://fonts.gstatic.com/s/lato/v24/S6u9w4BMUTPHh50XSwiPGQ.woff2\";s:76:\"C:/xampp/htdocs/app-paie/wp-content//fonts/lato/S6u9w4BMUTPHh50XSwiPGQ.woff2\";s:71:\"https://fonts.gstatic.com/s/roboto/v30/KFOkCnqEu92Fr1Mu51xFIzIFKw.woff2\";s:82:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOkCnqEu92Fr1Mu51xFIzIFKw.woff2\";s:71:\"https://fonts.gstatic.com/s/roboto/v30/KFOkCnqEu92Fr1Mu51xMIzIFKw.woff2\";s:82:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOkCnqEu92Fr1Mu51xMIzIFKw.woff2\";s:71:\"https://fonts.gstatic.com/s/roboto/v30/KFOkCnqEu92Fr1Mu51xEIzIFKw.woff2\";s:82:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOkCnqEu92Fr1Mu51xEIzIFKw.woff2\";s:71:\"https://fonts.gstatic.com/s/roboto/v30/KFOkCnqEu92Fr1Mu51xLIzIFKw.woff2\";s:82:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOkCnqEu92Fr1Mu51xLIzIFKw.woff2\";s:71:\"https://fonts.gstatic.com/s/roboto/v30/KFOkCnqEu92Fr1Mu51xHIzIFKw.woff2\";s:82:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOkCnqEu92Fr1Mu51xHIzIFKw.woff2\";s:71:\"https://fonts.gstatic.com/s/roboto/v30/KFOkCnqEu92Fr1Mu51xGIzIFKw.woff2\";s:82:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOkCnqEu92Fr1Mu51xGIzIFKw.woff2\";s:68:\"https://fonts.gstatic.com/s/roboto/v30/KFOkCnqEu92Fr1Mu51xIIzI.woff2\";s:79:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOkCnqEu92Fr1Mu51xIIzI.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TzBic3CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TzBic3CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TzBic-CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TzBic-CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TzBic2CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TzBic2CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TzBic5CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TzBic5CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TzBic1CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TzBic1CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TzBic0CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TzBic0CsTKlA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TzBic6CsQ.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TzBic6CsQ.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TLBCc3CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TLBCc3CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TLBCc-CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TLBCc-CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TLBCc2CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TLBCc2CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TLBCc5CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TLBCc5CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TLBCc1CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TLBCc1CsTKlA.woff2\";s:75:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TLBCc0CsTKlA.woff2\";s:86:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TLBCc0CsTKlA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOjCnqEu92Fr1Mu51TLBCc6CsQ.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOjCnqEu92Fr1Mu51TLBCc6CsQ.woff2\";s:68:\"https://fonts.gstatic.com/s/roboto/v30/KFOmCnqEu92Fr1Mu72xKOzY.woff2\";s:79:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOmCnqEu92Fr1Mu72xKOzY.woff2\";s:68:\"https://fonts.gstatic.com/s/roboto/v30/KFOmCnqEu92Fr1Mu5mxKOzY.woff2\";s:79:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOmCnqEu92Fr1Mu5mxKOzY.woff2\";s:68:\"https://fonts.gstatic.com/s/roboto/v30/KFOmCnqEu92Fr1Mu7mxKOzY.woff2\";s:79:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOmCnqEu92Fr1Mu7mxKOzY.woff2\";s:68:\"https://fonts.gstatic.com/s/roboto/v30/KFOmCnqEu92Fr1Mu4WxKOzY.woff2\";s:79:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOmCnqEu92Fr1Mu4WxKOzY.woff2\";s:68:\"https://fonts.gstatic.com/s/roboto/v30/KFOmCnqEu92Fr1Mu7WxKOzY.woff2\";s:79:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOmCnqEu92Fr1Mu7WxKOzY.woff2\";s:68:\"https://fonts.gstatic.com/s/roboto/v30/KFOmCnqEu92Fr1Mu7GxKOzY.woff2\";s:79:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOmCnqEu92Fr1Mu7GxKOzY.woff2\";s:65:\"https://fonts.gstatic.com/s/roboto/v30/KFOmCnqEu92Fr1Mu4mxK.woff2\";s:76:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOmCnqEu92Fr1Mu4mxK.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmWUlfCRc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmWUlfCRc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmWUlfABc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmWUlfABc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmWUlfCBc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmWUlfCBc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmWUlfBxc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmWUlfBxc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmWUlfCxc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmWUlfCxc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmWUlfChc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmWUlfChc4EsA.woff2\";s:69:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmWUlfBBc4.woff2\";s:80:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmWUlfBBc4.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmYUtfCRc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmYUtfCRc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmYUtfABc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmYUtfABc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmYUtfCBc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmYUtfCBc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmYUtfBxc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmYUtfBxc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmYUtfCxc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmYUtfCxc4EsA.woff2\";s:72:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmYUtfChc4EsA.woff2\";s:83:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmYUtfChc4EsA.woff2\";s:69:\"https://fonts.gstatic.com/s/roboto/v30/KFOlCnqEu92Fr1MmYUtfBBc4.woff2\";s:80:\"C:/xampp/htdocs/app-paie/wp-content//fonts/roboto/KFOlCnqEu92Fr1MmYUtfBBc4.woff2\";}', 'no'),
(274, '_transient_mediclean_categories', '1', 'yes'),
(277, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":5,\"critical\":2}', 'yes'),
(279, 'theme_mods_twentytwentytwo', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:19:\"wp_classic_sidebars\";a:8:{s:9:\"sidebar-1\";a:11:{s:4:\"name\";s:15:\"Primary Sidebar\";s:2:\"id\";s:9:\"sidebar-1\";s:11:\"description\";s:51:\"Add widgets here to appear in your Primary Sidebar.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-2\";a:11:{s:4:\"name\";s:17:\"Secondary Sidebar\";s:2:\"id\";s:9:\"sidebar-2\";s:11:\"description\";s:53:\"Add widgets here to appear in your Secondary Sidebar.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:30:\"sidebar-front-page-widget-area\";a:11:{s:4:\"name\";s:22:\"Front Page Widget Area\";s:2:\"id\";s:30:\"sidebar-front-page-widget-area\";s:11:\"description\";s:46:\"Add widgets here to appear in your Front Page.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:60:\"<aside id=\"%1$s\" class=\"widget %2$s\"><div class=\"container\">\";s:12:\"after_widget\";s:14:\"</div></aside>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:33:\"sidebar-footer-bottom-widget-area\";a:11:{s:4:\"name\";s:25:\"Footer Bottom Widget Area\";s:2:\"id\";s:33:\"sidebar-footer-bottom-widget-area\";s:11:\"description\";s:56:\"Add widgets here to appear in Footer Bottom Widget Area.\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-1\";a:11:{s:4:\"name\";s:15:\"Footer Widget 1\";s:2:\"id\";s:8:\"footer-1\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-2\";a:11:{s:4:\"name\";s:15:\"Footer Widget 2\";s:2:\"id\";s:8:\"footer-2\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-3\";a:11:{s:4:\"name\";s:15:\"Footer Widget 3\";s:2:\"id\";s:8:\"footer-3\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-4\";a:11:{s:4:\"name\";s:15:\"Footer Widget 4\";s:2:\"id\";s:8:\"footer-4\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:37:\"<aside id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1699130387;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:30:\"sidebar-front-page-widget-area\";a:0:{}s:33:\"sidebar-footer-bottom-widget-area\";a:1:{i:0;s:7:\"block-8\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(283, 'theme_mods_twentytwentyone', 'a:11:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_image\";s:65:\"/wp-content/uploads/2023/11/a-propos.jpg\";s:17:\"background_preset\";s:6:\"custom\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:15:\"background_size\";s:7:\"contain\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:6:\"scroll\";s:25:\"display_title_and_tagline\";b:1;}', 'yes'),
(393, 'erp_modules', 'a:3:{s:3:\"crm\";a:5:{s:5:\"title\";s:13:\"CR Management\";s:4:\"slug\";s:7:\"erp-crm\";s:11:\"description\";s:32:\"Customer Relationship Management\";s:8:\"callback\";s:24:\"\\WeDevs\\ERP\\CRM\\Main\\CRM\";s:7:\"modules\";a:0:{}}s:10:\"accounting\";a:5:{s:5:\"title\";s:10:\"Accounting\";s:4:\"slug\";s:14:\"erp-accounting\";s:11:\"description\";s:21:\"Accounting Management\";s:8:\"callback\";s:38:\"\\WeDevs\\ERP\\Accounting\\Main\\Accounting\";s:7:\"modules\";a:0:{}}s:3:\"hrm\";a:5:{s:5:\"title\";s:13:\"HR Management\";s:4:\"slug\";s:7:\"erp-hrm\";s:11:\"description\";s:25:\"Human Resource Management\";s:8:\"callback\";s:24:\"\\WeDevs\\ERP\\HRM\\Main\\HRM\";s:7:\"modules\";a:0:{}}}', 'yes'),
(394, 'erp_settings_erp-crm_subscription', 'a:8:{s:10:\"is_enabled\";s:3:\"yes\";s:13:\"email_subject\";s:48:\"Confirm your subscription to Application de paie\";s:13:\"email_content\";s:282:\"Hello!\n\nThanks so much for signing up for our newsletter.\nWe need you to activate your subscription to the list(s): [contact_groups_to_confirm] by clicking the link below: \n\n[activation_link]Click here to confirm your subscription.[/activation_link]\n\nThank you,\n\nApplication de paie\";s:7:\"page_id\";i:54;s:18:\"confirm_page_title\";s:23:\"You are now subscribed!\";s:20:\"confirm_page_content\";s:63:\"We\'ve added you to our email list. You\'ll hear from us shortly.\";s:17:\"unsubs_page_title\";s:24:\"You are now unsubscribed\";s:19:\"unsubs_page_content\";s:47:\"You are successfully unsubscribed from list(s):\";}', 'yes'),
(396, 'erp_acct_new_ledgers', '1', 'yes'),
(398, 'erp_email_settings_employee-welcome', 'a:3:{s:7:\"subject\";s:37:\"Welcome {full_name} to {company_name}\";s:7:\"heading\";s:29:\"Welcome Onboard {first_name}!\";s:4:\"body\";s:1015:\"Dear {full_name},\n\nWelcome aboard as a <strong>{job_title}</strong> in our <strong>{dept_title}</strong> team at <strong>{company_name}</strong>! I am pleased to have you working with us. You were selected for employment due to the attributes that you displayed that appear to match the qualities I look for in an employee.\n\nI’m looking forward to seeing you grow and develop into an outstanding employee that exhibits a high level of care, concern, and compassion for others. I hope that you will find your work to be rewarding, challenging, and meaningful.\n\nYour <strong>{type}</strong> employment will start from <strong>{joined_date}</strong> and you will be reporting to <strong>{reporting_to}</strong>.\n\nPlease take your time and review our yearly goals so that you can know what is expected and make a positive contribution. Again, I look forward to seeing you grow as a professional while enhancing the lives of the clients entrusted in your care.\n\nSincerely,\nManager Name\nCEO, Company Name\n\n{login_info}\";}', 'yes'),
(399, 'erp_email_settings_new-leave-request', 'a:3:{s:7:\"subject\";s:47:\"New leave request received from {employee_name}\";s:7:\"heading\";s:17:\"New Leave Request\";s:4:\"body\";s:316:\"Hello,\n\nA new leave request has been received from {employee_url}.\n\n<strong>Leave type:</strong> {leave_type}\n<strong>Date:</strong> {date_from} to {date_to}\n<strong>Days:</strong> {no_days}\n<strong>Reason:</strong> {reason}\n\nPlease approve/reject this leave application by going following:\n\n{requests_url}\n\nThanks.\";}', 'yes'),
(400, 'erp_email_settings_approved-leave-request', 'a:3:{s:7:\"subject\";s:36:\"Your leave request has been approved\";s:7:\"heading\";s:22:\"Leave Request Approved\";s:4:\"body\";s:192:\"Hello {employee_name},\n\nYour <strong>{leave_type}</strong> type leave request for <strong>{no_days} days</strong> from {date_from} to {date_to} has been approved.\n\nRegards\nManager Name\nCompany\";}', 'yes'),
(401, 'erp_email_settings_rejected-leave-request', 'a:3:{s:7:\"subject\";s:36:\"Your leave request has been rejected\";s:7:\"heading\";s:22:\"Leave Request Rejected\";s:4:\"body\";s:237:\"Hello {employee_name},\n\nYour <strong>{leave_type}</strong> type leave request for <strong>{no_days} days</strong> from {date_from} to {date_to} has been rejected.\n\nThe reason of rejection is: {reject_reason}\n\nRegards\nManager Name\nCompany\";}', 'yes'),
(402, 'erp_email_settings_new-task-assigned', 'a:3:{s:7:\"subject\";s:33:\"New task has been assigned to you\";s:7:\"heading\";s:17:\"New Task Assigned\";s:4:\"body\";s:157:\"Hello {employee_name},\n\nA new task <strong>{task_title}</strong> has been assigned to you by {created_by}.\nDue Date: {due_date}\n\nRegards\nManager Name\nCompany\";}', 'yes'),
(403, 'erp_email_settings_new-contact-assigned', 'a:3:{s:7:\"subject\";s:36:\"New contact has been assigned to you\";s:7:\"heading\";s:20:\"New Contact Assigned\";s:4:\"body\";s:141:\"Hello {employee_name},\n\nA new contact <strong>{contact_name}</strong> has been assigned to you by {created_by}.\n\nRegards\nManager Name\nCompany\";}', 'yes'),
(404, 'erp_email_settings_hiring-anniversary-wish', 'a:3:{s:7:\"subject\";s:40:\"Congratulation for Your Work Anniversary\";s:7:\"heading\";s:51:\"Congratulation for Passing One More Year With Us :)\";s:4:\"body\";s:512:\"Congratulations {full_name}!\n\nYou have been a model employee for {total_year} years now. You are one of my few original employees and have certainly become an asset to this company. I appreciate the selfless service you\'ve given for so many years. Without the loyalty and hard work of experts like you who helped us get things started, we could never have achieved our present stature. I hope the gift I sent will reflect the high esteem I have for you.\n\nMay you enjoy the fruits of your labors for years to come\";}', 'yes'),
(405, 'erp_email_settings_govt-holiday-reminder', 'a:3:{s:7:\"subject\";s:36:\"Upcoming government holiday reminder\";s:7:\"heading\";s:8:\"Reminder\";s:4:\"body\";s:304:\"Hello {full_name}\n\nThis is an official announcement for all employees that the {holiday_name} holidays will be observed {holiday_duration}.Let us take the days off on this {holiday_name} and the office will re-open the next day,{reopen_day}. See you all back to work again.Regards\n\nHR Manager\nXYZ Limited\";}', 'yes'),
(406, 'erp_email_settings_transectional-email', 'a:3:{s:7:\"subject\";s:28:\"New invoice has been created\";s:7:\"heading\";s:23:\"New transaction invoice\";s:4:\"body\";s:257:\"Dear {customer_name},\n\nWe are contacting you in regard to a new invoice #{invoice_ID} that has been created on your account. You may find the invoice attached. Please pay the balance of {amount} by {due_date}.\n\n\nKind Regards,\nAccount Manager\n{company_name}\n\";}', 'yes'),
(407, 'erp_email_settings_transectional-email-payments', 'a:3:{s:7:\"subject\";s:24:\"An invoice has been paid\";s:7:\"heading\";s:23:\"New transaction payment\";s:4:\"body\";s:248:\"Dear {customer_name},\n\nI just wanted to drop you a quick note to let you know that we have received your recent payment in respect of invoice {invoice_ID}. Thank you very much. We really appreciate it.\n\nKind Regards,\nAccount Manager\n{company_name}\n\";}', 'yes'),
(408, 'erp_email_settings_transectional-email-purchase', 'a:3:{s:7:\"subject\";s:28:\"An purchase has been created\";s:7:\"heading\";s:24:\"New transaction purchase\";s:4:\"body\";s:255:\"Dear {vendor_name},\n\nI just wanted to drop you a quick note to let you know that we have created a purchase invoice to pay you in respect of invoice {invoice_ID}. Thank you very much. We really appreciate it.\n\nKind Regards,\nAccount Manager\n{company_name}\n\";}', 'yes'),
(409, 'erp_email_settings_transectional-email-estimate', 'a:3:{s:7:\"subject\";s:28:\"An estimate has been created\";s:7:\"heading\";s:24:\"New transaction estimate\";s:4:\"body\";s:432:\"Hi {customer_name},\n\nThanks for providing us the opportunity to do business with you. You will find an estimate containing each of the products/services we are proposing to complete attached with this email. Please review the estimate and reply to this email at your earliest convenience. We look forward to doing business together. If you have any questions, feel free to contact us.\n\n\nBest Regards,\nProject Manager\n{company_name}\n\";}', 'yes'),
(410, 'erp_email_settings_transectional-email-purchase-order', 'a:3:{s:7:\"subject\";s:34:\"An purchase order has been created\";s:7:\"heading\";s:30:\"New transaction purchase order\";s:4:\"body\";s:417:\"Dear (vendor_name)\n\nWith reference to our discussion, we would like to inform you that the order of {invoice_ID} has been approved. Please proceed the delivery of the product further.\n\nPlease feel free to contact me if you need any sort of clarification. Please dispatch the goods latest by the promised time.\n\nWe hope to have a long term business association with you.\n\n\nBest Regards,\nAccount Manager\n{company_name}\n\";}', 'yes'),
(411, 'erp_email_settings_transectional-email-pay-purchase', 'a:3:{s:7:\"subject\";s:24:\"An invoice has been paid\";s:7:\"heading\";s:28:\"New transaction pay purchase\";s:4:\"body\";s:204:\"Dear {vendor_name},\n\nWe are contacting you in regard to a new invoice #{invoice_ID} that has been created on your account. You may find the invoice attached.\n\n\nKind Regards,\nAccount Manager\n{company_name}\";}', 'yes'),
(414, 'wp_erp_version', '1.12.7', 'yes'),
(415, 'wp_erp_db_version', '1.12.7', 'yes'),
(416, 'wp_erp_install_date', '1699221139', 'yes'),
(417, 'widget_erp-subscription-from-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(419, 'erp_setup_wizard_ran', '1', 'yes'),
(421, 'erp_allow_tracking', 'no', 'yes'),
(423, 'erp_tracking_skipped', 'yes', 'yes'),
(424, '_erp_company', 'a:9:{s:4:\"logo\";i:0;s:4:\"name\";s:19:\"Application de paie\";s:7:\"address\";a:6:{s:9:\"address_1\";s:16:\"Street Address 1\";s:9:\"address_2\";s:14:\"Address Line 2\";s:4:\"city\";s:4:\"City\";s:5:\"state\";s:5:\"State\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"US\";}s:5:\"phone\";s:0:\"\";s:3:\"fax\";s:0:\"\";s:6:\"mobile\";s:0:\"\";s:7:\"website\";s:0:\"\";s:8:\"currency\";s:3:\"USD\";s:13:\"business_type\";s:9:\"Freelance\";}', 'yes'),
(425, 'erp_settings_general', 'a:7:{s:13:\"gen_com_start\";s:10:\"2023-01-01\";s:19:\"gen_financial_month\";s:1:\"1\";s:11:\"date_format\";s:5:\"d-m-Y\";s:12:\"erp_currency\";s:2:\"53\";s:11:\"erp_country\";s:2:\"CA\";s:28:\"role_based_login_redirection\";s:1:\"1\";s:14:\"erp_debug_mode\";s:0:\"\";}', 'yes'),
(427, 'pm_version', '2.6.7', 'yes'),
(428, 'pm_installed', '1699218148', 'yes'),
(436, 'include_project_manager', 'no', 'yes'),
(438, 'mon', '8', 'yes'),
(439, 'tue', '8', 'yes'),
(440, 'wed', '8', 'yes'),
(441, 'thu', '8', 'yes'),
(442, 'fri', '8', 'yes'),
(443, 'sat', '4', 'yes'),
(444, 'sun', '4', 'yes'),
(459, 'erp_settings_erp-crm_contacts', 'a:4:{s:16:\"user_auto_import\";s:1:\"1\";s:10:\"user_roles\";a:4:{s:13:\"administrator\";s:13:\"administrator\";s:14:\"erp_hr_manager\";s:14:\"erp_hr_manager\";s:8:\"employee\";s:8:\"employee\";s:14:\"erp_ac_manager\";s:14:\"erp_ac_manager\";}s:13:\"contact_owner\";s:1:\"1\";s:10:\"life_stage\";s:0:\"\";}', 'yes'),
(563, 'category_children', 'a:0:{}', 'yes'),
(640, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(696, '_transient_erp_promo_notice', '{\"key\":\"erp-halloween2023\",\"start_date\":\"2023-10-24 08:00:01 EST\",\"end_date\":\"2023-11-02 12:01:00 EST\",\"title\":\"October Chills, Discount that Thrills\",\"description\":\"\",\"content\":\"Get up to <strong>40% OFF<\\/strong> on WP ERP Pro Plan\",\"action_url\":\"https:\\/\\/wperp.com\\/pricing\\/?nocache&utm_campaign=halloween23&utm_medium=banner&utm_source=wpdashboard\",\"action_title\":\"Claim Yours\"}', 'no'),
(831, '_site_transient_timeout_browser_f529a32073a22388a8370c39e9b93c86', '1700254492', 'no'),
(832, '_site_transient_browser_f529a32073a22388a8370c39e9b93c86', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"119.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(835, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1700254495', 'no'),
(836, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(863, '_site_transient_timeout_available_translations', '1700172255', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(864, '_site_transient_available_translations', 'a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.6\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.0.6/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-20 14:52:12\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.23/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-17 09:27:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.9.24/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-30 17:34:42\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-16 10:44:14\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.3/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-06 18:20:31\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-10 08:51:46\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 09:36:50\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 12:32:40\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-14 20:21:44\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 18:16:41\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/6.3.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 18:16:33\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-08 09:52:35\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/translation/core/6.3.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-08 09:49:50\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.3/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-31 11:51:34\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-22 00:24:59\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-28 15:58:51\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-07 10:32:51\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-28 15:57:23\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-03 07:25:21\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-20 08:57:43\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-22 13:44:03\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-31 02:13:04\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-26 01:50:26\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.3/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8.8/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8.8/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.4.14/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-17 16:18:36\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.19\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.2.19/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-05 10:16:58\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-15 17:16:26\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 23:13:21\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 14:24:18\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-30 17:30:18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-15 23:14:34\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-08 16:26:29\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.23/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.2.3/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 23:41:33\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-09 07:20:47\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.31\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.4.31/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-05-28 22:06:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.3/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-31 09:18:27\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-05 16:40:26\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.3/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-06 09:35:55\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-15 13:32:55\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.9.24/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-25 18:45:51\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-07 06:30:43\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.9.24/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.6\";s:7:\"updated\";s:19:\"2023-10-31 08:47:02\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.0.6/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.24/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.19\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.2.19/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.1.4/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-13 00:53:29\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-14 15:26:14\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.3.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-29 06:43:10\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.3.2/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.1.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-01 07:05:22\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.6\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.0.6/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-13 08:36:49\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-05 01:27:19\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.24\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.9.24/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.13\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.5.13/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.36\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.2.36/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-12 23:32:44\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 12:10:13\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-16 12:51:05\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-10 16:26:11\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-29 11:56:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/6.3.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.23/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-20 04:59:22\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.32\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.3.32/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-27 11:36:32\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-18 18:23:14\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-08-21 12:17:05\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-09-28 12:14:59\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/translation/core/6.3.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-31 21:49:13\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-20 06:29:06\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/5.4.14/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-23 12:34:38\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-11 16:19:53\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.3.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-27 05:53:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-21 10:39:13\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.3.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8.8/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-13 08:42:34\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.16\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.3.16/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.36\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.2.36/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.8\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/5.8.8/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.23\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.23/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-10-14 17:48:14\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-16 04:25:13\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.4\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.1.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.14\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.4.14/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2023-07-15 15:30:50\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.2.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-10 15:41:28\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.3\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.3/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.3.2\";s:7:\"updated\";s:19:\"2023-11-10 16:49:01\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.3.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(892, 'auto_updater.lock', '1700166415', 'no'),
(896, 'core_updater.lock', '1700166424', 'no'),
(948, '_site_transient_timeout_wp_remote_block_patterns_aacba48e1302c753cb1fae27bd5ede13', '1700180833', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(949, '_site_transient_wp_remote_block_patterns_aacba48e1302c753cb1fae27bd5ede13', 'a:62:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:310596;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Cover Poster on Left, Paragraph on Right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3610:\"\n<div class=\"wp-block-cover alignfull has-custom-content-position is-position-top-center\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#36220c\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-content-justification-space-between is-layout-flex wp-container-8 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-cover is-light has-custom-content-position is-position-top-right wp-container-content-2 wp-duotone-rgb137750-rgb210210210-4\" style=\"padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:75vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2023/04/654642d52f20d6367.57324872.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-vertical is-content-justification-right is-nowrap is-layout-flex wp-container-1 wp-block-group-is-layout-flex\">\n<p class=\"has-text-color\" style=\"color:#e5683a;font-size:140px;font-style:normal;font-weight:800;letter-spacing:-6px;line-height:0.8;text-transform:uppercase\">Wardell</p>\n\n\n\n<p class=\"has-text-color\" style=\"color:#e5683a;font-size:130px;font-style:normal;font-weight:800;letter-spacing:-6px;line-height:0.8;text-transform:uppercase\">gray</p>\n\n\n\n<p class=\"has-text-align-center has-text-color\" style=\"color:#d09c9c;font-size:90px;font-style:normal;font-weight:800;letter-spacing:0px;line-height:1;text-transform:uppercase\">Plays</p>\n\n\n\n<p class=\"has-text-align-center has-text-color\" style=\"color:#e59937;font-size:90px;font-style:normal;font-weight:800;letter-spacing:0px;line-height:0.8;text-transform:uppercase\">Bebop &amp;</p>\n\n\n\n<p class=\"has-text-align-center has-text-color\" style=\"color:#e59937;font-size:90px;font-style:normal;font-weight:800;letter-spacing:0px;line-height:1;text-transform:uppercase\">SWING</p>\n</div>\n</div></div>\n\n\n\n<div class=\"wp-block-group wp-container-content-6 is-vertical is-nowrap is-layout-flex wp-container-7 wp-block-group-is-layout-flex\">\n<p class=\"has-text-color\" style=\"color:#e59937;font-size:18px;font-style:normal;font-weight:400;letter-spacing:0px;line-height:1.7\">Wardell Gray was born in Oklahoma City, the youngest of four children. His early childhood years were spent in Oklahoma, before moving with his family to Detroit in 1929. </p>\n\n\n\n<p class=\"has-text-color\" style=\"color:#e59937;font-size:18px;font-style:normal;font-weight:400;letter-spacing:0px;line-height:1.7\">In early 1935, Gray began attending Northeastern High School, and then transferred to Cass Technical High School, which is noted for having Donald Byrd, Lucky Thompson and Al McKibbon as alumni. </p>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-left is-nowrap is-layout-flex wp-container-5 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size is-style-outline\" style=\"font-size:16px;font-style:normal;font-weight:700;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-text-color wp-element-button\" style=\"border-radius:0px;color:#e59937;padding-top:16px;padding-right:32px;padding-bottom:16px;padding-left:32px\">Listen Now</a></div>\n</div>\n\n\n\n<div style=\"height:7.5vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:73:\"core/button,core/buttons,core/cover,core/group,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:6364:\"<!-- wp:cover {\"customOverlayColor\":\"#36220c\",\"contentPosition\":\"top center\",\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"5vw\",\"right\":\"5vw\",\"bottom\":\"5vw\",\"left\":\"5vw\"},\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull has-custom-content-position is-position-top-center\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#36220c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"3vw\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"verticalAlignment\":\"stretch\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group\"><!-- wp:cover {\"url\":\"https://pd.w.org/2023/04/654642d52f20d6367.57324872.jpg\",\"id\":334,\"dimRatio\":50,\"minHeight\":75,\"minHeightUnit\":\"vh\",\"contentPosition\":\"top right\",\"isDark\":false,\"style\":{\"layout\":{\"selfStretch\":\"fill\"},\"spacing\":{\"padding\":{\"top\":\"4vw\",\"right\":\"4vw\",\"bottom\":\"4vw\",\"left\":\"4vw\"}},\"color\":{\"duotone\":[\"rgb(137, 75, 0)\",\"rgb(210, 210, 210)\"]}}} -->\n<div class=\"wp-block-cover is-light has-custom-content-position is-position-top-right\" style=\"padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:75vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2023/04/654642d52f20d6367.57324872.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"right\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"140px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"800\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-6px\"},\"color\":{\"text\":\"#e5683a\"}}} -->\n<p class=\"has-text-color\" style=\"color:#e5683a;font-size:140px;font-style:normal;font-weight:800;letter-spacing:-6px;line-height:0.8;text-transform:uppercase\">Wardell</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"130px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"800\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-6px\"},\"color\":{\"text\":\"#e5683a\"}}} -->\n<p class=\"has-text-color\" style=\"color:#e5683a;font-size:130px;font-style:normal;font-weight:800;letter-spacing:-6px;line-height:0.8;text-transform:uppercase\">gray</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Saisissez un titre...\",\"style\":{\"typography\":{\"fontSize\":\"90px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"800\",\"letterSpacing\":\"0px\",\"lineHeight\":\"1\"},\"color\":{\"text\":\"#d09c9c\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#d09c9c;font-size:90px;font-style:normal;font-weight:800;letter-spacing:0px;line-height:1;text-transform:uppercase\">Plays</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Saisissez un titre...\",\"style\":{\"typography\":{\"fontSize\":\"90px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"800\",\"letterSpacing\":\"0px\",\"lineHeight\":\"0.8\"},\"color\":{\"text\":\"#e59937\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#e59937;font-size:90px;font-style:normal;font-weight:800;letter-spacing:0px;line-height:0.8;text-transform:uppercase\">Bebop &amp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Saisissez un titre...\",\"style\":{\"typography\":{\"fontSize\":\"90px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"800\",\"letterSpacing\":\"0px\",\"lineHeight\":\"1\"},\"color\":{\"text\":\"#e59937\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#e59937;font-size:90px;font-style:normal;font-weight:800;letter-spacing:0px;line-height:1;text-transform:uppercase\">SWING</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"420px\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\",\"verticalAlignment\":\"bottom\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"18px\",\"letterSpacing\":\"0px\",\"lineHeight\":\"1.7\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\"},\"color\":{\"text\":\"#e59937\"}}} -->\n<p class=\"has-text-color\" style=\"color:#e59937;font-size:18px;font-style:normal;font-weight:400;letter-spacing:0px;line-height:1.7\">Wardell Gray was born in Oklahoma City, the youngest of four children. His early childhood years were spent in Oklahoma, before moving with his family to Detroit in 1929. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"18px\",\"letterSpacing\":\"0px\",\"lineHeight\":\"1.7\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\"},\"color\":{\"text\":\"#e59937\"}}} -->\n<p class=\"has-text-color\" style=\"color:#e59937;font-size:18px;font-style:normal;font-weight:400;letter-spacing:0px;line-height:1.7\">In early 1935, Gray began attending Northeastern High School, and then transferred to Cass Technical High School, which is noted for having Donald Byrd, Lucky Thompson and Al McKibbon as alumni. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"text\":\"#e59937\"},\"border\":{\"radius\":\"0px\"},\"spacing\":{\"padding\":{\"top\":\"16px\",\"right\":\"32px\",\"bottom\":\"16px\",\"left\":\"32px\"}},\"typography\":{\"fontSize\":\"16px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"letterSpacing\":\"0px\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button has-custom-font-size is-style-outline\" style=\"font-size:16px;font-style:normal;font-weight:700;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-text-color wp-element-button\" style=\"border-radius:0px;color:#e59937;padding-top:16px;padding-right:32px;padding-bottom:16px;padding-left:32px\">Listen Now</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":\"7.5vw\"} -->\n<div style=\"height:7.5vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:309277;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:44:\"Fullwidth cover with repeating gradient text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1724:\"\n<div class=\"wp-block-cover alignfull is-light wp-duotone-36345d-abaaaa-12\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\" style=\"background-color:#c2b7a4\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2022/01/95161f850d22f0c06.37817431.jpg\" style=\"object-position:50% 5%\" data-object-fit=\"cover\" data-object-position=\"50% 5%\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-group is-vertical is-content-justification-center is-nowrap is-layout-flex wp-container-10 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-right has-text-color\" style=\"color:#c8c4d3;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n\n\n\n<p class=\"has-text-align-right has-text-color\" style=\"color:#ac94b2;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n\n\n\n<p class=\"has-text-align-right has-text-color\" style=\"color:#71689c;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n\n\n\n<p class=\"has-text-align-right has-text-color\" style=\"color:#444178;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n</div>\n\n\n\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:53:\"pleine largeur, Background Image, Gradient, Uppercase\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:48:\"core/cover,core/group,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3135:\"<!-- wp:cover {\"url\":\"https://pd.w.org/2022/01/95161f850d22f0c06.37817431.jpg\",\"id\":334,\"dimRatio\":60,\"customOverlayColor\":\"#c2b7a4\",\"focalPoint\":{\"x\":0.5,\"y\":0.05},\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"5vw\",\"right\":\"5vw\",\"bottom\":\"5vw\",\"left\":\"5vw\"},\"margin\":{\"top\":\"0\"}},\"color\":{\"duotone\":[\"#36345d\",\"#abaaaa\"]}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\" style=\"background-color:#c2b7a4\"></span><img class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2022/01/95161f850d22f0c06.37817431.jpg\" style=\"object-position:50% 5%\" data-object-fit=\"cover\" data-object-position=\"50% 5%\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":\"48px\"} -->\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"},\"color\":{\"text\":\"#c8c4d3\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#c8c4d3;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"},\"color\":{\"text\":\"#ac94b2\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#ac94b2;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"},\"color\":{\"text\":\"#71689c\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#71689c;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"},\"color\":{\"text\":\"#444178\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#444178;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"48px\"} -->\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:309358;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:72:\"Fullwidth, vertically aligned headline on right with description on left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2140:\"\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#e68b14\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-layout-flex wp-container-19 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group wp-container-content-15 is-layout-flow wp-container-16 wp-block-group-is-layout-flow\">\n<p class=\"wp-container-content-13\" style=\"font-size:17px;font-style:normal;font-weight:300;letter-spacing:0px;line-height:1.4;text-decoration:none;text-transform:none\">Let &#8217;em Roll is an album by American organist Big John Patton recorded in 1965 and released on the Blue Note label.</p>\n\n\n\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:17px;font-style:normal;font-weight:700;letter-spacing:0px;text-decoration:none;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-black-background-color has-text-color has-background wp-element-button\" style=\"border-radius:0px;border-top-style:none;border-top-width:0px;border-right-style:none;border-right-width:0px;border-bottom-style:none;border-bottom-width:0px;border-left-style:none;border-left-width:0px;padding-top:14px;padding-right:36px;padding-bottom:14px;padding-left:36px\">Acheter maintenant</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-group wp-container-content-17 is-layout-flow wp-container-18 wp-block-group-is-layout-flow\">\n<p class=\"has-text-align-right has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">Let<br>&lsquo;EM<br>Roll</p>\n\n\n\n<p class=\"has-text-align-right has-white-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">Big<br>John<br>Patton</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:60:\"vertically, bold, jazz, shop, store, headline, hero, product\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:61:\"core/button,core/buttons,core/cover,core/group,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3736:\"<!-- wp:cover {\"customOverlayColor\":\"#e68b14\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"5vw\",\"right\":\"5vw\",\"bottom\":\"5vw\",\"left\":\"5vw\"},\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#e68b14\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"verticalAlignment\":\"top\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"320px\"},\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"330px\"},\"typography\":{\"fontSize\":\"17px\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"1.4\",\"textTransform\":\"none\",\"textDecoration\":\"none\",\"letterSpacing\":\"0px\"}}} -->\n<p style=\"font-size:17px;font-style:normal;font-weight:300;letter-spacing:0px;line-height:1.4;text-decoration:none;text-transform:none\">Let \'em Roll is an album by American organist Big John Patton recorded in 1965 and released on the Blue Note label.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"backgroundColor\":\"black\",\"textColor\":\"white\",\"style\":{\"typography\":{\"fontSize\":\"17px\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"textDecoration\":\"none\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"0px\"},\"spacing\":{\"padding\":{\"top\":\"14px\",\"bottom\":\"14px\",\"left\":\"36px\",\"right\":\"36px\"}},\"border\":{\"radius\":\"0px\",\"top\":{\"radius\":\"0px\",\"width\":\"0px\",\"style\":\"none\"},\"right\":{\"radius\":\"0px\",\"width\":\"0px\",\"style\":\"none\"},\"bottom\":{\"radius\":\"0px\",\"width\":\"0px\",\"style\":\"none\"},\"left\":{\"radius\":\"0px\",\"width\":\"0px\",\"style\":\"none\"}}}} -->\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:17px;font-style:normal;font-weight:700;letter-spacing:0px;text-decoration:none;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-black-background-color has-text-color has-background wp-element-button\" style=\"border-radius:0px;border-top-style:none;border-top-width:0px;border-right-style:none;border-right-width:0px;border-bottom-style:none;border-bottom-width:0px;border-left-style:none;border-left-width:0px;padding-top:14px;padding-right:36px;padding-bottom:14px;padding-left:36px\">Acheter maintenant</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"},\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"}},\"textColor\":\"black\"} -->\n<p class=\"has-text-align-right has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">Let<br>\'EM<br>Roll</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"}},\"textColor\":\"white\"} -->\n<p class=\"has-text-align-right has-white-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">Big<br>John<br>Patton</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:309075;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:42:\"Bold sale banner with geometric background\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1673:\"\n<div class=\"wp-block-cover alignfull wp-duotone-rgb4448102-ffb23d-24\" style=\"margin-top:0;padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:50vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-90 has-background-dim\" style=\"background-color:#2c3066\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2022/01/2661f82cd1ba9172.16386413.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-layout-flow wp-container-22 wp-block-group-is-layout-flow\">\n<p class=\"has-text-align-center has-text-color\" style=\"color:#ffb23d;font-size:160px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">Enjoy</p>\n\n\n\n<p class=\"has-text-align-center has-text-color\" style=\"color:#ffb23d;font-size:160px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">20% Off</p>\n\n\n\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center is-layout-flex wp-container-21 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:20px;font-style:normal;font-weight:700;letter-spacing:1px;text-transform:uppercase\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#2c3066;background-color:#ffb23d;padding-top:32px;padding-right:48px;padding-bottom:32px;padding-left:48px\">Acheter maintenant</a></div>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:43:\"store, shop, coupon, jazz, background image\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:73:\"core/button,core/buttons,core/cover,core/group,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2829:\"<!-- wp:cover {\"url\":\"https://pd.w.org/2022/01/2661f82cd1ba9172.16386413.jpg\",\"id\":334,\"dimRatio\":90,\"customOverlayColor\":\"#2c3066\",\"minHeight\":50,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4vw\",\"right\":\"4vw\",\"bottom\":\"4vw\",\"left\":\"4vw\"},\"margin\":{\"top\":\"0\"}},\"color\":{\"duotone\":[\"rgb(44, 48, 102)\",\"#ffb23d\"]}}} -->\n<div class=\"wp-block-cover alignfull\" style=\"margin-top:0;padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:50vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-90 has-background-dim\" style=\"background-color:#2c3066\"></span><img class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2022/01/2661f82cd1ba9172.16386413.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"fontSize\":\"160px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.9\",\"letterSpacing\":\"-2px\"},\"color\":{\"text\":\"#ffb23d\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#ffb23d;font-size:160px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">Enjoy</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"fontSize\":\"160px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.9\",\"letterSpacing\":\"-2px\"},\"color\":{\"text\":\"#ffb23d\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#ffb23d;font-size:160px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">20% Off</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"48px\"} -->\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#ffb23d\",\"text\":\"#2c3066\"},\"spacing\":{\"padding\":{\"top\":\"32px\",\"right\":\"48px\",\"bottom\":\"32px\",\"left\":\"48px\"}},\"typography\":{\"fontSize\":\"20px\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"1px\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} -->\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:20px;font-style:normal;font-weight:700;letter-spacing:1px;text-transform:uppercase\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#2c3066;background-color:#ffb23d;padding-top:32px;padding-right:48px;padding-bottom:32px;padding-left:48px\">Acheter maintenant</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:306700;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:30:\"Fullscreen cover image gallery\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:895:\"\n<div class=\"wp-block-cover alignfull\" style=\"padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-100 has-background-dim\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-content-justification-center is-nowrap is-layout-flex wp-container-25 wp-block-group-is-layout-flex\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://thato.test/?page_id=28\"><img decoding=\"async\" src=\"https://pd.w.org/2022/01/84661f60659149cc8.02053291.jpg\" alt=\"\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://thato.test/?page_id=28\"><img decoding=\"async\" src=\"https://pd.w.org/2022/01/21261f60ba46147b0.97888240.jpg\" alt=\"\" /></a></figure>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:50:\"galerie, images, columns, arrière-plan, bannière\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:32:\"core/cover,core/group,core/image\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1259:\"<!-- wp:cover {\"overlayColor\":\"black\",\"minHeight\":66,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4vw\",\"right\":\"4vw\",\"bottom\":\"4vw\",\"left\":\"4vw\"}}}} -->\n<div class=\"wp-block-cover alignfull\" style=\"padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-100 has-background-dim\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"4vw\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-group\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://thato.test/?page_id=28\"><img src=\"https://pd.w.org/2022/01/84661f60659149cc8.02053291.jpg\" alt=\"\" /></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://thato.test/?page_id=28\"><img src=\"https://pd.w.org/2022/01/21261f60ba46147b0.97888240.jpg\" alt=\"\" /></a></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:231639;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:22:\"Header with hero image\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4465:\"\n<div class=\"wp-block-group alignfull is-layout-constrained wp-block-group-is-layout-constrained\">\n<div class=\"wp-block-group alignfull is-content-justification-space-between is-layout-flex wp-container-30 wp-block-group-is-layout-flex\" style=\"padding-top:1em;padding-right:1em;padding-bottom:0em;padding-left:1em\">\n<div class=\"wp-block-group is-layout-flex wp-block-group-is-layout-flex\"><div class=\"wp-block-site-logo\"><span class=\"custom-logo-link\"><img decoding=\"async\" src=\"https://s.w.org/images/wmark.png\" class=\"custom-logo\" alt=\"Logo du site\"></span></div>\n\n<h1 class=\"wp-block-site-title has-medium-font-size\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1></div>\n\n\n<nav class=\"has-medium-font-size is-responsive items-justified-right is-fallback wp-block-navigation has-medium-font-size is-content-justification-right is-layout-flex wp-container-29 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-28\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-28-content\">\n							<ul class=\"wp-block-navigation__container has-medium-font-size is-responsive items-justified-right is-fallback wp-block-navigation has-medium-font-size\"><li class=\"has-medium-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\"has-medium-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\"has-medium-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n\n\n\n<div class=\"wp-block-cover alignfull is-light\" style=\"min-height:490px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-19-fog-lifts-up-after-raind.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=f60b088dac6c7cc04eeebf67f600e079\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<p class=\"has-text-align-center has-large-font-size\"></p>\n</div></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:65:\"Header on a white background followed by a full-width hero image.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:83:\"core/cover,core/group,core/navigation,core/paragraph,core/site-logo,core/site-title\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1960:\"<!-- wp:group {\"align\":\"full\",\"layout\":{\"inherit\":true,\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"bottom\":\"0em\",\"top\":\"1em\",\"right\":\"1em\",\"left\":\"1em\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:1em;padding-right:1em;padding-bottom:0em;padding-left:1em\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"width\":60} /-->\n\n<!-- wp:site-title {\"fontSize\":\"medium\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"},\"fontSize\":\"medium\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:cover {\"url\":\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-19-fog-lifts-up-after-raind.jpg?w=1200&h=1200&fit=clip&crop=default&dpr=1&q=75&vib=3&con=3&usm=15&cs=srgb&bg=F4F4F3&ixlib=js-2.2.1&s=f60b088dac6c7cc04eeebf67f600e079\",\"id\":null,\"dimRatio\":0,\"minHeight\":490,\"minHeightUnit\":\"px\",\"isDark\":false,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"min-height:490px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-19-fog-lifts-up-after-raind.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=f60b088dac6c7cc04eeebf67f600e079\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Saisissez un titre...\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\"></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:group -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:4952;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Trois colonnes avec des images décalées\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1305:\"\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-36 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Détail d’une fenêtre d’un immeuble blanc.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Détail du coin d’un immeuble blanc avec des points saillants et des coins arrondis.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:50:\"Trois colonnes avec des images ayant un décalage.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:47:\"core/column,core/columns,core/image,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1729:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Détail d’une fenêtre d’un immeuble blanc.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Détail du coin d’un immeuble blanc avec des points saillants et des coins arrondis.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:1320;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Trois colonnes de texte\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1145:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background is-layout-flex wp-container-40 wp-block-columns-is-layout-flex\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Visite virtuelle ↗</a></strong></h3>\n\n\n\n<p>Parcourez le musée depuis votre ordinateur. Idéal pour les écoles et les événements.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Expos actuelles ↗</a></strong></h3>\n\n\n\n<p>Suivez nos actualités et parcourez nos expositions en cours ici.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Infos utiles ↗</a></strong></h3>\n\n\n\n<p>Découvrez nos horaires d’ouverture, les prix des billets et les réductions.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:24:\"Trois colonnes de texte.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:52:\"core/column,core/columns,core/heading,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1564:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Visite virtuelle ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Parcourez le musée depuis votre ordinateur. Idéal pour les écoles et les événements.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Expos actuelles ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Suivez nos actualités et parcourez nos expositions en cours ici.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Infos utiles ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Découvrez nos horaires d’ouverture, les prix des billets et les réductions.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:1321;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Trois colonnes avec images et texte\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3596:\"\n<div class=\"wp-block-group alignfull has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#f5eac1;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\">\n<div class=\"wp-block-group is-vertical is-nowrap is-layout-flex wp-container-41 wp-block-group-is-layout-flex\" style=\"padding-right:0;padding-left:0\">\n<h6 class=\"wp-block-heading has-text-color\" id=\"ecosystem\" style=\"color:#000000;font-size:16px\">ÉCOSYSTÈME</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:6vw;font-style:normal;font-weight:700;letter-spacing:0px;line-height:0.9;text-decoration:none;text-transform:none\">Positive growth.</p>\n</div>\n\n\n\n<div style=\"height:1vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-group alignwide is-vertical is-nowrap is-layout-flex wp-container-49 wp-block-group-is-layout-flex\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\">\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-45 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. </p>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"Le soleil se couchant derrière une forêt dense.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Des éoliennes se tiennent sur une plaine herbeuse, avec un ciel bleu en arrière-plan.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-48 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:69%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"Le soleil brille au dessus d’une crête donnant sur le bord de mer. Plus loin, une voiture est visible.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Sans doute n’avons-nous pas de questions à poser qui soient sans réponse. Nous devons faire confiance à la perfection de la création au point de croire que, quelle que soit la curiosité que l’ordre des choses a éveillée dans notre esprit, l’ordre des choses peut la satisfaire. La condition de chaque homme est une solution en hiéroglyphes aux questions qu’il poserait.</p>\n</div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:96:\"Trois colonnes avec des images et du texte, avec un espacement vertical pour un aspect décalé.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:86:\"core/column,core/columns,core/group,core/heading,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:5:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:7:\"gallery\";i:3;s:6:\"images\";i:4;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:5234:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f5eac1\"},\"spacing\":{\"padding\":{\"top\":\"6vw\",\"bottom\":\"6vw\",\"left\":\"6vw\",\"right\":\"6vw\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f5eac1;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"16px\",\"padding\":{\"right\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\" style=\"padding-right:0;padding-left:0\"><!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"16px\"}},\"anchor\":\"ecosystem\"} -->\n<h6 class=\"wp-block-heading has-text-color\" id=\"ecosystem\" style=\"color:#000000;font-size:16px\">ÉCOSYSTÈME</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"0.9\",\"fontSize\":\"6vw\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"textTransform\":\"none\",\"textDecoration\":\"none\",\"letterSpacing\":\"0px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:6vw;font-style:normal;font-weight:700;letter-spacing:0px;line-height:0.9;text-decoration:none;text-transform:none\">Positive growth.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"1vw\"} -->\n<div style=\"height:1vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"3vw\",\"padding\":{\"top\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"right\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\"><!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"3vw\",\"left\":\"3vw\"}}}} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer {\"height\":\"2vw\"} -->\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"Le soleil se couchant derrière une forêt dense.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Des éoliennes se tiennent sur une plaine herbeuse, avec un ciel bleu en arrière-plan.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"left\":\"3vw\"}}}} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"69%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:69%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"Le soleil brille au dessus d’une crête donnant sur le bord de mer. Plus loin, une voiture est visible.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:spacer {\"height\":\"2vw\"} -->\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Sans doute n’avons-nous pas de questions à poser qui soient sans réponse. Nous devons faire confiance à la perfection de la création au point de croire que, quelle que soit la curiosité que l’ordre des choses a éveillée dans notre esprit, l’ordre des choses peut la satisfaire. La condition de chaque homme est une solution en hiéroglyphes aux questions qu’il poserait.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:1322;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:48:\"Deux colonnes de texte avec des titres décalés\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2437:\"\n<div class=\"wp-block-group alignfull has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#f2f0e9\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-layout-flex wp-container-53 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Inspiration océanique</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-57 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Enroulant des voiles autour de leurs têtes, les femmes marchèrent sur le pont. Ils descendaient maintenant progressivement le fleuve, dépassant les formes sombres des navires à l’ancre, et Londres était un fourmillement de lumières avec une voûte jaune pâle qui tombait au-dessus. Il y avait les lumières des grands théâtres, les lumières des longues rues, les lumières qui indiquaient d’immenses espaces de confort domestique, les lumières qui pendaient haut dans l’air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Aucune obscurité ne s’installerait jamais sur ces lampes, comme aucune obscurité ne s’était installée sur elles depuis des centaines d’années. Il semblait effrayant que la ville flambât à jamais au même endroit ; effrayant du moins pour les gens qui partaient à l’aventure sur la mer, et qui la voyaient comme un monticule circonscrit, éternellement brûlé, éternellement balafré. Du pont du navire, la grande ville apparaissait comme une figure recroquevillée et frêle, un miséreux sédentaire.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:46:\"Deux colonnes de texte avec un titre décalé.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:77:\"core/column,core/columns,core/group,core/paragraph,core/separator,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:3036:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Inspiration océanique</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Enroulant des voiles autour de leurs têtes, les femmes marchèrent sur le pont. Ils descendaient maintenant progressivement le fleuve, dépassant les formes sombres des navires à l’ancre, et Londres était un fourmillement de lumières avec une voûte jaune pâle qui tombait au-dessus. Il y avait les lumières des grands théâtres, les lumières des longues rues, les lumières qui indiquaient d’immenses espaces de confort domestique, les lumières qui pendaient haut dans l’air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Aucune obscurité ne s’installerait jamais sur ces lampes, comme aucune obscurité ne s’était installée sur elles depuis des centaines d’années. Il semblait effrayant que la ville flambât à jamais au même endroit ; effrayant du moins pour les gens qui partaient à l’aventure sur la mer, et qui la voyaient comme un monticule circonscrit, éternellement brûlé, éternellement balafré. Du pont du navire, la grande ville apparaissait comme une figure recroquevillée et frêle, un miséreux sédentaire.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:1323;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:82:\"Média et texte dans un conteneur prenant la totalité de la hauteur de l’écran\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1556:\"\n<div class=\"wp-block-cover alignfull is-light\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#ffffff\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Détail d’une terre sèche, craquelée.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"wp-block-heading has-text-color\" style=\"color:#000000;font-size:32px\"><strong>Quel est le problème ?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Les arbres sont aujourd’hui plus importants que jamais. Plus de 10 000 produits seraient fabriqués à partir d’arbres. Les procédés chimiques permettent à l’humble tas de bois de produire des substances synthétiques, des plastiques et des tissus qui dépassaient l’entendement lorsqu’une hache a abattu pour la première fois un arbre du Texas.</p>\n\n\n\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link wp-element-button\">EN SAVOIR PLUS</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:90:\"Bloc média et bloc texte, avec l’image à gauche et le texte à droite, dont un bouton.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:79:\"core/button,core/buttons,core/cover,core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:2132:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#ffffff\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Détail d’une terre sèche, craquelée.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"wp-block-heading has-text-color\" style=\"color:#000000;font-size:32px\"><strong>Quel est le problème ?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Les arbres sont aujourd’hui plus importants que jamais. Plus de 10 000 produits seraient fabriqués à partir d’arbres. Les procédés chimiques permettent à l’humble tas de bois de produire des substances synthétiques, des plastiques et des tissus qui dépassaient l’entendement lorsqu’une hache a abattu pour la première fois un arbre du Texas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link wp-element-button\">EN SAVOIR PLUS</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:1803;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Média et texte avec image sur la droite\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:734:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><div class=\"wp-block-media-text__content\">\n<h2 class=\"wp-block-heading has-text-color\" style=\"color:#000000\"><strong>Rivage avec une mer bleue</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris (Américaine, 1901-1942)</p>\n</div><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"Un paysage vert et marron avec un océan bleu brillant et un ciel plutôt nuageux, réalisé à la peinture à l’huile.\" /></figure></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:74:\"Bloc média et bloc texte, avec l’image à droite et le texte à gauche.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:43:\"core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1170:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"wp-block-heading has-text-color\" style=\"color:#000000\"><strong>Rivage avec une mer bleue</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris (Américaine, 1901-1942)</p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"Un paysage vert et marron avec un océan bleu brillant et un ciel plutôt nuageux, réalisé à la peinture à l’huile.\" /></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:1355;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Média et texte avec image sur la gauche\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:568:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Espaces ouverts</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">Voir l’étude de cas ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:74:\"Bloc média et bloc texte, avec l’image à gauche et le texte à droite.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:43:\"core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:858:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Espaces ouverts</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">Voir l’étude de cas ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:13;O:8:\"stdClass\":7:{s:2:\"id\";i:1324;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large en-tête avec texte et bouton\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1539:\"\n<div class=\"wp-block-cover alignfull has-parallax\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-40 has-background-dim\" style=\"background-color:#000000\"></span><div role=\"img\" class=\"wp-block-cover__image-background has-parallax\" style=\"background-position:50% 50%;background-image:url(https://s.w.org/images/core/5.8/art-01.jpg)\"></div><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<h2 class=\"wp-block-heading alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Outre-mer :</em></strong><br><strong><em>de 1500 à 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-64 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">Une exposition sur les différentes représentations de l’océan à travers le temps, entre le seizième et le vingtième siècle. Elle se déroule dans notre salle ouverte au <em>deuxième étage</em>.</p>\n\n\n\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#ffffff;background-color:#000000\">Visitez</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:84:\"Une grande en-tête avec une image d’arrière-plan, un texte et un bouton en haut.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:88:\"core/button,core/buttons,core/column,core/columns,core/cover,core/heading,core/paragraph\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:2085:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-parallax\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-40 has-background-dim\" style=\"background-color:#000000\"></span><div role=\"img\" class=\"wp-block-cover__image-background has-parallax\" style=\"background-position:50% 50%;background-image:url(https://s.w.org/images/core/5.8/art-01.jpg)\"></div><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"wp-block-heading alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Outre-mer :</em></strong><br><strong><em>de 1500 à 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">Une exposition sur les différentes représentations de l’océan à travers le temps, entre le seizième et le vingtième siècle. Elle se déroule dans notre salle ouverte au <em>deuxième étage</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#ffffff;background-color:#000000\">Visitez</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:14;O:8:\"stdClass\":7:{s:2:\"id\";i:1325;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:44:\"Large en-tête avec texte aligné à gauche.\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1399:\"\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forêt.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-68 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Même un enfant sait combien la forêt est précieuse. L’odeur fraîche des arbres, à vous couper le souffle. L’écho des oiseaux volant au-dessus de cette magnitude dense. Un climat stable, une vie durable et diversifiée et une source de culture. Pourtant, les forêts et d’autres écosystèmes sont en péril, menacés de devenir des terres de culture, des pâturages ou des plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:35:\"Bannière avec une citation en haut\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/column,core/columns,core/cover,core/heading,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1777:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forêt.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":\"330px\"} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Même un enfant sait combien la forêt est précieuse. L’odeur fraîche des arbres, à vous couper le souffle. L’écho des oiseaux volant au-dessus de cette magnitude dense. Un climat stable, une vie durable et diversifiée et une source de culture. Pourtant, les forêts et d’autres écosystèmes sont en péril, menacés de devenir des terres de culture, des pâturages ou des plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:15;O:8:\"stdClass\":7:{s:2:\"id\";i:1326;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Titre\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:608:\"\n<h2 class=\"alignwide wp-block-heading\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">Nous sommes un studio situé à Berlin, avec une forte expérience internationale dans les domaines de l’architecture, de l’urbanisme et de l’aménagement intérieur. Nous croyons au partage des connaissances et à la promotion du dialogue pour accroître le potentiel créatif de la collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:18:\"grand texte, titre\";s:16:\"wpop_description\";s:14:\"Texte du titre\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:12:\"core/heading\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:709:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">Nous sommes un studio situé à Berlin, avec une forte expérience internationale dans les domaines de l’architecture, de l’urbanisme et de l’aménagement intérieur. Nous croyons au partage des connaissances et à la promotion du dialogue pour accroître le potentiel créatif de la collaboration.</h2>\n<!-- /wp:heading -->\";}i:16;O:8:\"stdClass\":7:{s:2:\"id\";i:1332;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:8:\"citation\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:703:\"\n<hr class=\"wp-block-separator has-css-opacity is-style-default\" />\n\n\n\n<figure class=\"wp-block-image aligncenter size-large is-resized is-style-rounded\"><img loading=\"lazy\" decoding=\"async\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"Un portrait de profil d’une femme portant un pull à col roulé ocre et un sac blanc. Elle regarde en l’air et ferme les yeux.\" width=\"150\" height=\"150\" /></figure>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\">\n<p>« Contribuer me donne l’impression d’être utile à la planète »</p>\n<cite>— Anna Wong, <em>Bénévole</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:51:\"core/image,core/paragraph,core/quote,core/separator\";}s:14:\"category_slugs\";a:2:{i:0;s:12:\"testimonials\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1135:\"<!-- wp:separator {\"opacity\":\"css\",\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator has-css-opacity is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image aligncenter size-large is-resized is-style-rounded\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"Un portrait de profil d’une femme portant un pull à col roulé ocre et un sac blanc. Elle regarde en l’air et ferme les yeux.\" width=\"150\" height=\"150\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><!-- wp:paragraph -->\n<p>« Contribuer me donne l’impression d’être utile à la planète »</p>\n<!-- /wp:paragraph --><cite>— Anna Wong, <em>Bénévole</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator has-css-opacity is-style-default\" />\n<!-- /wp:separator -->\";}i:17;O:8:\"stdClass\":7:{s:2:\"id\";i:1334;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:31:\"Deux colonnes de texte et titre\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1689:\"\n<h2 class=\"wp-block-heading\" style=\"font-size:38px;line-height:1.4\"><strong>Le voyage avait commencé, et avait commencé heureusement avec un ciel bleu doux, et une mer calme.</strong></h2>\n\n\n\n<div class=\"wp-block-columns is-layout-flex wp-container-72 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"font-size:18px\">Ils la suivirent sur le pont. Toute la fumée et les maisons avaient disparu, et le navire se trouvait dans un large espace de mer très frais et clair, bien que pâle dans la lumière du matin. Ils avaient laissé Londres assise dans sa boue. Une ligne d’ombre très mince s’effilait à l’horizon, à peine assez épaisse pour soutenir le poids de Paris, qui pourtant reposait dessus. Ils étaient libres des routes, libres des hommes, et la même exaltation de leur liberté les traversait tous.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"font-size:18px\">Le navire avançait tranquillement à travers de petites vagues qui le giflaient puis pétillaient comme de l’eau effervescente, laissant une petite bordure de bulles et d’écume de chaque côté. Au-dessus, le ciel incolore d’octobre était finement voilé comme par la traînée de fumée d’un feu de bois, et l’air était merveilleusement salé et vivifiant. En effet, il faisait trop froid pour rester immobile. Mme Ambrose avait glissé son bras dans celui de son mari, et tandis qu’ils s’éloignaient, on pouvait voir à la façon dont sa joue inclinée se tournait vers la sienne qu’elle avait quelque chose de personnel à lui confier.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:54:\"Deux colonnes de texte précédées par un long titre.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:52:\"core/column,core/columns,core/heading,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1889:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>Le voyage avait commencé, et avait commencé heureusement avec un ciel bleu doux, et une mer calme.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">Ils la suivirent sur le pont. Toute la fumée et les maisons avaient disparu, et le navire se trouvait dans un large espace de mer très frais et clair, bien que pâle dans la lumière du matin. Ils avaient laissé Londres assise dans sa boue. Une ligne d’ombre très mince s’effilait à l’horizon, à peine assez épaisse pour soutenir le poids de Paris, qui pourtant reposait dessus. Ils étaient libres des routes, libres des hommes, et la même exaltation de leur liberté les traversait tous.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">Le navire avançait tranquillement à travers de petites vagues qui le giflaient puis pétillaient comme de l’eau effervescente, laissant une petite bordure de bulles et d’écume de chaque côté. Au-dessus, le ciel incolore d’octobre était finement voilé comme par la traînée de fumée d’un feu de bois, et l’air était merveilleusement salé et vivifiant. En effet, il faisait trop froid pour rester immobile. Mme Ambrose avait glissé son bras dans celui de son mari, et tandis qu’ils s’éloignaient, on pouvait voir à la façon dont sa joue inclinée se tournait vers la sienne qu’elle avait quelque chose de personnel à lui confier.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:18;O:8:\"stdClass\":7:{s:2:\"id\";i:1272;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:26:\"Deux images côte à côte\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:598:\"\n<figure class=\"wp-block-gallery alignwide has-nested-images columns-default is-cropped wp-block-gallery-73 is-layout-flex wp-block-gallery-is-layout-flex\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"Une vue aérienne de vagues s’écrasant sur le bord de mer.\" /></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"Une vue aérienne d’un champ. Une route est visible dans le coin en haut à droite.\" /></figure>\n</figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:52:\"Une galerie d’images avec deux images d’exemple.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:23:\"core/gallery,core/image\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:731:\"<!-- wp:gallery {\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide has-nested-images columns-default is-cropped\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"Une vue aérienne de vagues s’écrasant sur le bord de mer.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"Une vue aérienne d’un champ. Une route est visible dans le coin en haut à droite.\" /></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\";}i:19;O:8:\"stdClass\":7:{s:2:\"id\";i:309935;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:45:\"Centered image with two-tone background color\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1278:\"\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim has-background-gradient\" style=\"background:linear-gradient(90deg,rgb(35,74,20) 50%,rgb(225,137,116) 50%)\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group wp-container-content-76 is-layout-constrained wp-container-77 wp-block-group-is-layout-constrained\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large is-style-default wp-duotone-000000-ffffff-75\"><img decoding=\"async\" src=\"https://pd.w.org/2022/03/3866241b433db4ee2.96648572.jpeg\" alt=\"\" /></figure>\n\n\n\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"wp-block-heading alignwide has-text-align-center has-white-color has-text-color\" style=\"padding-left:32px;font-size:50px;font-style:normal;font-weight:400;letter-spacing:32px;line-height:1;text-transform:uppercase\">Etcetera</h2>\n\n\n\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:18:\"Gradient, Two-Tone\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:57:\"core/cover,core/group,core/heading,core/image,core/spacer\";}s:14:\"category_slugs\";a:3:{i:0;s:6:\"banner\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2134:\"<!-- wp:cover {\"minHeight\":66,\"minHeightUnit\":\"vh\",\"customGradient\":\"linear-gradient(90deg,rgb(35,74,20) 50%,rgb(225,137,116) 50%)\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"5vw\",\"right\":\"5vw\",\"bottom\":\"5vw\",\"left\":\"5vw\"},\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim has-background-gradient\" style=\"background:linear-gradient(90deg,rgb(35,74,20) 50%,rgb(225,137,116) 50%)\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"},\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"600px\",\"wideSize\":\"1200px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"style\":{\"color\":{\"duotone\":[\"#000000\",\"#ffffff\"]}},\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://pd.w.org/2022/03/3866241b433db4ee2.96648572.jpeg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":\"48px\"} -->\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"50px\",\"fontStyle\":\"normal\",\"fontWeight\":\"400\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"32px\",\"lineHeight\":\"1\"},\"spacing\":{\"padding\":{\"left\":\"32px\"}}},\"textColor\":\"white\"} -->\n<h2 class=\"wp-block-heading alignwide has-text-align-center has-white-color has-text-color\" style=\"padding-left:32px;font-size:50px;font-style:normal;font-weight:400;letter-spacing:32px;line-height:1;text-transform:uppercase\">Etcetera</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:20;O:8:\"stdClass\":7:{s:2:\"id\";i:309925;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:43:\"Fullwidth Dark Banner with Heading Top Left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1031:\"\n<div class=\"wp-block-cover alignfull has-custom-content-position is-position-top-left\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw;min-height:50vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-90 has-background-dim\" style=\"background-color:#141414\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-333\" alt=\"\" src=\"https://pd.w.org/2022/07/87262c92d42acd1c3.73206444.jpg\" style=\"object-position:50% 0%\" data-object-fit=\"cover\" data-object-position=\"50% 0%\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group wp-container-content-79 is-vertical is-nowrap is-layout-flex wp-container-80 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-left has-text-color has-source-serif-pro-font-family\" style=\"color:#d8a557;font-size:160px;font-style:italic;font-weight:900;letter-spacing:-4px;line-height:0.8;text-transform:none\">bud!</p>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:16:\"Jazz, Fulllwidth\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:36:\"core/cover,core/group,core/paragraph\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1697:\"<!-- wp:cover {\"url\":\"https://pd.w.org/2022/07/87262c92d42acd1c3.73206444.jpg\",\"id\":333,\"dimRatio\":90,\"customOverlayColor\":\"#141414\",\"focalPoint\":{\"x\":0.5,\"y\":0},\"minHeight\":50,\"minHeightUnit\":\"vh\",\"contentPosition\":\"top left\",\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"5vw\",\"right\":\"5vw\",\"bottom\":\"5vw\",\"left\":\"5vw\"},\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull has-custom-content-position is-position-top-left\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw;min-height:50vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-90 has-background-dim\" style=\"background-color:#141414\"></span><img class=\"wp-block-cover__image-background wp-image-333\" alt=\"\" src=\"https://pd.w.org/2022/07/87262c92d42acd1c3.73206444.jpg\" style=\"object-position:50% 0%\" data-object-fit=\"cover\" data-object-position=\"50% 0%\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"},\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"160px\",\"fontStyle\":\"italic\",\"fontWeight\":\"900\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\",\"textTransform\":\"none\"},\"color\":{\"text\":\"#d8a557\"}},\"fontFamily\":\"source-serif-pro\"} -->\n<p class=\"has-text-align-left has-text-color has-source-serif-pro-font-family\" style=\"color:#d8a557;font-size:160px;font-style:italic;font-weight:900;letter-spacing:-4px;line-height:0.8;text-transform:none\">bud!</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:21;O:8:\"stdClass\":7:{s:2:\"id\";i:309230;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:44:\"Fullwidth cover with repeating gradient text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1724:\"\n<div class=\"wp-block-cover alignfull is-light wp-duotone-36345d-abaaaa-84\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\" style=\"background-color:#c2b7a4\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2022/01/95161f850d22f0c06.37817431.jpg\" style=\"object-position:50% 5%\" data-object-fit=\"cover\" data-object-position=\"50% 5%\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-group is-vertical is-content-justification-center is-nowrap is-layout-flex wp-container-82 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-right has-text-color\" style=\"color:#c8c4d3;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n\n\n\n<p class=\"has-text-align-right has-text-color\" style=\"color:#ac94b2;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n\n\n\n<p class=\"has-text-align-right has-text-color\" style=\"color:#71689c;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n\n\n\n<p class=\"has-text-align-right has-text-color\" style=\"color:#444178;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n</div>\n\n\n\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:48:\"Fullwidth, Background Image, Gradient, Uppercase\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:48:\"core/cover,core/group,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3135:\"<!-- wp:cover {\"url\":\"https://pd.w.org/2022/01/95161f850d22f0c06.37817431.jpg\",\"id\":334,\"dimRatio\":60,\"customOverlayColor\":\"#c2b7a4\",\"focalPoint\":{\"x\":0.5,\"y\":0.05},\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"5vw\",\"right\":\"5vw\",\"bottom\":\"5vw\",\"left\":\"5vw\"},\"margin\":{\"top\":\"0\"}},\"color\":{\"duotone\":[\"#36345d\",\"#abaaaa\"]}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\" style=\"background-color:#c2b7a4\"></span><img class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2022/01/95161f850d22f0c06.37817431.jpg\" style=\"object-position:50% 5%\" data-object-fit=\"cover\" data-object-position=\"50% 5%\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":\"48px\"} -->\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"},\"color\":{\"text\":\"#c8c4d3\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#c8c4d3;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"},\"color\":{\"text\":\"#ac94b2\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#ac94b2;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"},\"color\":{\"text\":\"#71689c\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#71689c;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"},\"color\":{\"text\":\"#444178\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#444178;font-size:148px;font-style:normal;font-weight:300;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">DJANGO</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"48px\"} -->\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\";}i:22;O:8:\"stdClass\":7:{s:2:\"id\";i:309224;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:72:\"Fullwidth, vertically aligned headline on right with description on left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2130:\"\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#e68b14\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-layout-flex wp-container-91 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group wp-container-content-87 is-layout-flow wp-container-88 wp-block-group-is-layout-flow\">\n<p class=\"wp-container-content-85\" style=\"font-size:17px;font-style:normal;font-weight:300;letter-spacing:0px;line-height:1.4;text-decoration:none;text-transform:none\">Let &#8217;em Roll is an album by American organist Big John Patton recorded in 1965 and released on the Blue Note label.</p>\n\n\n\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:17px;font-style:normal;font-weight:700;letter-spacing:0px;text-decoration:none;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-black-background-color has-text-color has-background wp-element-button\" style=\"border-radius:0px;border-top-style:none;border-top-width:0px;border-right-style:none;border-right-width:0px;border-bottom-style:none;border-bottom-width:0px;border-left-style:none;border-left-width:0px;padding-top:14px;padding-right:36px;padding-bottom:14px;padding-left:36px\">Shop Now</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-group wp-container-content-89 is-layout-flow wp-container-90 wp-block-group-is-layout-flow\">\n<p class=\"has-text-align-right has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">Let<br>&lsquo;EM<br>Roll</p>\n\n\n\n<p class=\"has-text-align-right has-white-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">Big<br>John<br>Patton</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:60:\"vertically, bold, jazz, shop, store, headline, hero, product\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:61:\"core/button,core/buttons,core/cover,core/group,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3726:\"<!-- wp:cover {\"customOverlayColor\":\"#e68b14\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"5vw\",\"right\":\"5vw\",\"bottom\":\"5vw\",\"left\":\"5vw\"},\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:5vw;padding-right:5vw;padding-bottom:5vw;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#e68b14\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"verticalAlignment\":\"top\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"320px\"},\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"330px\"},\"typography\":{\"fontSize\":\"17px\",\"fontStyle\":\"normal\",\"fontWeight\":\"300\",\"lineHeight\":\"1.4\",\"textTransform\":\"none\",\"textDecoration\":\"none\",\"letterSpacing\":\"0px\"}}} -->\n<p style=\"font-size:17px;font-style:normal;font-weight:300;letter-spacing:0px;line-height:1.4;text-decoration:none;text-transform:none\">Let \'em Roll is an album by American organist Big John Patton recorded in 1965 and released on the Blue Note label.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"backgroundColor\":\"black\",\"textColor\":\"white\",\"style\":{\"typography\":{\"fontSize\":\"17px\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"textDecoration\":\"none\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"0px\"},\"spacing\":{\"padding\":{\"top\":\"14px\",\"bottom\":\"14px\",\"left\":\"36px\",\"right\":\"36px\"}},\"border\":{\"radius\":\"0px\",\"top\":{\"radius\":\"0px\",\"width\":\"0px\",\"style\":\"none\"},\"right\":{\"radius\":\"0px\",\"width\":\"0px\",\"style\":\"none\"},\"bottom\":{\"radius\":\"0px\",\"width\":\"0px\",\"style\":\"none\"},\"left\":{\"radius\":\"0px\",\"width\":\"0px\",\"style\":\"none\"}}}} -->\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:17px;font-style:normal;font-weight:700;letter-spacing:0px;text-decoration:none;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-black-background-color has-text-color has-background wp-element-button\" style=\"border-radius:0px;border-top-style:none;border-top-width:0px;border-right-style:none;border-right-width:0px;border-bottom-style:none;border-bottom-width:0px;border-left-style:none;border-left-width:0px;padding-top:14px;padding-right:36px;padding-bottom:14px;padding-left:36px\">Shop Now</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"},\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"}},\"textColor\":\"black\"} -->\n<p class=\"has-text-align-right has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">Let<br>\'EM<br>Roll</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.8\",\"letterSpacing\":\"-4px\"}},\"textColor\":\"white\"} -->\n<p class=\"has-text-align-right has-white-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-4px;line-height:0.8;text-transform:uppercase\">Big<br>John<br>Patton</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:23;O:8:\"stdClass\":7:{s:2:\"id\";i:309236;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:60:\"Fullwidth headline with links and gradient offset background\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1893:\"\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:48px;padding-right:5vw;padding-bottom:48px;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim has-background-gradient\" style=\"background:linear-gradient(180deg,rgb(0,0,0) 39%,rgb(83,80,123) 39%)\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-group is-content-justification-space-between is-layout-flex wp-container-98 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group wp-container-content-93 is-layout-flow wp-container-94 wp-block-group-is-layout-flow\">\n<p class=\"has-text-align-left has-white-color has-text-color has-link-color wp-elements-52dc92f2ee4b8dfde042239a7e68e30d\" style=\"font-size:172px;font-style:normal;font-weight:700;letter-spacing:-10px;line-height:0.7;text-transform:uppercase\"><strong>MONK</strong>.</p>\n</div>\n\n\n\n<div class=\"wp-block-group wp-container-content-96 is-layout-flow wp-container-97 wp-block-group-is-layout-flow\">\n<div class=\"wp-block-group is-content-justification-right is-nowrap is-layout-flex wp-container-95 wp-block-group-is-layout-flex\">\n<p class=\"has-white-color has-text-color has-link-color wp-elements-c8902903bdf5ea1baed310a565cbd10e\" style=\"font-size:17px;font-style:normal;font-weight:700;letter-spacing:0px;text-decoration:none;text-transform:uppercase\">A new collection</p>\n\n\n\n<p class=\"has-white-color has-text-color has-link-color wp-elements-669af571686ebf2235f18cd2403659b5\" style=\"font-size:17px;font-style:normal;font-weight:700;letter-spacing:0px;text-decoration:none;text-transform:uppercase\">Learn More → </p>\n</div>\n</div>\n</div>\n\n\n\n<div style=\"height:260px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:41:\"Offset, Gradient, Jazz, Headline, Feature\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:48:\"core/cover,core/group,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3195:\"<!-- wp:cover {\"customGradient\":\"linear-gradient(180deg,rgb(0,0,0) 39%,rgb(83,80,123) 39%)\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"48px\",\"right\":\"5vw\",\"bottom\":\"48px\",\"left\":\"5vw\"},\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:48px;padding-right:5vw;padding-bottom:48px;padding-left:5vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim has-background-gradient\" style=\"background:linear-gradient(180deg,rgb(0,0,0) 39%,rgb(83,80,123) 39%)\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"48px\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"verticalAlignment\":\"top\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"},\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"172px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.7\",\"letterSpacing\":\"-10px\"},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|white\"}}}},\"textColor\":\"white\"} -->\n<p class=\"has-text-align-left has-white-color has-text-color has-link-color\" style=\"font-size:172px;font-style:normal;font-weight:700;letter-spacing:-10px;line-height:0.7;text-transform:uppercase\"><strong>MONK</strong>.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"400px\"},\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"48px\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"right\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"textDecoration\":\"none\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"0px\"},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|white\"}}}},\"textColor\":\"white\"} -->\n<p class=\"has-white-color has-text-color has-link-color\" style=\"font-size:17px;font-style:normal;font-weight:700;letter-spacing:0px;text-decoration:none;text-transform:uppercase\">A new collection</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"textDecoration\":\"none\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"0px\"},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|white\"}}}},\"textColor\":\"white\"} -->\n<p class=\"has-white-color has-text-color has-link-color\" style=\"font-size:17px;font-style:normal;font-weight:700;letter-spacing:0px;text-decoration:none;text-transform:uppercase\">Learn More → </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"260px\"} -->\n<div style=\"height:260px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->\";}i:24;O:8:\"stdClass\":7:{s:2:\"id\";i:308937;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:42:\"Heading, Paragraph, Button with Two Images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2560:\"\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#eb4c77\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-content-justification-center is-layout-flex wp-container-110 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group alignwide wp-container-content-101 is-content-justification-left is-layout-constrained wp-container-102 wp-block-group-is-layout-constrained\">\n<h2 class=\"wp-block-heading alignwide has-text-align-left has-contrast-color has-text-color\" style=\"font-size:100px;font-style:normal;font-weight:500;line-height:0.9;text-transform:none\">Time for an adventure</h2>\n\n\n\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-align-left has-contrast-color has-text-color\">Explore our network of trails that lead through a variety of woodland habitats and observe the diverse flora that call this area home. </p>\n\n\n\n<div style=\"height:60px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-left is-nowrap is-layout-flex wp-container-100 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size is-style-fill\" style=\"font-size:16px;font-style:normal;font-weight:500;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-base-color has-contrast-background-color has-text-color has-background wp-element-button\" style=\"border-radius:0px;padding-top:24px;padding-right:48px;padding-bottom:24px;padding-left:48px\">Sign up</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-group is-content-justification-right is-nowrap is-layout-flex wp-container-109 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group wp-container-content-105 is-layout-flow wp-block-group-is-layout-flow\">\n<div style=\"height:8vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large wp-container-content-103 wp-duotone-rgb000-rgb21788120-104\"><img decoding=\"async\" src=\"https://pd.w.org/2022/01/84661f60659149cc8.02053291.jpg\" alt=\"\" /></figure>\n</div>\n\n\n\n<figure class=\"wp-block-image size-large wp-container-content-107 wp-duotone-rgb000-rgb21788120-108\"><img decoding=\"async\" src=\"https://pd.w.org/2022/01/21261f60ba46147b0.97888240.jpg\" alt=\"\" /></figure>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:97:\"core/button,core/buttons,core/cover,core/group,core/heading,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:4102:\"<!-- wp:cover {\"customOverlayColor\":\"#eb4c77\",\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"6vw\",\"right\":\"6vw\",\"bottom\":\"6vw\",\"left\":\"6vw\"},\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#eb4c77\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0vw\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"justifyContent\":\"center\",\"verticalAlignment\":\"top\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"0px\"},\"layout\":{\"selfStretch\":\"fill\"}},\"layout\":{\"type\":\"constrained\",\"justifyContent\":\"left\",\"contentSize\":\"600px\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:heading {\"textAlign\":\"left\",\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"100px\",\"textTransform\":\"none\",\"fontStyle\":\"normal\",\"fontWeight\":\"500\",\"lineHeight\":\"0.9\"}},\"textColor\":\"contrast\"} -->\n<h2 class=\"wp-block-heading alignwide has-text-align-left has-contrast-color has-text-color\" style=\"font-size:100px;font-style:normal;font-weight:500;line-height:0.9;text-transform:none\">Time for an adventure</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"24px\"} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"textColor\":\"contrast\"} -->\n<p class=\"has-text-align-left has-contrast-color has-text-color\">Explore our network of trails that lead through a variety of woodland habitats and observe the diverse flora that call this area home. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"60px\"} -->\n<div style=\"height:60px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"backgroundColor\":\"contrast\",\"textColor\":\"base\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"24px\",\"right\":\"48px\",\"bottom\":\"24px\",\"left\":\"48px\"}},\"typography\":{\"fontSize\":\"16px\",\"fontStyle\":\"normal\",\"fontWeight\":\"500\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"0px\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-font-size is-style-fill\" style=\"font-size:16px;font-style:normal;font-weight:500;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-base-color has-contrast-background-color has-text-color has-background wp-element-button\" style=\"border-radius:0px;padding-top:24px;padding-right:48px;padding-bottom:24px;padding-left:48px\">Sign up</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fit\",\"flexSize\":null},\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"verticalAlignment\":\"top\",\"justifyContent\":\"right\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"50%\"}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:spacer {\"height\":\"8vw\"} -->\n<div style=\"height:8vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"50%\"},\"color\":{\"duotone\":[\"rgb(0, 0, 0)\",\"rgb(217, 88, 120)\"]}}} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://pd.w.org/2022/01/84661f60659149cc8.02053291.jpg\" alt=\"\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"50%\"},\"color\":{\"duotone\":[\"rgb(0, 0, 0)\",\"rgb(217, 88, 120)\"]}}} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://pd.w.org/2022/01/21261f60ba46147b0.97888240.jpg\" alt=\"\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:25;O:8:\"stdClass\":7:{s:2:\"id\";i:308949;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:42:\"Bold sale banner with geometric background\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1666:\"\n<div class=\"wp-block-cover alignfull wp-duotone-rgb4448102-ffb23d-115\" style=\"margin-top:0;padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:50vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-90 has-background-dim\" style=\"background-color:#2c3066\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2022/01/2661f82cd1ba9172.16386413.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-layout-flow wp-container-113 wp-block-group-is-layout-flow\">\n<p class=\"has-text-align-center has-text-color\" style=\"color:#ffb23d;font-size:160px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">Enjoy</p>\n\n\n\n<p class=\"has-text-align-center has-text-color\" style=\"color:#ffb23d;font-size:160px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">20% Off</p>\n\n\n\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center is-layout-flex wp-container-112 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:20px;font-style:normal;font-weight:700;letter-spacing:1px;text-transform:uppercase\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#2c3066;background-color:#ffb23d;padding-top:32px;padding-right:48px;padding-bottom:32px;padding-left:48px\">Shop Now</a></div>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:43:\"store, shop, coupon, jazz, background image\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:73:\"core/button,core/buttons,core/cover,core/group,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2819:\"<!-- wp:cover {\"url\":\"https://pd.w.org/2022/01/2661f82cd1ba9172.16386413.jpg\",\"id\":334,\"dimRatio\":90,\"customOverlayColor\":\"#2c3066\",\"minHeight\":50,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4vw\",\"right\":\"4vw\",\"bottom\":\"4vw\",\"left\":\"4vw\"},\"margin\":{\"top\":\"0\"}},\"color\":{\"duotone\":[\"rgb(44, 48, 102)\",\"#ffb23d\"]}}} -->\n<div class=\"wp-block-cover alignfull\" style=\"margin-top:0;padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:50vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-90 has-background-dim\" style=\"background-color:#2c3066\"></span><img class=\"wp-block-cover__image-background wp-image-334\" alt=\"\" src=\"https://pd.w.org/2022/01/2661f82cd1ba9172.16386413.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"fontSize\":\"160px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.9\",\"letterSpacing\":\"-2px\"},\"color\":{\"text\":\"#ffb23d\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#ffb23d;font-size:160px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">Enjoy</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"fontSize\":\"160px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.9\",\"letterSpacing\":\"-2px\"},\"color\":{\"text\":\"#ffb23d\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#ffb23d;font-size:160px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">20% Off</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"48px\"} -->\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"background\":\"#ffb23d\",\"text\":\"#2c3066\"},\"spacing\":{\"padding\":{\"top\":\"32px\",\"right\":\"48px\",\"bottom\":\"32px\",\"left\":\"48px\"}},\"typography\":{\"fontSize\":\"20px\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"1px\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}}} -->\n<div class=\"wp-block-button has-custom-font-size\" style=\"font-size:20px;font-style:normal;font-weight:700;letter-spacing:1px;text-transform:uppercase\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#2c3066;background-color:#ffb23d;padding-top:32px;padding-right:48px;padding-bottom:32px;padding-left:48px\">Shop Now</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:26;O:8:\"stdClass\":7:{s:2:\"id\";i:308924;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:47:\"Offset bold paragraph text with varying opacity\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1593:\"\n<div class=\"wp-block-cover alignfull has-white-color has-text-color\" style=\"margin-top:0;padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-100 has-background-dim\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-content-justification-left is-layout-constrained wp-container-116 wp-block-group-is-layout-constrained\">\n<p class=\"has-text-align-left has-text-color\" style=\"color:#ffffff61;font-size:120px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:1;text-transform:uppercase\">Embark</p>\n\n\n\n<p class=\"has-text-align-right has-text-color\" style=\"color:#ffffff73;font-size:72px;font-style:normal;font-weight:700;letter-spacing:0px;line-height:1;text-transform:uppercase\"><strong>ON A HIKING</strong></p>\n\n\n\n<p class=\"has-text-align-left has-text-color\" style=\"color:#ffffffad;font-size:72px;font-style:normal;font-weight:700;letter-spacing:0px;line-height:1;text-transform:uppercase\">adventure and explore the beauty of nature&rsquo;s best…</p>\n\n\n\n<p class=\"has-text-align-right has-text-color\" style=\"color:#ffffffd1;font-size:148px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:1;text-transform:uppercase\">In the</p>\n\n\n\n<p class=\"has-text-align-left has-text-color\" style=\"color:#fffffff5;font-size:162px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:1;text-transform:uppercase\">WOODS.</p>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:36:\"core/cover,core/group,core/paragraph\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3052:\"<!-- wp:cover {\"overlayColor\":\"black\",\"minHeight\":66,\"minHeightUnit\":\"vh\",\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4vw\",\"right\":\"4vw\",\"bottom\":\"4vw\",\"left\":\"4vw\"},\"margin\":{\"top\":\"0\"}}},\"textColor\":\"white\"} -->\n<div class=\"wp-block-cover alignfull has-white-color has-text-color\" style=\"margin-top:0;padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-100 has-background-dim\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"constrained\",\"wideSize\":\"700px\",\"contentSize\":\"700px\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"120px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"1\",\"letterSpacing\":\"-2px\"},\"color\":{\"text\":\"#ffffff61\"}}} -->\n<p class=\"has-text-align-left has-text-color\" style=\"color:#ffffff61;font-size:120px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:1;text-transform:uppercase\">Embark</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"72px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"1\",\"letterSpacing\":\"0px\"},\"color\":{\"text\":\"#ffffff73\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#ffffff73;font-size:72px;font-style:normal;font-weight:700;letter-spacing:0px;line-height:1;text-transform:uppercase\"><strong>ON A HIKING</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"72px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"1\",\"letterSpacing\":\"0px\"},\"color\":{\"text\":\"#ffffffad\"}}} -->\n<p class=\"has-text-align-left has-text-color\" style=\"color:#ffffffad;font-size:72px;font-style:normal;font-weight:700;letter-spacing:0px;line-height:1;text-transform:uppercase\">adventure and explore the beauty of nature\'s best…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"1\",\"letterSpacing\":\"-2px\"},\"color\":{\"text\":\"#ffffffd1\"}}} -->\n<p class=\"has-text-align-right has-text-color\" style=\"color:#ffffffd1;font-size:148px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:1;text-transform:uppercase\">In the</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"162px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"1\",\"letterSpacing\":\"-2px\"},\"color\":{\"text\":\"#fffffff5\"}}} -->\n<p class=\"has-text-align-left has-text-color\" style=\"color:#fffffff5;font-size:162px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:1;text-transform:uppercase\">WOODS.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:27;O:8:\"stdClass\":7:{s:2:\"id\";i:308916;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Offset text with a brutalist design vibe\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1390:\"\n<div class=\"wp-block-cover alignfull is-light has-black-color has-text-color\" style=\"margin-top:0;padding-top:48px;padding-right:48px;padding-bottom:48px;padding-left:48px;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#ffb43c\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-layout-constrained wp-container-118 wp-block-group-is-layout-constrained\">\n<p class=\"has-text-align-left has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\"><mark style=\"color:#a65a00\" class=\"has-inline-color\">✴︎</mark> Walk</p>\n\n\n\n<p class=\"has-text-align-right has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">In the</p>\n\n\n\n<p class=\"has-text-align-left has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">Park</p>\n\n\n\n<p class=\"has-text-align-center has-text-color\" style=\"color:#a65a00;font-size:140px;font-style:italic;font-weight:200;letter-spacing:0px;line-height:0.9;text-transform:uppercase\">—01.03</p>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:36:\"core/cover,core/group,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2631:\"<!-- wp:cover {\"customOverlayColor\":\"#ffb43c\",\"minHeight\":66,\"minHeightUnit\":\"vh\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"48px\",\"right\":\"48px\",\"bottom\":\"48px\",\"left\":\"48px\"},\"margin\":{\"top\":\"0\"}}},\"textColor\":\"black\"} -->\n<div class=\"wp-block-cover alignfull is-light has-black-color has-text-color\" style=\"margin-top:0;padding-top:48px;padding-right:48px;padding-bottom:48px;padding-left:48px;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#ffb43c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0px\"}},\"layout\":{\"type\":\"constrained\",\"wideSize\":\"1200px\",\"contentSize\":\"800px\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.9\",\"letterSpacing\":\"-2px\"}},\"textColor\":\"black\"} -->\n<p class=\"has-text-align-left has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\"><mark style=\"color:#a65a00\" class=\"has-inline-color\">✴︎</mark> Walk</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.9\",\"letterSpacing\":\"-2px\"}},\"textColor\":\"black\"} -->\n<p class=\"has-text-align-right has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">In the</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"148px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"lineHeight\":\"0.9\",\"letterSpacing\":\"-2px\"}},\"textColor\":\"black\"} -->\n<p class=\"has-text-align-left has-black-color has-text-color\" style=\"font-size:148px;font-style:normal;font-weight:700;letter-spacing:-2px;line-height:0.9;text-transform:uppercase\">Park</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"fontSize\":\"140px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"italic\",\"fontWeight\":\"200\",\"letterSpacing\":\"0px\",\"lineHeight\":\"0.9\"},\"color\":{\"text\":\"#a65a00\"}}} -->\n<p class=\"has-text-align-center has-text-color\" style=\"color:#a65a00;font-size:140px;font-style:italic;font-weight:200;letter-spacing:0px;line-height:0.9;text-transform:uppercase\">—01.03</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:28;O:8:\"stdClass\":7:{s:2:\"id\";i:308901;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Fullscreen image with right content area\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2045:\"\n<div class=\"wp-block-cover alignfull\" style=\"margin-top:0;padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#376a23\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-content-justification-left is-layout-flex wp-container-124 wp-block-group-is-layout-flex\">\n<figure class=\"wp-block-image size-large wp-container-content-120\"><img decoding=\"async\" src=\"https://pd.w.org/2022/01/84661f60659149cc8.02053291.jpg\" alt=\"\" /></figure>\n\n\n\n<div class=\"wp-block-group alignwide wp-container-content-122 is-content-justification-left is-layout-constrained wp-container-123 wp-block-group-is-layout-constrained\">\n<h2 class=\"wp-block-heading alignwide has-text-align-left has-black-color has-text-color\" style=\"font-size:80px;font-style:italic;font-weight:700;line-height:1.0;text-transform:uppercase\">wAndering through the woods</h2>\n\n\n\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-align-left has-black-color has-text-color\" style=\"font-size:18px;font-style:italic;font-weight:600\">Explore our network of trails that lead through a variety of woodland habitats and observe the diverse flora that call this area home. </p>\n\n\n\n<div style=\"height:60px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-left is-nowrap is-layout-flex wp-container-121 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size is-style-fill\" style=\"font-size:18px;font-style:italic;font-weight:600;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-black-background-color has-text-color has-background wp-element-button\" style=\"border-radius:0px;padding-top:24px;padding-right:48px;padding-bottom:24px;padding-left:48px\">Sign up</a></div>\n</div>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:97:\"core/button,core/buttons,core/cover,core/group,core/heading,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3261:\"<!-- wp:cover {\"customOverlayColor\":\"#376a23\",\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4vw\",\"right\":\"4vw\",\"bottom\":\"4vw\",\"left\":\"4vw\"},\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull\" style=\"margin-top:0;padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#376a23\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"4vw\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:image {\"sizeSlug\":\"large\",\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"50%\"}}} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://pd.w.org/2022/01/84661f60659149cc8.02053291.jpg\" alt=\"\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"0px\"},\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"constrained\",\"justifyContent\":\"left\",\"contentSize\":\"600px\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:heading {\"textAlign\":\"left\",\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"80px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"italic\",\"fontWeight\":\"700\",\"lineHeight\":\"1.0\"}},\"textColor\":\"black\"} -->\n<h2 class=\"wp-block-heading alignwide has-text-align-left has-black-color has-text-color\" style=\"font-size:80px;font-style:italic;font-weight:700;line-height:1.0;text-transform:uppercase\">wAndering through the woods</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":\"24px\"} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"18px\",\"fontStyle\":\"italic\",\"fontWeight\":\"600\"}},\"textColor\":\"black\"} -->\n<p class=\"has-text-align-left has-black-color has-text-color\" style=\"font-size:18px;font-style:italic;font-weight:600\">Explore our network of trails that lead through a variety of woodland habitats and observe the diverse flora that call this area home. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"60px\"} -->\n<div style=\"height:60px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"backgroundColor\":\"black\",\"textColor\":\"white\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"24px\",\"right\":\"48px\",\"bottom\":\"24px\",\"left\":\"48px\"}},\"typography\":{\"fontSize\":\"18px\",\"fontStyle\":\"italic\",\"fontWeight\":\"600\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"0px\"},\"border\":{\"radius\":\"0px\"}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-font-size is-style-fill\" style=\"font-size:18px;font-style:italic;font-weight:600;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-black-background-color has-text-color has-background wp-element-button\" style=\"border-radius:0px;padding-top:24px;padding-right:48px;padding-bottom:24px;padding-left:48px\">Sign up</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:29;O:8:\"stdClass\":7:{s:2:\"id\";i:308871;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:46:\"Cover Image with Bold Heading and Button, Left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1528:\"\n<div class=\"wp-block-cover alignfull is-light wp-duotone-094850-f9644e-129\" style=\"margin-top:0;padding-top:48px;padding-right:48px;padding-bottom:48px;padding-left:48px;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-30 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-335\" alt=\"\" src=\"https://pd.w.org/2021/12/12261b91fba359867.64939140.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-content-justification-left is-layout-constrained wp-container-126 wp-block-group-is-layout-constrained\">\n<h2 class=\"wp-block-heading has-text-align-left has-white-color has-text-color\" style=\"font-size:100px;font-style:normal;font-weight:700;letter-spacing:0px;line-height:1;text-transform:uppercase\">Take a hike and wAnder through the woods</h2>\n</div>\n\n\n\n<div style=\"height:72px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-left is-nowrap is-layout-flex wp-container-127 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size is-style-outline\" style=\"font-size:16px;font-style:normal;font-weight:600;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-text-color wp-element-button\" style=\"padding-top:24px;padding-right:48px;padding-bottom:24px;padding-left:48px\">Explore</a></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:71:\"core/button,core/buttons,core/cover,core/group,core/heading,core/spacer\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2443:\"<!-- wp:cover {\"url\":\"https://pd.w.org/2021/12/12261b91fba359867.64939140.jpg\",\"id\":335,\"dimRatio\":30,\"minHeight\":66,\"minHeightUnit\":\"vh\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"48px\",\"right\":\"48px\",\"bottom\":\"48px\",\"left\":\"48px\"},\"margin\":{\"top\":\"0\"}},\"color\":{\"duotone\":[\"#094850\",\"#f9644e\"]}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:48px;padding-right:48px;padding-bottom:48px;padding-left:48px;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-30 has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-335\" alt=\"\" src=\"https://pd.w.org/2021/12/12261b91fba359867.64939140.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"48px\"}},\"layout\":{\"type\":\"constrained\",\"contentSize\":\"75%\",\"justifyContent\":\"left\",\"wideSize\":\"75%\"}} -->\n<div class=\"wp-block-group\"><!-- wp:heading {\"textAlign\":\"left\",\"style\":{\"typography\":{\"fontSize\":\"100px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"letterSpacing\":\"0px\",\"lineHeight\":\"1\"}},\"textColor\":\"white\"} -->\n<h2 class=\"wp-block-heading has-text-align-left has-white-color has-text-color\" style=\"font-size:100px;font-style:normal;font-weight:700;letter-spacing:0px;line-height:1;text-transform:uppercase\">Take a hike and wAnder through the woods</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"72px\"} -->\n<div style=\"height:72px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"left\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"textColor\":\"white\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"24px\",\"right\":\"48px\",\"bottom\":\"24px\",\"left\":\"48px\"}},\"typography\":{\"fontSize\":\"16px\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"0px\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button has-custom-font-size is-style-outline\" style=\"font-size:16px;font-style:normal;font-weight:600;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-text-color wp-element-button\" style=\"padding-top:24px;padding-right:48px;padding-bottom:24px;padding-left:48px\">Explore</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:cover -->\";}i:30;O:8:\"stdClass\":7:{s:2:\"id\";i:308868;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Cover Image with Bold Heading and Button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1536:\"\n<div class=\"wp-block-cover alignfull is-light wp-duotone-rgb4247103-rgb21419442-133\" style=\"margin-top:0;padding-top:48px;padding-right:48px;padding-bottom:48px;padding-left:48px;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-30 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-335\" alt=\"\" src=\"https://pd.w.org/2022/01/26061d763eca13bb6.11341561.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-layout-constrained wp-container-130 wp-block-group-is-layout-constrained\">\n<h2 class=\"wp-block-heading has-text-align-center has-white-color has-text-color\" style=\"font-size:100px;font-style:normal;font-weight:700;letter-spacing:0px;line-height:1;text-transform:uppercase\">Embark on a hiking adventure and explore the beauty of the woods.</h2>\n</div>\n\n\n\n<div style=\"height:72px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center is-nowrap is-layout-flex wp-container-131 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-font-size is-style-outline\" style=\"font-size:16px;font-style:normal;font-weight:600;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-text-color wp-element-button\" style=\"padding-top:24px;padding-right:48px;padding-bottom:24px;padding-left:48px\">Explore</a></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:71:\"core/button,core/buttons,core/cover,core/group,core/heading,core/spacer\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2449:\"<!-- wp:cover {\"url\":\"https://pd.w.org/2022/01/26061d763eca13bb6.11341561.jpg\",\"id\":335,\"dimRatio\":30,\"minHeight\":66,\"minHeightUnit\":\"vh\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"48px\",\"right\":\"48px\",\"bottom\":\"48px\",\"left\":\"48px\"},\"margin\":{\"top\":\"0\"}},\"color\":{\"duotone\":[\"rgb(42, 47, 103)\",\"rgb(214, 194, 42)\"]}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;padding-top:48px;padding-right:48px;padding-bottom:48px;padding-left:48px;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-30 has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-335\" alt=\"\" src=\"https://pd.w.org/2022/01/26061d763eca13bb6.11341561.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"48px\"}},\"layout\":{\"type\":\"constrained\",\"wideSize\":\"80%\"}} -->\n<div class=\"wp-block-group\"><!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"typography\":{\"fontSize\":\"100px\",\"textTransform\":\"uppercase\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"letterSpacing\":\"0px\",\"lineHeight\":\"1\"}},\"textColor\":\"white\"} -->\n<h2 class=\"wp-block-heading has-text-align-center has-white-color has-text-color\" style=\"font-size:100px;font-style:normal;font-weight:700;letter-spacing:0px;line-height:1;text-transform:uppercase\">Embark on a hiking adventure and explore the beauty of the woods.</h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"72px\"} -->\n<div style=\"height:72px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"textColor\":\"white\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"24px\",\"right\":\"48px\",\"bottom\":\"24px\",\"left\":\"48px\"}},\"typography\":{\"fontSize\":\"16px\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"0px\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button has-custom-font-size is-style-outline\" style=\"font-size:16px;font-style:normal;font-weight:600;letter-spacing:0px;text-transform:uppercase\"><a class=\"wp-block-button__link has-white-color has-text-color wp-element-button\" style=\"padding-top:24px;padding-right:48px;padding-bottom:24px;padding-left:48px\">Explore</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:cover -->\";}i:31;O:8:\"stdClass\":7:{s:2:\"id\";i:303828;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:30:\"Fullscreen cover image gallery\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:896:\"\n<div class=\"wp-block-cover alignfull\" style=\"padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-100 has-background-dim\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group is-content-justification-center is-nowrap is-layout-flex wp-container-134 wp-block-group-is-layout-flex\">\n<figure class=\"wp-block-image size-large\"><a href=\"https://thato.test/?page_id=28\"><img decoding=\"async\" src=\"https://pd.w.org/2022/01/84661f60659149cc8.02053291.jpg\" alt=\"\" /></a></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><a href=\"https://thato.test/?page_id=28\"><img decoding=\"async\" src=\"https://pd.w.org/2022/01/21261f60ba46147b0.97888240.jpg\" alt=\"\" /></a></figure>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:43:\"gallery, images, columns, background, cover\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:32:\"core/cover,core/group,core/image\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1259:\"<!-- wp:cover {\"overlayColor\":\"black\",\"minHeight\":66,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"4vw\",\"right\":\"4vw\",\"bottom\":\"4vw\",\"left\":\"4vw\"}}}} -->\n<div class=\"wp-block-cover alignfull\" style=\"padding-top:4vw;padding-right:4vw;padding-bottom:4vw;padding-left:4vw;min-height:66vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-100 has-background-dim\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"4vw\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-group\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://thato.test/?page_id=28\"><img src=\"https://pd.w.org/2022/01/84661f60659149cc8.02053291.jpg\" alt=\"\" /></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image size-large\"><a href=\"https://thato.test/?page_id=28\"><img src=\"https://pd.w.org/2022/01/21261f60ba46147b0.97888240.jpg\" alt=\"\" /></a></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\";}i:32;O:8:\"stdClass\":7:{s:2:\"id\";i:277265;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Fullwidth posts with uppercase titles\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:7006:\"\n<div class=\"wp-block-query alignfull is-layout-flow wp-block-query-is-layout-flow\">\n<div class=\"wp-block-group alignfull is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\"><ul style=\"text-transform:none;\" class=\"wp-block-post-template is-layout-flow wp-block-post-template-is-layout-flow\"><li class=\"wp-block-post post-2071 post type-post status-publish format-standard hentry category-space tag-planet\">\n\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"border-bottom-color:var(--wp--preset--color--contrast);border-bottom-width:1px\">\n<div class=\"wp-block-group is-content-justification-space-between is-nowrap is-layout-flex wp-container-137 wp-block-group-is-layout-flex\" style=\"padding-top:16px;padding-right:16px;padding-bottom:16px;padding-left:16px\">\n<div class=\"wp-block-group is-nowrap is-layout-flex wp-container-136 wp-block-group-is-layout-flex\">\n<p>✴︎</p>\n\n\n<div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; text-transform:uppercase;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date has-small-font-size wp-elements-4003f76eccbf507a9e3d7e84a42ea154\"><time datetime=\"2021-07-06T21:31:35+00:00\">Juil 6, 2021</time></div></div>\n\n\n<div style=\"text-transform:uppercase\" class=\"taxonomy-category has-link-color has-text-color has-contrast-color wp-block-post-terms wp-elements-d846021732facad792835971f80af878\"><span class=\"wp-block-post-terms__prefix\">✴︎ </span><a href=\"https://wordpress.org/patterns/category/space/\" rel=\"tag\">Space</a></div></div>\n</div>\n\n\n\n<div class=\"wp-block-group is-vertical is-layout-flex wp-container-140 wp-block-group-is-layout-flex\" style=\"padding-top:16px;padding-right:16px;padding-bottom:var(--wp--preset--spacing--70);padding-left:16px\"><h2 style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:5.2rem;font-style:normal;font-weight:500;line-height:1.1;text-transform:uppercase;\" class=\"has-link-color has-text-color has-contrast-color wp-block-post-title wp-elements-eba6f7f6e0a9160611aa886fe4e31449 is-layout-flow wp-block-post-title-is-layout-flow\"><a href=\"https://wordpress.org/patterns/jupiter/\" target=\"_self\" >Jupiter</a></h2></div>\n\n</li><li class=\"wp-block-post post-2069 post type-post status-publish format-standard hentry category-space tag-stars\">\n\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"border-bottom-color:var(--wp--preset--color--contrast);border-bottom-width:1px\">\n<div class=\"wp-block-group is-content-justification-space-between is-nowrap is-layout-flex wp-container-142 wp-block-group-is-layout-flex\" style=\"padding-top:16px;padding-right:16px;padding-bottom:16px;padding-left:16px\">\n<div class=\"wp-block-group is-nowrap is-layout-flex wp-container-141 wp-block-group-is-layout-flex\">\n<p>✴︎</p>\n\n\n<div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; text-transform:uppercase;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date has-small-font-size wp-elements-4003f76eccbf507a9e3d7e84a42ea154\"><time datetime=\"2021-07-06T21:30:31+00:00\">Juil 6, 2021</time></div></div>\n\n\n<div style=\"text-transform:uppercase\" class=\"taxonomy-category has-link-color has-text-color has-contrast-color wp-block-post-terms wp-elements-d846021732facad792835971f80af878\"><span class=\"wp-block-post-terms__prefix\">✴︎ </span><a href=\"https://wordpress.org/patterns/category/space/\" rel=\"tag\">Space</a></div></div>\n</div>\n\n\n\n<div class=\"wp-block-group is-vertical is-layout-flex wp-container-145 wp-block-group-is-layout-flex\" style=\"padding-top:16px;padding-right:16px;padding-bottom:var(--wp--preset--spacing--70);padding-left:16px\"><h2 style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:5.2rem;font-style:normal;font-weight:500;line-height:1.1;text-transform:uppercase;\" class=\"has-link-color has-text-color has-contrast-color wp-block-post-title wp-elements-eba6f7f6e0a9160611aa886fe4e31449 is-layout-flow wp-block-post-title-is-layout-flow\"><a href=\"https://wordpress.org/patterns/star-clusters-in-hurcules/\" target=\"_self\" >Star Clusters in Hurcules</a></h2></div>\n\n</li><li class=\"wp-block-post post-2067 post type-post status-publish format-standard hentry category-space tag-planet\">\n\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"border-bottom-color:var(--wp--preset--color--contrast);border-bottom-width:1px\">\n<div class=\"wp-block-group is-content-justification-space-between is-nowrap is-layout-flex wp-container-147 wp-block-group-is-layout-flex\" style=\"padding-top:16px;padding-right:16px;padding-bottom:16px;padding-left:16px\">\n<div class=\"wp-block-group is-nowrap is-layout-flex wp-container-146 wp-block-group-is-layout-flex\">\n<p>✴︎</p>\n\n\n<div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; text-transform:uppercase;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date has-small-font-size wp-elements-4003f76eccbf507a9e3d7e84a42ea154\"><time datetime=\"2021-07-05T21:29:00+00:00\">Juil 5, 2021</time></div></div>\n\n\n<div style=\"text-transform:uppercase\" class=\"taxonomy-category has-link-color has-text-color has-contrast-color wp-block-post-terms wp-elements-d846021732facad792835971f80af878\"><span class=\"wp-block-post-terms__prefix\">✴︎ </span><a href=\"https://wordpress.org/patterns/category/space/\" rel=\"tag\">Space</a></div></div>\n</div>\n\n\n\n<div class=\"wp-block-group is-vertical is-layout-flex wp-container-150 wp-block-group-is-layout-flex\" style=\"padding-top:16px;padding-right:16px;padding-bottom:var(--wp--preset--spacing--70);padding-left:16px\"><h2 style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:5.2rem;font-style:normal;font-weight:500;line-height:1.1;text-transform:uppercase;\" class=\"has-link-color has-text-color has-contrast-color wp-block-post-title wp-elements-eba6f7f6e0a9160611aa886fe4e31449 is-layout-flow wp-block-post-title-is-layout-flow\"><a href=\"https://wordpress.org/patterns/saturn/\" target=\"_self\" >Saturn</a></h2></div>\n\n</li></ul></div>\n\n\n\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--30);padding-right:16px;padding-bottom:var(--wp--preset--spacing--30);padding-left:16px\"><nav class=\"wp-block-query-pagination is-content-justification-left is-nowrap is-layout-flex wp-container-153 wp-block-query-pagination-is-layout-flex\" aria-label=\"Pagination\">\n\n\n<a href=\"/patterns/wp-json/wp/v2/wporg-pattern?page=1&#038;per_page=100&#038;order=desc&#038;orderby=date&#038;locale=fr_FR&#038;wp-version=6.3.2&#038;pattern-keywords=11&#038;_fields=id%2Ctitle%2Ccontent%2Cmeta%2Ccategory_slugs%2Ckeyword_slugs%2Cpattern_content&#038;query-31-page=2\" style=\"text-transform:uppercase;\" class=\"wp-block-query-pagination-next has-small-font-size\">Next</a>\n</nav></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:30:\"star, posts, loop, blog, index\";s:16:\"wpop_description\";s:62:\"A fullwidth posts pattern with large titles and start accents.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/query\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:182:\"core/group,core/paragraph,core/post-date,core/post-template,core/post-terms,core/post-title,core/query,core/query-pagination,core/query-pagination-next,core/query-pagination-previous\";}s:14:\"category_slugs\";a:1:{i:0;s:5:\"query\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3502:\"<!-- wp:query {\"queryId\":31,\"query\":{\"perPage\":3,\"pages\":0,\"offset\":0,\"postType\":\"post\",\"order\":\"desc\",\"orderBy\":\"date\",\"author\":\"\",\"search\":\"\",\"exclude\":[],\"sticky\":\"\",\"inherit\":false},\"align\":\"full\",\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-query alignfull\"><!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\"><!-- wp:post-template {\"style\":{\"typography\":{\"textTransform\":\"none\"}}} -->\n<!-- wp:group {\"style\":{\"border\":{\"bottom\":{\"color\":\"var:preset|color|contrast\",\"width\":\"1px\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\" style=\"border-bottom-color:var(--wp--preset--color--contrast);border-bottom-width:1px\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"16px\",\"right\":\"16px\",\"bottom\":\"16px\",\"left\":\"16px\"}}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group\" style=\"padding-top:16px;padding-right:16px;padding-bottom:16px;padding-left:16px\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"4px\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph -->\n<p>✴︎</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:post-date {\"textAlign\":\"left\",\"format\":\"M j, Y\",\"style\":{\"spacing\":{\"margin\":{\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}},\"typography\":{\"textTransform\":\"uppercase\"}},\"textColor\":\"contrast\",\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:post-terms {\"term\":\"category\",\"prefix\":\"✴︎ \",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}},\"typography\":{\"textTransform\":\"uppercase\"}},\"textColor\":\"contrast\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"16px\",\"bottom\":\"var:preset|spacing|70\",\"right\":\"16px\",\"left\":\"16px\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group\" style=\"padding-top:16px;padding-right:16px;padding-bottom:var(--wp--preset--spacing--70);padding-left:16px\"><!-- wp:post-title {\"isLink\":true,\"style\":{\"spacing\":{\"margin\":{\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\"}},\"layout\":{\"selfStretch\":\"fit\"},\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"500\",\"lineHeight\":\"1.1\",\"textTransform\":\"uppercase\",\"fontSize\":\"5.2rem\"},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}},\"textColor\":\"contrast\"} /--></div>\n<!-- /wp:group -->\n<!-- /wp:post-template --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"right\":\"16px\",\"left\":\"16px\"},\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--30);padding-right:16px;padding-bottom:var(--wp--preset--spacing--30);padding-left:16px\"><!-- wp:query-pagination {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"left\"}} -->\n<!-- wp:query-pagination-previous {\"label\":\"Previous\",\"style\":{\"typography\":{\"textTransform\":\"uppercase\"}},\"fontSize\":\"small\"} /-->\n\n<!-- wp:query-pagination-next {\"label\":\"Next\",\"style\":{\"typography\":{\"textTransform\":\"uppercase\"}},\"fontSize\":\"small\"} /-->\n<!-- /wp:query-pagination --></div>\n<!-- /wp:group --></div>\n<!-- /wp:query -->\";}i:33;O:8:\"stdClass\":7:{s:2:\"id\";i:277127;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:33:\"Fullwidth posts titles with dates\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:6521:\"\n<div class=\"wp-block-query alignfull is-layout-flow wp-block-query-is-layout-flow\">\n<div class=\"wp-block-group alignfull is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:0;padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--40)\"><ul style=\"text-transform:none;\" class=\"alignfull wp-block-post-template is-layout-flow wp-block-post-template-is-layout-flow\"><li class=\"wp-block-post post-2071 post type-post status-publish format-standard hentry category-space tag-planet\">\n\n<div class=\"wp-block-group is-layout-flow wp-container-158 wp-block-group-is-layout-flow\" style=\"padding-bottom:var(--wp--preset--spacing--50)\">\n<div class=\"wp-block-group is-content-justification-space-between is-nowrap is-layout-flex wp-container-156 wp-block-group-is-layout-flex\" style=\"border-bottom-color:var(--wp--preset--color--contrast);border-bottom-width:4px;padding-top:var(--wp--preset--spacing--30);padding-right:0;padding-bottom:var(--wp--preset--spacing--30);padding-left:0\"><div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:2rem;font-style:normal;font-weight:600;letter-spacing:1px;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date wp-elements-5813a8450eb0347cfdf34f1870882db6\"><time datetime=\"2021-07-06T21:31:35+00:00\">07.6</time></div>\n\n<div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:2rem;font-style:normal;font-weight:600;letter-spacing:1px;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date wp-elements-672016f5c95dcb277e0d666c7795c645\"><time datetime=\"2021-07-06T21:31:35+00:00\">2021</time></div></div>\n\n\n<h2 style=\"padding-top:var(--wp--preset--spacing--30); font-size:4.6rem;font-style:normal;font-weight:600;line-height:1.1;\" class=\"has-link-color has-text-color has-contrast-color wp-block-post-title wp-elements-b5fa43084743aafd1d185f08a32e7678 is-layout-flow wp-block-post-title-is-layout-flow\"><a href=\"https://wordpress.org/patterns/jupiter/\" target=\"_self\" >Jupiter</a></h2></div>\n\n</li><li class=\"wp-block-post post-2069 post type-post status-publish format-standard hentry category-space tag-stars\">\n\n<div class=\"wp-block-group is-layout-flow wp-container-161 wp-block-group-is-layout-flow\" style=\"padding-bottom:var(--wp--preset--spacing--50)\">\n<div class=\"wp-block-group is-content-justification-space-between is-nowrap is-layout-flex wp-container-159 wp-block-group-is-layout-flex\" style=\"border-bottom-color:var(--wp--preset--color--contrast);border-bottom-width:4px;padding-top:var(--wp--preset--spacing--30);padding-right:0;padding-bottom:var(--wp--preset--spacing--30);padding-left:0\"><div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:2rem;font-style:normal;font-weight:600;letter-spacing:1px;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date wp-elements-5813a8450eb0347cfdf34f1870882db6\"><time datetime=\"2021-07-06T21:30:31+00:00\">07.6</time></div>\n\n<div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:2rem;font-style:normal;font-weight:600;letter-spacing:1px;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date wp-elements-672016f5c95dcb277e0d666c7795c645\"><time datetime=\"2021-07-06T21:30:31+00:00\">2021</time></div></div>\n\n\n<h2 style=\"padding-top:var(--wp--preset--spacing--30); font-size:4.6rem;font-style:normal;font-weight:600;line-height:1.1;\" class=\"has-link-color has-text-color has-contrast-color wp-block-post-title wp-elements-b5fa43084743aafd1d185f08a32e7678 is-layout-flow wp-block-post-title-is-layout-flow\"><a href=\"https://wordpress.org/patterns/star-clusters-in-hurcules/\" target=\"_self\" >Star Clusters in Hurcules</a></h2></div>\n\n</li><li class=\"wp-block-post post-2067 post type-post status-publish format-standard hentry category-space tag-planet\">\n\n<div class=\"wp-block-group is-layout-flow wp-container-164 wp-block-group-is-layout-flow\" style=\"padding-bottom:var(--wp--preset--spacing--50)\">\n<div class=\"wp-block-group is-content-justification-space-between is-nowrap is-layout-flex wp-container-162 wp-block-group-is-layout-flex\" style=\"border-bottom-color:var(--wp--preset--color--contrast);border-bottom-width:4px;padding-top:var(--wp--preset--spacing--30);padding-right:0;padding-bottom:var(--wp--preset--spacing--30);padding-left:0\"><div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:2rem;font-style:normal;font-weight:600;letter-spacing:1px;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date wp-elements-5813a8450eb0347cfdf34f1870882db6\"><time datetime=\"2021-07-05T21:29:00+00:00\">07.5</time></div>\n\n<div style=\"margin-top:0;margin-right:0;margin-bottom:0;margin-left:0; font-size:2rem;font-style:normal;font-weight:600;letter-spacing:1px;\" class=\"has-text-align-left has-link-color has-text-color has-contrast-color wp-block-post-date wp-elements-672016f5c95dcb277e0d666c7795c645\"><time datetime=\"2021-07-05T21:29:00+00:00\">2021</time></div></div>\n\n\n<h2 style=\"padding-top:var(--wp--preset--spacing--30); font-size:4.6rem;font-style:normal;font-weight:600;line-height:1.1;\" class=\"has-link-color has-text-color has-contrast-color wp-block-post-title wp-elements-b5fa43084743aafd1d185f08a32e7678 is-layout-flow wp-block-post-title-is-layout-flow\"><a href=\"https://wordpress.org/patterns/saturn/\" target=\"_self\" >Saturn</a></h2></div>\n\n</li></ul></div>\n\n\n\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--40);padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--40)\"><nav class=\"wp-block-query-pagination is-content-justification-space-between is-nowrap is-layout-flex wp-container-167 wp-block-query-pagination-is-layout-flex\" aria-label=\"Pagination\">\n\n\n<a href=\"/patterns/wp-json/wp/v2/wporg-pattern?page=1&#038;per_page=100&#038;order=desc&#038;orderby=date&#038;locale=fr_FR&#038;wp-version=6.3.2&#038;pattern-keywords=11&#038;_fields=id%2Ctitle%2Ccontent%2Cmeta%2Ccategory_slugs%2Ckeyword_slugs%2Cpattern_content&#038;query-1-page=2\" style=\"font-size:2rem;font-style:normal;font-weight:600;text-transform:uppercase;letter-spacing:1px;\" class=\"wp-block-query-pagination-next\">Page suivante</a>\n</nav></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:31:\"Posts, Query, Loop, Blog, Index\";s:16:\"wpop_description\";s:62:\"A fullwidth posts pattern with large titles and numeral dates.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/query\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:151:\"core/group,core/post-date,core/post-template,core/post-title,core/query,core/query-pagination,core/query-pagination-next,core/query-pagination-previous\";}s:14:\"category_slugs\";a:1:{i:0;s:5:\"query\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3583:\"<!-- wp:query {\"queryId\":1,\"query\":{\"perPage\":3,\"pages\":0,\"offset\":0,\"postType\":\"post\",\"order\":\"desc\",\"orderBy\":\"date\",\"author\":\"\",\"search\":\"\",\"exclude\":[],\"sticky\":\"\",\"inherit\":false},\"align\":\"full\",\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-query alignfull\"><!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"0\",\"right\":\"var:preset|spacing|40\",\"bottom\":\"var:preset|spacing|40\",\"left\":\"var:preset|spacing|40\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:0;padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--40)\"><!-- wp:post-template {\"align\":\"full\",\"style\":{\"typography\":{\"textTransform\":\"none\"}}} -->\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0\",\"padding\":{\"bottom\":\"var:preset|spacing|50\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\" style=\"padding-bottom:var(--wp--preset--spacing--50)\"><!-- wp:group {\"style\":{\"border\":{\"bottom\":{\"color\":\"var:preset|color|contrast\",\"width\":\"4px\"}},\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"0\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group\" style=\"border-bottom-color:var(--wp--preset--color--contrast);border-bottom-width:4px;padding-top:var(--wp--preset--spacing--30);padding-right:0;padding-bottom:var(--wp--preset--spacing--30);padding-left:0\"><!-- wp:post-date {\"textAlign\":\"left\",\"format\":\"m.j\",\"style\":{\"spacing\":{\"margin\":{\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}},\"typography\":{\"letterSpacing\":\"1px\",\"fontSize\":\"2rem\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\"}},\"textColor\":\"contrast\"} /-->\n\n<!-- wp:post-date {\"textAlign\":\"left\",\"format\":\"Y\",\"style\":{\"spacing\":{\"margin\":{\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}},\"typography\":{\"letterSpacing\":\"1px\",\"fontSize\":\"2rem\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\"}},\"textColor\":\"contrast\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:post-title {\"isLink\":true,\"style\":{\"layout\":{\"selfStretch\":\"fit\"},\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"4.6rem\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\"},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}},\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\"}}},\"textColor\":\"contrast\"} /--></div>\n<!-- /wp:group -->\n<!-- /wp:post-template --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|40\",\"bottom\":\"var:preset|spacing|40\",\"right\":\"var:preset|spacing|40\",\"left\":\"var:preset|spacing|40\"},\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--40);padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--40)\"><!-- wp:query-pagination {\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"space-between\"}} -->\n<!-- wp:query-pagination-previous {\"style\":{\"typography\":{\"fontSize\":\"2rem\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"1px\"}}} /-->\n\n<!-- wp:query-pagination-next {\"style\":{\"typography\":{\"fontSize\":\"2rem\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\",\"textTransform\":\"uppercase\",\"letterSpacing\":\"1px\"}}} /-->\n<!-- /wp:query-pagination --></div>\n<!-- /wp:group --></div>\n<!-- /wp:query -->\";}i:34;O:8:\"stdClass\":7:{s:2:\"id\";i:229092;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Header inside full-width background image\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4826:\"\n<div class=\"wp-block-group alignfull is-layout-constrained wp-block-group-is-layout-constrained\">\n<div class=\"wp-block-cover alignfull is-light\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30);min-height:50px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-61\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\" style=\"object-position:50% 50%\" data-object-fit=\"cover\" data-object-position=\"50% 50%\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-group alignwide has-base-color has-text-color has-link-color wp-elements-a5c55c350363e1349d710a58148fd7b6 is-content-justification-space-between is-layout-flex wp-container-173 wp-block-group-is-layout-flex\" style=\"margin-top:0;margin-bottom:0\">\n<div class=\"wp-block-group is-layout-flex wp-block-group-is-layout-flex\"><div class=\"is-default-size is-style-default wp-block-site-logo\"><span class=\"custom-logo-link\"><img decoding=\"async\" src=\"https://s.w.org/images/wmark.png\" class=\"custom-logo\" alt=\"Logo du site\"></span></div>\n\n<h1 class=\"has-link-color has-text-color has-white-color wp-block-site-title has-medium-font-size wp-elements-e24c80986e13ab3d929b38d6b46e3019\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1></div>\n\n\n<nav class=\"has-text-color has-white-color is-responsive items-justified-right is-fallback wp-block-navigation is-content-justification-right is-layout-flex wp-container-172 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-171\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-171-content\">\n							<ul class=\"wp-block-navigation__container has-text-color has-white-color is-responsive items-justified-right is-fallback wp-block-navigation\"><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n\n\n\n<div style=\"height:33vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:100:\"Simple header with logo, site title, navigation and a full-width background image with dark overlay.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:80:\"core/cover,core/group,core/navigation,core/site-logo,core/site-title,core/spacer\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2554:\"<!-- wp:group {\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:cover {\"url\":\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&h=1200&fit=clip&crop=default&dpr=1&q=75&vib=3&con=3&usm=15&cs=srgb&bg=F4F4F3&ixlib=js-2.2.1&s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\",\"id\":61,\"dimRatio\":50,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.5,\"y\":0.5},\"minHeight\":50,\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30);min-height:50px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-61\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\" style=\"object-position:50% 50%\" data-object-fit=\"cover\" data-object-position=\"50% 50%\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|base\"}}},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"textColor\":\"base\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide has-base-color has-text-color has-link-color\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo {\"className\":\"is-style-default\"} /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|background\"}}}},\"textColor\":\"white\",\"fontSize\":\"medium\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"textColor\":\"white\",\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"33vw\"} -->\n<div style=\"height:33vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:group -->\";}i:35;O:8:\"stdClass\":7:{s:2:\"id\";i:229097;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Simple header with dark background\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3898:\"\n<div class=\"wp-block-group alignfull has-background-color has-white-color has-black-background-color has-text-color has-background has-link-color wp-elements-4956719e1d36ae31d9fb9c185b0a148a is-layout-constrained wp-block-group-is-layout-constrained\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group alignwide is-content-justification-space-between is-layout-flex wp-container-179 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-layout-flex wp-block-group-is-layout-flex\"><div class=\"is-default-size wp-block-site-logo\"><span class=\"custom-logo-link\"><img decoding=\"async\" src=\"https://s.w.org/images/wmark.png\" class=\"custom-logo\" alt=\"Logo du site\"></span></div>\n\n<h1 class=\"has-link-color wp-block-site-title wp-elements-f1e98d6c897e424c7d4e8232ded39f0a\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1></div>\n\n\n<nav class=\"is-responsive items-justified-right is-fallback wp-block-navigation is-content-justification-right is-layout-flex wp-container-178 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-177\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-177-content\">\n							<ul class=\"wp-block-navigation__container is-responsive items-justified-right is-fallback wp-block-navigation\"><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:76:\"Simple header with logo, site title, navigation links and a dark background.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:57:\"core/group,core/navigation,core/site-logo,core/site-title\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"header\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1232:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|white\"}}},\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}},\"backgroundColor\":\"black\",\"textColor\":\"white\",\"className\":\"has-background-color\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-white-color has-black-background-color has-text-color has-background has-link-color\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|white\"}}}}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:36;O:8:\"stdClass\":7:{s:2:\"id\";i:229101;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Text-only header with tagline\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3655:\"\n<div class=\"wp-block-group alignfull is-layout-constrained wp-block-group-is-layout-constrained\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group alignwide is-content-justification-space-between is-layout-flex wp-container-184 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-layout-flex wp-block-group-is-layout-flex\"><h1 class=\"has-link-color wp-block-site-title wp-elements-d6202aa7d337f2ce08aedc8ed261a84e\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n<p class=\"wp-block-site-tagline\">Beautifully designed patterns ready to go with a simple copy/paste</p></div>\n\n\n<nav class=\"is-responsive items-justified-right is-fallback wp-block-navigation is-content-justification-right is-layout-flex wp-container-183 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-182\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-182-content\">\n							<ul class=\"wp-block-navigation__container is-responsive items-justified-right is-fallback wp-block-navigation\"><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:53:\"Header with site title, tagline and navigation links.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:60:\"core/group,core/navigation,core/site-tagline,core/site-title\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"header\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:966:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}}} /-->\n\n<!-- wp:site-tagline /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:37;O:8:\"stdClass\":7:{s:2:\"id\";i:229105;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:26:\"Simple header with tagline\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4227:\"\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color has-link-color wp-elements-7479bd1e590756c4aa927894dbdbef4e is-layout-constrained wp-block-group-is-layout-constrained\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group alignwide is-content-justification-space-between is-layout-flex wp-container-190 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-layout-flex wp-container-187 wp-block-group-is-layout-flex\"><div class=\"is-default-size wp-block-site-logo\"><span class=\"custom-logo-link\"><img decoding=\"async\" src=\"https://s.w.org/images/wmark.png\" class=\"custom-logo\" alt=\"Logo du site\"></span></div>\n\n\n<div class=\"wp-block-group is-vertical is-layout-flex wp-container-186 wp-block-group-is-layout-flex\"><h1 class=\"has-link-color wp-block-site-title wp-elements-d6202aa7d337f2ce08aedc8ed261a84e\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n<p class=\"wp-block-site-tagline has-small-font-size\">Beautifully designed patterns ready to go with a simple copy/paste</p></div>\n</div>\n\n\n<nav class=\"has-small-font-size is-responsive items-justified-right is-fallback wp-block-navigation has-small-font-size is-content-justification-right is-layout-flex wp-container-189 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-188\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-188-content\">\n							<ul class=\"wp-block-navigation__container has-small-font-size is-responsive items-justified-right is-fallback wp-block-navigation has-small-font-size\"><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:92:\"Header with site logo, title and tagline on the left and with navigation links on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:75:\"core/group,core/navigation,core/site-logo,core/site-tagline,core/site-title\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"header\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1389:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}},\"textColor\":\"contrast\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color has-link-color\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo /-->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"4px\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}}} /-->\n\n<!-- wp:site-tagline {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:38;O:8:\"stdClass\":7:{s:2:\"id\";i:229111;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:36:\"Fullwidth site title and menu button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3427:\"\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color has-link-color wp-elements-e0434f7bbe3c9d87e2f1562e19b734da is-content-justification-space-between is-layout-flex wp-container-194 wp-block-group-is-layout-flex\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><h1 class=\"wp-block-site-title\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n<nav class=\"is-responsive items-justified-right is-fallback wp-block-navigation is-content-justification-right is-layout-flex wp-container-193 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open always-shown\" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container hidden-by-default \" style=\"\" id=\"modal-192\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-192-content\">\n							<ul class=\"wp-block-navigation__container is-responsive items-justified-right is-fallback wp-block-navigation\"><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:51:\"Header with site title and a hamburger menu button.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:42:\"core/group,core/navigation,core/site-title\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"header\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:794:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}},\"textColor\":\"contrast\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color has-link-color\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:site-title /-->\n\n<!-- wp:navigation {\"overlayMenu\":\"always\",\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group -->\";}i:39;O:8:\"stdClass\":7:{s:2:\"id\";i:229116;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Fullwidth header with hero image\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4758:\"\n<div class=\"wp-block-group alignfull is-layout-constrained wp-block-group-is-layout-constrained\">\n<div class=\"wp-block-group alignfull is-content-justification-space-between is-layout-flex wp-container-199 wp-block-group-is-layout-flex\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group is-layout-flex wp-container-196 wp-block-group-is-layout-flex\"><div class=\"is-default-size wp-block-site-logo\"><span class=\"custom-logo-link\"><img decoding=\"async\" src=\"https://s.w.org/images/wmark.png\" class=\"custom-logo\" alt=\"Logo du site\"></span></div>\n\n\n<div class=\"wp-block-group is-vertical is-layout-flex wp-container-195 wp-block-group-is-layout-flex\"><h1 class=\"has-link-color wp-block-site-title has-medium-font-size wp-elements-234e57400cf5587740bb7caa261d6fc4\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1></div>\n</div>\n\n\n<nav class=\"is-responsive items-justified-right is-fallback wp-block-navigation is-content-justification-right is-layout-flex wp-container-198 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-197\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-197-content\">\n							<ul class=\"wp-block-navigation__container is-responsive items-justified-right is-fallback wp-block-navigation\"><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n\n\n\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;min-height:40vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-0 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background wp-image-61\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\" style=\"object-position:50% 50%\" data-object-fit=\"cover\" data-object-position=\"50% 50%\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:65:\"Header on a white background followed by a full-width hero image.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:80:\"core/cover,core/group,core/navigation,core/site-logo,core/site-title,core/spacer\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:2566:\"<!-- wp:group {\"align\":\"full\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\"><!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo /-->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"4px\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}},\"fontSize\":\"medium\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:cover {\"url\":\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&h=1200&fit=clip&crop=default&dpr=1&q=75&vib=3&con=3&usm=15&cs=srgb&bg=F4F4F3&ixlib=js-2.2.1&s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\",\"id\":61,\"dimRatio\":0,\"overlayColor\":\"black\",\"focalPoint\":{\"x\":0.5,\"y\":0.5},\"minHeight\":40,\"minHeightUnit\":\"vw\",\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\",\"style\":{\"spacing\":{\"margin\":{\"top\":\"0\"}}}} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"margin-top:0;min-height:40vw\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-black-background-color has-background-dim-0 has-background-dim\"></span><img class=\"wp-block-cover__image-background wp-image-61\" alt=\"\" src=\"https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a017-eberhard-cco-the-after-rain.jpg?w=1200&amp;h=1200&amp;fit=clip&amp;crop=default&amp;dpr=1&amp;q=75&amp;vib=3&amp;con=3&amp;usm=15&amp;cs=srgb&amp;bg=F4F4F3&amp;ixlib=js-2.2.1&amp;s=e7b4ca0a0edcc84ba48c1f7ebf02dd5a\" style=\"object-position:50% 50%\" data-object-fit=\"cover\" data-object-position=\"50% 50%\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":\"50px\"} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:group -->\";}i:40;O:8:\"stdClass\":7:{s:2:\"id\";i:229080;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:25:\"Centered header with logo\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3725:\"\n<div class=\"wp-block-group alignfull is-layout-constrained wp-block-group-is-layout-constrained\" style=\"padding-top:var(--wp--preset--spacing--40);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group alignwide is-vertical is-content-justification-center is-layout-flex wp-container-204 wp-block-group-is-layout-flex\"><div class=\"is-default-size wp-block-site-logo\"><span class=\"custom-logo-link\"><img decoding=\"async\" src=\"https://s.w.org/images/wmark.png\" class=\"custom-logo\" alt=\"Logo du site\"></span></div>\n\n<h1 class=\"has-link-color has-text-color has-contrast-color wp-block-site-title has-large-font-size wp-elements-9728cce79011b64628d7f6beff066787\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n<nav class=\"is-responsive items-justified-center is-fallback wp-block-navigation is-content-justification-center is-layout-flex wp-container-203 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-202\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-202-content\">\n							<ul class=\"wp-block-navigation__container is-responsive items-justified-center is-fallback wp-block-navigation\"><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:65:\"Center aligned header with logo, site title and navigation links.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:57:\"core/group,core/navigation,core/site-logo,core/site-title\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"header\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:926:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|40\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|40\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--40);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:site-logo /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}},\"textColor\":\"contrast\",\"fontSize\":\"large\"} /-->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"center\"}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:41;O:8:\"stdClass\":7:{s:2:\"id\";i:229084;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Fullwidth header with large font size\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3555:\"\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color has-link-color wp-elements-4b5a1e7a31f9f44eaeb3ab45e5ae60f1 is-content-justification-space-between is-layout-flex wp-container-208 wp-block-group-is-layout-flex\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><h1 class=\"wp-block-site-title has-large-font-size\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n<nav class=\"has-large-font-size is-responsive items-justified-right is-fallback wp-block-navigation has-large-font-size is-content-justification-right is-layout-flex wp-container-207 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-206\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-206-content\">\n							<ul class=\"wp-block-navigation__container has-large-font-size is-responsive items-justified-right is-fallback wp-block-navigation has-large-font-size\"><li class=\"has-large-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\"has-large-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\"has-large-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:80:\"Header with a large site title and navigation links in the same large font size.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:42:\"core/group,core/navigation,core/site-title\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"header\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:811:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}},\"textColor\":\"contrast\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\"}} -->\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color has-link-color\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:site-title {\"fontSize\":\"large\"} /-->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"},\"fontSize\":\"large\"} /--></div>\n<!-- /wp:group -->\";}i:42;O:8:\"stdClass\":7:{s:2:\"id\";i:229088;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:13:\"Simple header\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3761:\"\n<div class=\"wp-block-group alignfull is-layout-constrained wp-block-group-is-layout-constrained\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group alignwide is-content-justification-space-between is-layout-flex wp-container-212 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-layout-flex wp-container-209 wp-block-group-is-layout-flex\"><div class=\"is-default-size wp-block-site-logo\"><span class=\"custom-logo-link\"><img decoding=\"async\" src=\"https://s.w.org/images/wmark.png\" class=\"custom-logo\" alt=\"Logo du site\"></span></div>\n\n<h1 class=\"has-link-color wp-block-site-title wp-elements-d6202aa7d337f2ce08aedc8ed261a84e\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1></div>\n\n\n<nav class=\"is-responsive items-justified-right is-fallback wp-block-navigation is-content-justification-right is-layout-flex wp-container-211 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-210\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-210-content\">\n							<ul class=\"wp-block-navigation__container is-responsive items-justified-right is-fallback wp-block-navigation\"><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\" wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:51:\"Simple header with logo, site title and navigation.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/header\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:57:\"core/group,core/navigation,core/site-logo,core/site-title\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"header\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1021:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|30\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|30\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"padding-top:var(--wp--preset--spacing--30);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--30);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-logo /-->\n\n<!-- wp:site-title {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|contrast\"}}}}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"right\"}} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:43;O:8:\"stdClass\":7:{s:2:\"id\";i:229123;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:33:\"Centered footer with social links\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4180:\"\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color is-vertical is-content-justification-center is-layout-flex wp-container-216 wp-block-group-is-layout-flex\" style=\"min-height:30vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--60);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--50)\">\n<div class=\"wp-block-group is-nowrap is-layout-flex wp-container-215 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-center\">Proudly powered by <a href=\"https://wordpress.org\">WordPress</a></p>\n\n\n\n<ul class=\"wp-block-social-links has-small-icon-size is-style-logos-only is-nowrap is-layout-flex wp-container-214 wp-block-social-links-is-layout-flex\"><li class=\"wp-social-link wp-social-link-twitter  wp-block-social-link\"><a href=\"https://#\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M22.23,5.924c-0.736,0.326-1.527,0.547-2.357,0.646c0.847-0.508,1.498-1.312,1.804-2.27 c-0.793,0.47-1.671,0.812-2.606,0.996C18.324,4.498,17.257,4,16.077,4c-2.266,0-4.103,1.837-4.103,4.103 c0,0.322,0.036,0.635,0.106,0.935C8.67,8.867,5.647,7.234,3.623,4.751C3.27,5.357,3.067,6.062,3.067,6.814 c0,1.424,0.724,2.679,1.825,3.415c-0.673-0.021-1.305-0.206-1.859-0.513c0,0.017,0,0.034,0,0.052c0,1.988,1.414,3.647,3.292,4.023 c-0.344,0.094-0.707,0.144-1.081,0.144c-0.264,0-0.521-0.026-0.772-0.074c0.522,1.63,2.038,2.816,3.833,2.85 c-1.404,1.1-3.174,1.756-5.096,1.756c-0.331,0-0.658-0.019-0.979-0.057c1.816,1.164,3.973,1.843,6.29,1.843 c7.547,0,11.675-6.252,11.675-11.675c0-0.178-0.004-0.355-0.012-0.531C20.985,7.47,21.68,6.747,22.23,5.924z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Twitter</span></a></li>\n\n<li class=\"wp-social-link wp-social-link-instagram  wp-block-social-link\"><a href=\"https://#\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M12,4.622c2.403,0,2.688,0.009,3.637,0.052c0.877,0.04,1.354,0.187,1.671,0.31c0.42,0.163,0.72,0.358,1.035,0.673 c0.315,0.315,0.51,0.615,0.673,1.035c0.123,0.317,0.27,0.794,0.31,1.671c0.043,0.949,0.052,1.234,0.052,3.637 s-0.009,2.688-0.052,3.637c-0.04,0.877-0.187,1.354-0.31,1.671c-0.163,0.42-0.358,0.72-0.673,1.035 c-0.315,0.315-0.615,0.51-1.035,0.673c-0.317,0.123-0.794,0.27-1.671,0.31c-0.949,0.043-1.233,0.052-3.637,0.052 s-2.688-0.009-3.637-0.052c-0.877-0.04-1.354-0.187-1.671-0.31c-0.42-0.163-0.72-0.358-1.035-0.673 c-0.315-0.315-0.51-0.615-0.673-1.035c-0.123-0.317-0.27-0.794-0.31-1.671C4.631,14.688,4.622,14.403,4.622,12 s0.009-2.688,0.052-3.637c0.04-0.877,0.187-1.354,0.31-1.671c0.163-0.42,0.358-0.72,0.673-1.035 c0.315-0.315,0.615-0.51,1.035-0.673c0.317-0.123,0.794-0.27,1.671-0.31C9.312,4.631,9.597,4.622,12,4.622 M12,3 C9.556,3,9.249,3.01,8.289,3.054C7.331,3.098,6.677,3.25,6.105,3.472C5.513,3.702,5.011,4.01,4.511,4.511 c-0.5,0.5-0.808,1.002-1.038,1.594C3.25,6.677,3.098,7.331,3.054,8.289C3.01,9.249,3,9.556,3,12c0,2.444,0.01,2.751,0.054,3.711 c0.044,0.958,0.196,1.612,0.418,2.185c0.23,0.592,0.538,1.094,1.038,1.594c0.5,0.5,1.002,0.808,1.594,1.038 c0.572,0.222,1.227,0.375,2.185,0.418C9.249,20.99,9.556,21,12,21s2.751-0.01,3.711-0.054c0.958-0.044,1.612-0.196,2.185-0.418 c0.592-0.23,1.094-0.538,1.594-1.038c0.5-0.5,0.808-1.002,1.038-1.594c0.222-0.572,0.375-1.227,0.418-2.185 C20.99,14.751,21,14.444,21,12s-0.01-2.751-0.054-3.711c-0.044-0.958-0.196-1.612-0.418-2.185c-0.23-0.592-0.538-1.094-1.038-1.594 c-0.5-0.5-1.002-0.808-1.594-1.038c-0.572-0.222-1.227-0.375-2.185-0.418C14.751,3.01,14.444,3,12,3L12,3z M12,7.378 c-2.552,0-4.622,2.069-4.622,4.622S9.448,16.622,12,16.622s4.622-2.069,4.622-4.622S14.552,7.378,12,7.378z M12,15 c-1.657,0-3-1.343-3-3s1.343-3,3-3s3,1.343,3,3S13.657,15,12,15z M16.804,6.116c-0.596,0-1.08,0.484-1.08,1.08 s0.484,1.08,1.08,1.08c0.596,0,1.08-0.484,1.08-1.08S17.401,6.116,16.804,6.116z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Instagram</span></a></li></ul>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:82:\"Centered footer with the sentence \"Proudly powered by WordPress\" and social links.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/footer\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:25:\"core/group,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"footer\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1495:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"right\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|60\",\"left\":\"var:preset|spacing|50\",\"top\":\"var:preset|spacing|60\"},\"blockGap\":\"var:preset|spacing|40\",\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}},\"dimensions\":{\"minHeight\":\"30vh\"}},\"textColor\":\"contrast\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"center\",\"verticalAlignment\":\"center\"}} -->\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color\" style=\"min-height:30vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--60);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"24px\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Proudly powered by <a href=\"https://wordpress.org\">WordPress</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:social-links {\"size\":\"has-small-icon-size\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"8px\",\"left\":\"8px\"}}},\"className\":\"is-style-logos-only\",\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<ul class=\"wp-block-social-links has-small-icon-size is-style-logos-only\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:44;O:8:\"stdClass\":7:{s:2:\"id\";i:229127;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:47:\"Footer with search, site title, and credit line\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2966:\"\n<div class=\"wp-block-group alignfull has-background is-layout-constrained wp-block-group-is-layout-constrained\" style=\"background-color:#00000008;padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--40)\">\n<div class=\"wp-block-group alignwide is-content-justification-space-between is-layout-flex wp-container-223 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group wp-container-content-218 is-content-justification-left is-layout-constrained wp-container-219 wp-block-group-is-layout-constrained\">\n<p class=\"has-text-align-left\" style=\"font-size:0.9rem;font-style:normal;font-weight:600;letter-spacing:1px;text-transform:uppercase\">Search</p>\n\n\n<form role=\"search\" method=\"get\" action=\"https://wordpress.org/patterns/\" class=\"wp-block-search__button-outside wp-block-search__icon-button wp-block-search\"    ><label class=\"wp-block-search__label screen-reader-text\" for=\"wp-block-search__input-217\" >Search</label><div class=\"wp-block-search__inside-wrapper \"  style=\"width: 100%\"><input class=\"wp-block-search__input\" id=\"wp-block-search__input-217\" placeholder=\"\" value=\"\" type=\"search\" name=\"s\" required  style=\"border-width: 1px\"/><button aria-label=\"Search\" class=\"wp-block-search__button has-icon wp-element-button\" type=\"submit\"  style=\"border-width: 1px\"><svg class=\"search-icon\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\">\n					<path d=\"M13 5c-3.3 0-6 2.7-6 6 0 1.4.5 2.7 1.3 3.7l-3.8 3.8 1.1 1.1 3.8-3.8c1 .8 2.3 1.3 3.7 1.3 3.3 0 6-2.7 6-6S16.3 5 13 5zm0 10.5c-2.5 0-4.5-2-4.5-4.5s2-4.5 4.5-4.5 4.5 2 4.5 4.5-2 4.5-4.5 4.5z\"></path>\n				</svg></button></div></form></div>\n\n\n\n<div class=\"wp-block-group is-content-justification-right is-nowrap is-layout-flex wp-container-222 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-vertical is-layout-flex wp-container-221 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-left\" style=\"font-size:0.9rem;font-style:normal;font-weight:600;letter-spacing:1px;text-transform:uppercase\">Social</p>\n\n\n\n<div class=\"wp-block-group has-small-font-size is-vertical is-content-justification-left is-layout-flex wp-container-220 wp-block-group-is-layout-flex\">\n<p><a href=\"#\">Facebook</a></p>\n\n\n\n<p><a href=\"#\">Instagram</a></p>\n\n\n\n<p><a href=\"#\">Twitter</a></p>\n</div>\n</div>\n</div>\n</div>\n\n\n\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-group alignwide is-content-justification-space-between is-layout-flex wp-container-225 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-layout-flex wp-block-group-is-layout-flex\"><h1 class=\"wp-block-site-title has-small-font-size\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1></div>\n\n\n\n<p class=\"has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:88:\"Footer with search field and site title on the left, and small credit line on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/footer\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:65:\"core/group,core/paragraph,core/search,core/site-title,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"footer\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:3254:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"right\":\"var:preset|spacing|40\",\"left\":\"var:preset|spacing|40\",\"top\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|50\"}},\"color\":{\"background\":\"#00000008\"}},\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#00000008;padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--40)\"><!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"var:preset|spacing|60\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"justifyContent\":\"space-between\",\"verticalAlignment\":\"top\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"constrained\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"textTransform\":\"uppercase\",\"fontSize\":\"0.9rem\",\"letterSpacing\":\"1px\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\"}}} -->\n<p class=\"has-text-align-left\" style=\"font-size:0.9rem;font-style:normal;font-weight:600;letter-spacing:1px;text-transform:uppercase\">Search</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:search {\"label\":\"Search\",\"showLabel\":false,\"width\":100,\"widthUnit\":\"%\",\"buttonText\":\"Search\",\"buttonUseIcon\":true,\"style\":{\"border\":{\"width\":\"1px\"}}} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"spacing\":[]},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"right\",\"verticalAlignment\":\"top\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"left\",\"style\":{\"typography\":{\"textTransform\":\"uppercase\",\"fontSize\":\"0.9rem\",\"letterSpacing\":\"1px\",\"fontStyle\":\"normal\",\"fontWeight\":\"600\"}}} -->\n<p class=\"has-text-align-left\" style=\"font-size:0.9rem;font-style:normal;font-weight:600;letter-spacing:1px;text-transform:uppercase\">Social</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"8px\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"left\"},\"fontSize\":\"small\"} -->\n<div class=\"wp-block-group has-small-font-size\"><!-- wp:paragraph -->\n<p><a href=\"#\">Facebook</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Instagram</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Twitter</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"48px\"} -->\n<div style=\"height:48px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:45;O:8:\"stdClass\":7:{s:2:\"id\";i:229131;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Footer with site title and credit line\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:840:\"\n<div class=\"wp-block-group alignfull has-background-color is-layout-constrained wp-block-group-is-layout-constrained\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--40);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group alignwide is-content-justification-space-between is-layout-flex wp-container-228 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-layout-flex wp-block-group-is-layout-flex\"><h1 class=\"wp-block-site-title has-small-font-size\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1></div>\n\n\n\n<p class=\"has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:64:\"Footer with site title on the left and credit line on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/footer\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:41:\"core/group,core/paragraph,core/site-title\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"footer\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1095:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|40\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|40\",\"left\":\"var:preset|spacing|30\"},\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"className\":\"has-background-color\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--40);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:46;O:8:\"stdClass\":7:{s:2:\"id\";i:229135;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Footer with navigation and credit line\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3661:\"\n<div class=\"wp-block-group alignfull has-background-color is-layout-constrained wp-block-group-is-layout-constrained\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--40);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group alignwide is-content-justification-space-between is-layout-flex wp-container-233 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-layout-flex wp-block-group-is-layout-flex\"><nav class=\"has-small-font-size is-responsive items-justified-left is-fallback wp-block-navigation has-small-font-size is-content-justification-left is-layout-flex wp-container-231 wp-block-navigation-is-layout-flex\" aria-label=\"\" \n			data-wp-interactive\n			data-wp-context=\'{ \"core\": { \"navigation\": { \"overlayOpenedBy\": {}, \"type\": \"overlay\", \"roleAttribute\": \"\" } } }\'\n		><button aria-haspopup=\"true\" aria-label=\"Ouvrir le menu\" class=\"wp-block-navigation__responsive-container-open \" \n			data-wp-on--click=\"actions.core.navigation.openMenuOnClick\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n		><svg width=\"24\" height=\"24\" xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" aria-hidden=\"true\" focusable=\"false\"><rect x=\"4\" y=\"7.5\" width=\"16\" height=\"1.5\" /><rect x=\"4\" y=\"15\" width=\"16\" height=\"1.5\" /></svg></button>\n			<div class=\"wp-block-navigation__responsive-container  \" style=\"\" id=\"modal-230\" \n			data-wp-class--has-modal-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-class--is-menu-open=\"selectors.core.navigation.isMenuOpen\"\n			data-wp-effect=\"effects.core.navigation.initMenu\"\n			data-wp-on--keydown=\"actions.core.navigation.handleMenuKeydown\"\n			data-wp-on--focusout=\"actions.core.navigation.handleMenuFocusout\"\n			tabindex=\"-1\"\n		>\n				<div class=\"wp-block-navigation__responsive-close\" tabindex=\"-1\">\n					<div aria-modal=\"\" role=\"\" class=\"wp-block-navigation__responsive-dialog\" aria-label=\"Menu\" \n			data-wp-bind--aria-modal=\"selectors.core.navigation.ariaModal\"\n			data-wp-bind--role=\"selectors.core.navigation.roleAttribute\"\n			data-wp-effect=\"effects.core.navigation.focusFirstElement\"\n		>\n							<button aria-label=\"Fermer le menu\" class=\"wp-block-navigation__responsive-container-close\" \n			data-wp-on--click=\"actions.core.navigation.closeMenuOnClick\"\n		><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 24 24\" width=\"24\" height=\"24\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M13 11.8l6.1-6.3-1-1-6.1 6.2-6.1-6.2-1 1 6.1 6.3-6.5 6.7 1 1 6.5-6.6 6.5 6.6 1-1z\"></path></svg></button>\n						<div class=\"wp-block-navigation__responsive-container-content\" id=\"modal-230-content\">\n							<ul class=\"wp-block-navigation__container has-small-font-size is-responsive items-justified-left is-fallback wp-block-navigation has-small-font-size\"><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul>\n						</div>\n					</div>\n				</div>\n			</div></nav></div>\n\n\n\n<p class=\"has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:64:\"Footer with navigation on the left and credit line on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/footer\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:41:\"core/group,core/navigation,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"footer\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1174:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|40\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|40\",\"left\":\"var:preset|spacing|30\"},\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"className\":\"has-background-color\",\"layout\":{\"type\":\"constrained\"}} -->\n<div class=\"wp-block-group alignfull has-background-color\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--40);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--40);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:group {\"layout\":{\"type\":\"flex\"}} -->\n<div class=\"wp-block-group\"><!-- wp:navigation {\"layout\":{\"type\":\"flex\",\"setCascadingProperties\":true,\"justifyContent\":\"left\"},\"fontSize\":\"small\"} /--></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:47;O:8:\"stdClass\":7:{s:2:\"id\";i:229139;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:56:\"Fullwidth footer with background color and three columns\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2963:\"\n<div class=\"wp-block-group alignfull has-background-color has-white-color has-black-background-color has-text-color has-background has-link-color wp-elements-8d0170a0199cafe7fbcba6c0b4dac464 is-vertical is-content-justification-stretch is-layout-flex wp-container-243 wp-block-group-is-layout-flex\" style=\"min-height:40vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--60);padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--40)\">\n<div class=\"wp-block-columns alignwide has-small-font-size is-layout-flex wp-container-241 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p class=\"has-text-align-center\">Location</p>\n\n\n\n<p class=\"has-text-align-center\">2020 Lomita Blvd,&nbsp;<br>Torrance, CA 90101<br>United States</p>\n\n\n\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p class=\"has-text-align-center\">Pages</p>\n\n\n<nav class=\"has-small-font-size items-justified-center is-vertical no-wrap is-fallback wp-block-navigation has-small-font-size is-content-justification-center is-nowrap is-layout-flex wp-container-237 wp-block-navigation-is-layout-flex\" aria-label=\"\"><ul class=\"wp-block-navigation__container has-small-font-size items-justified-center is-vertical no-wrap is-fallback wp-block-navigation has-small-font-size\"><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul></nav>\n\n\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p class=\"has-text-align-center\">Follow us</p>\n\n\n\n<div class=\"wp-block-group is-vertical is-content-justification-center is-layout-flex wp-container-239 wp-block-group-is-layout-flex\">\n<p><a href=\"#\">Facebook</a></p>\n\n\n\n<p><a href=\"#\">Instagram</a></p>\n\n\n\n<p><a href=\"#\">Twitter</a></p>\n</div>\n\n\n\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-group alignwide is-content-justification-center is-layout-flex wp-container-242 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-center has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:57:\"Text-only footer with background color and three columns.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/footer\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:78:\"core/column,core/columns,core/group,core/navigation,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"footer\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:3225:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|white\"}}},\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|60\",\"right\":\"var:preset|spacing|40\",\"bottom\":\"var:preset|spacing|60\",\"left\":\"var:preset|spacing|40\"},\"margin\":{\"top\":\"0\",\"bottom\":\"0\"},\"blockGap\":\"var:preset|spacing|30\"},\"dimensions\":{\"minHeight\":\"40vh\"}},\"backgroundColor\":\"black\",\"textColor\":\"white\",\"className\":\"has-background-color\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"stretch\",\"verticalAlignment\":\"center\"}} -->\n<div class=\"wp-block-group alignfull has-background-color has-white-color has-black-background-color has-text-color has-background has-link-color\" style=\"min-height:40vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--60);padding-right:var(--wp--preset--spacing--40);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--40)\"><!-- wp:columns {\"align\":\"wide\",\"fontSize\":\"small\"} -->\n<div class=\"wp-block-columns alignwide has-small-font-size\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Location</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">2020 Lomita Blvd,&nbsp;<br>Torrance, CA 90101<br>United States</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"24px\"} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Pages</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:navigation {\"overlayMenu\":\"never\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"center\",\"flexWrap\":\"nowrap\"},\"style\":{\"spacing\":{\"blockGap\":\"8px\"}},\"fontSize\":\"small\"} /-->\n\n<!-- wp:spacer {\"height\":\"24px\"} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"align\":\"center\"} -->\n<p class=\"has-text-align-center\">Follow us</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"8px\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph -->\n<p><a href=\"#\">Facebook</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Instagram</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Twitter</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"24px\"} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:group {\"align\":\"wide\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"flexWrap\":\"wrap\"}} -->\n<div class=\"wp-block-group alignwide\"><!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"small\"} -->\n<p class=\"has-text-align-center has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:48;O:8:\"stdClass\":7:{s:2:\"id\";i:229143;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:33:\"Centered footer with social links\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4123:\"\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color is-vertical is-content-justification-center is-layout-flex wp-container-245 wp-block-group-is-layout-flex\" style=\"min-height:40vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--60);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--50)\"><div style=\"margin-bottom:6px;\" class=\"is-default-size aligncenter wp-block-site-logo\"><span class=\"custom-logo-link\"><img decoding=\"async\" src=\"https://s.w.org/images/wmark.png\" class=\"custom-logo\" alt=\"Logo du site\"></span></div>\n\n\n<p class=\"has-text-align-center has-medium-font-size\">Proudly powered by <a href=\"https://wordpress.org\">WordPress</a></p>\n\n\n\n<ul class=\"wp-block-social-links has-normal-icon-size is-style-logos-only is-nowrap is-layout-flex wp-container-244 wp-block-social-links-is-layout-flex\"><li class=\"wp-social-link wp-social-link-facebook  wp-block-social-link\"><a href=\"https://#\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M12 2C6.5 2 2 6.5 2 12c0 5 3.7 9.1 8.4 9.9v-7H7.9V12h2.5V9.8c0-2.5 1.5-3.9 3.8-3.9 1.1 0 2.2.2 2.2.2v2.5h-1.3c-1.2 0-1.6.8-1.6 1.6V12h2.8l-.4 2.9h-2.3v7C18.3 21.1 22 17 22 12c0-5.5-4.5-10-10-10z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Facebook</span></a></li>\n\n<li class=\"wp-social-link wp-social-link-twitter  wp-block-social-link\"><a href=\"https://#\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M22.23,5.924c-0.736,0.326-1.527,0.547-2.357,0.646c0.847-0.508,1.498-1.312,1.804-2.27 c-0.793,0.47-1.671,0.812-2.606,0.996C18.324,4.498,17.257,4,16.077,4c-2.266,0-4.103,1.837-4.103,4.103 c0,0.322,0.036,0.635,0.106,0.935C8.67,8.867,5.647,7.234,3.623,4.751C3.27,5.357,3.067,6.062,3.067,6.814 c0,1.424,0.724,2.679,1.825,3.415c-0.673-0.021-1.305-0.206-1.859-0.513c0,0.017,0,0.034,0,0.052c0,1.988,1.414,3.647,3.292,4.023 c-0.344,0.094-0.707,0.144-1.081,0.144c-0.264,0-0.521-0.026-0.772-0.074c0.522,1.63,2.038,2.816,3.833,2.85 c-1.404,1.1-3.174,1.756-5.096,1.756c-0.331,0-0.658-0.019-0.979-0.057c1.816,1.164,3.973,1.843,6.29,1.843 c7.547,0,11.675-6.252,11.675-11.675c0-0.178-0.004-0.355-0.012-0.531C20.985,7.47,21.68,6.747,22.23,5.924z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Twitter</span></a></li>\n\n<li class=\"wp-social-link wp-social-link-wordpress  wp-block-social-link\"><a href=\"https://#\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M12.158,12.786L9.46,20.625c0.806,0.237,1.657,0.366,2.54,0.366c1.047,0,2.051-0.181,2.986-0.51 c-0.024-0.038-0.046-0.079-0.065-0.124L12.158,12.786z M3.009,12c0,3.559,2.068,6.634,5.067,8.092L3.788,8.341 C3.289,9.459,3.009,10.696,3.009,12z M18.069,11.546c0-1.112-0.399-1.881-0.741-2.48c-0.456-0.741-0.883-1.368-0.883-2.109 c0-0.826,0.627-1.596,1.51-1.596c0.04,0,0.078,0.005,0.116,0.007C16.472,3.904,14.34,3.009,12,3.009 c-3.141,0-5.904,1.612-7.512,4.052c0.211,0.007,0.41,0.011,0.579,0.011c0.94,0,2.396-0.114,2.396-0.114 C7.947,6.93,8.004,7.642,7.52,7.699c0,0-0.487,0.057-1.029,0.085l3.274,9.739l1.968-5.901l-1.401-3.838 C9.848,7.756,9.389,7.699,9.389,7.699C8.904,7.67,8.961,6.93,9.446,6.958c0,0,1.484,0.114,2.368,0.114 c0.94,0,2.397-0.114,2.397-0.114c0.485-0.028,0.542,0.684,0.057,0.741c0,0-0.488,0.057-1.029,0.085l3.249,9.665l0.897-2.996 C17.841,13.284,18.069,12.316,18.069,11.546z M19.889,7.686c0.039,0.286,0.06,0.593,0.06,0.924c0,0.912-0.171,1.938-0.684,3.22 l-2.746,7.94c2.673-1.558,4.47-4.454,4.47-7.771C20.991,10.436,20.591,8.967,19.889,7.686z M12,22C6.486,22,2,17.514,2,12 C2,6.486,6.486,2,12,2c5.514,0,10,4.486,10,10C22,17.514,17.514,22,12,22z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">WordPress</span></a></li></ul>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:71:\"Footer with centered site title, tagline, social links and credit line.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/footer\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.2\";s:25:\"wpop_contains_block_types\";s:75:\"core/group,core/paragraph,core/site-logo,core/social-link,core/social-links\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"footer\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1532:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"right\":\"var:preset|spacing|50\",\"bottom\":\"var:preset|spacing|60\",\"left\":\"var:preset|spacing|50\",\"top\":\"var:preset|spacing|60\"},\"blockGap\":\"var:preset|spacing|40\",\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}},\"dimensions\":{\"minHeight\":\"40vh\"}},\"textColor\":\"contrast\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"center\",\"verticalAlignment\":\"center\"}} -->\n<div class=\"wp-block-group alignfull has-contrast-color has-text-color\" style=\"min-height:40vh;margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--60);padding-right:var(--wp--preset--spacing--50);padding-bottom:var(--wp--preset--spacing--60);padding-left:var(--wp--preset--spacing--50)\"><!-- wp:site-logo {\"align\":\"center\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"6px\"}}}} /-->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"medium\"} -->\n<p class=\"has-text-align-center has-medium-font-size\">Proudly powered by <a href=\"https://wordpress.org\">WordPress</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:social-links {\"size\":\"has-normal-icon-size\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"12px\",\"left\":\"12px\"}}},\"className\":\"is-style-logos-only\",\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\"}} -->\n<ul class=\"wp-block-social-links has-normal-icon-size is-style-logos-only\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"wordpress\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group -->\";}i:49;O:8:\"stdClass\":7:{s:2:\"id\";i:229147;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:52:\"Fullwidth footer with navigation, credit, and social\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4597:\"\n<div class=\"wp-block-group alignfull has-background-color is-layout-flow wp-block-group-is-layout-flow\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group alignfull has-small-font-size is-content-justification-space-between is-nowrap is-layout-flex wp-container-251 wp-block-group-is-layout-flex\"><h1 class=\"wp-block-site-title has-small-font-size wp-container-content-246\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n\n<div class=\"wp-block-group wp-container-content-247 is-vertical is-content-justification-center is-layout-flex wp-container-248 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-center has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n</div>\n\n\n\n<ul class=\"wp-block-social-links has-small-icon-size is-style-logos-only wp-container-content-249 is-content-justification-right is-nowrap is-layout-flex wp-container-250 wp-block-social-links-is-layout-flex\"><li class=\"wp-social-link wp-social-link-twitter  wp-block-social-link\"><a href=\"https://#\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M22.23,5.924c-0.736,0.326-1.527,0.547-2.357,0.646c0.847-0.508,1.498-1.312,1.804-2.27 c-0.793,0.47-1.671,0.812-2.606,0.996C18.324,4.498,17.257,4,16.077,4c-2.266,0-4.103,1.837-4.103,4.103 c0,0.322,0.036,0.635,0.106,0.935C8.67,8.867,5.647,7.234,3.623,4.751C3.27,5.357,3.067,6.062,3.067,6.814 c0,1.424,0.724,2.679,1.825,3.415c-0.673-0.021-1.305-0.206-1.859-0.513c0,0.017,0,0.034,0,0.052c0,1.988,1.414,3.647,3.292,4.023 c-0.344,0.094-0.707,0.144-1.081,0.144c-0.264,0-0.521-0.026-0.772-0.074c0.522,1.63,2.038,2.816,3.833,2.85 c-1.404,1.1-3.174,1.756-5.096,1.756c-0.331,0-0.658-0.019-0.979-0.057c1.816,1.164,3.973,1.843,6.29,1.843 c7.547,0,11.675-6.252,11.675-11.675c0-0.178-0.004-0.355-0.012-0.531C20.985,7.47,21.68,6.747,22.23,5.924z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Twitter</span></a></li>\n\n<li class=\"wp-social-link wp-social-link-instagram  wp-block-social-link\"><a href=\"https://#\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M12,4.622c2.403,0,2.688,0.009,3.637,0.052c0.877,0.04,1.354,0.187,1.671,0.31c0.42,0.163,0.72,0.358,1.035,0.673 c0.315,0.315,0.51,0.615,0.673,1.035c0.123,0.317,0.27,0.794,0.31,1.671c0.043,0.949,0.052,1.234,0.052,3.637 s-0.009,2.688-0.052,3.637c-0.04,0.877-0.187,1.354-0.31,1.671c-0.163,0.42-0.358,0.72-0.673,1.035 c-0.315,0.315-0.615,0.51-1.035,0.673c-0.317,0.123-0.794,0.27-1.671,0.31c-0.949,0.043-1.233,0.052-3.637,0.052 s-2.688-0.009-3.637-0.052c-0.877-0.04-1.354-0.187-1.671-0.31c-0.42-0.163-0.72-0.358-1.035-0.673 c-0.315-0.315-0.51-0.615-0.673-1.035c-0.123-0.317-0.27-0.794-0.31-1.671C4.631,14.688,4.622,14.403,4.622,12 s0.009-2.688,0.052-3.637c0.04-0.877,0.187-1.354,0.31-1.671c0.163-0.42,0.358-0.72,0.673-1.035 c0.315-0.315,0.615-0.51,1.035-0.673c0.317-0.123,0.794-0.27,1.671-0.31C9.312,4.631,9.597,4.622,12,4.622 M12,3 C9.556,3,9.249,3.01,8.289,3.054C7.331,3.098,6.677,3.25,6.105,3.472C5.513,3.702,5.011,4.01,4.511,4.511 c-0.5,0.5-0.808,1.002-1.038,1.594C3.25,6.677,3.098,7.331,3.054,8.289C3.01,9.249,3,9.556,3,12c0,2.444,0.01,2.751,0.054,3.711 c0.044,0.958,0.196,1.612,0.418,2.185c0.23,0.592,0.538,1.094,1.038,1.594c0.5,0.5,1.002,0.808,1.594,1.038 c0.572,0.222,1.227,0.375,2.185,0.418C9.249,20.99,9.556,21,12,21s2.751-0.01,3.711-0.054c0.958-0.044,1.612-0.196,2.185-0.418 c0.592-0.23,1.094-0.538,1.594-1.038c0.5-0.5,0.808-1.002,1.038-1.594c0.222-0.572,0.375-1.227,0.418-2.185 C20.99,14.751,21,14.444,21,12s-0.01-2.751-0.054-3.711c-0.044-0.958-0.196-1.612-0.418-2.185c-0.23-0.592-0.538-1.094-1.038-1.594 c-0.5-0.5-1.002-0.808-1.594-1.038c-0.572-0.222-1.227-0.375-2.185-0.418C14.751,3.01,14.444,3,12,3L12,3z M12,7.378 c-2.552,0-4.622,2.069-4.622,4.622S9.448,16.622,12,16.622s4.622-2.069,4.622-4.622S14.552,7.378,12,7.378z M12,15 c-1.657,0-3-1.343-3-3s1.343-3,3-3s3,1.343,3,3S13.657,15,12,15z M16.804,6.116c-0.596,0-1.08,0.484-1.08,1.08 s0.484,1.08,1.08,1.08c0.596,0,1.08-0.484,1.08-1.08S17.401,6.116,16.804,6.116z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Instagram</span></a></li></ul>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:87:\"Footer with site title on the left, credit in the middle and social links on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/footer\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:76:\"core/group,core/paragraph,core/site-title,core/social-link,core/social-links\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"footer\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1869:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|30\"},\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"className\":\"has-background-color\",\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull has-background-color\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"blockGap\":\"0\"}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"space-between\",\"flexWrap\":\"nowrap\"},\"fontSize\":\"small\"} -->\n<div class=\"wp-block-group alignfull has-small-font-size\"><!-- wp:site-title {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"25%\"}},\"fontSize\":\"small\"} /-->\n\n<!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"small\"} -->\n<p class=\"has-text-align-center has-small-font-size\"> Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:social-links {\"size\":\"has-small-icon-size\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"0\",\"left\":\"12px\"}},\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"25%\"}},\"className\":\"is-style-logos-only\",\"layout\":{\"type\":\"flex\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"right\"}} -->\n<ul class=\"wp-block-social-links has-small-icon-size is-style-logos-only\"><!-- wp:social-link {\"url\":\"#\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"#\",\"service\":\"instagram\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:50;O:8:\"stdClass\":7:{s:2:\"id\";i:229151;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:19:\"Left-aligned footer\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2835:\"\n<div class=\"wp-block-group alignfull is-content-justification-space-between is-layout-flex wp-container-261 wp-block-group-is-layout-flex\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--30)\">\n<div class=\"wp-block-group wp-container-content-253 is-vertical is-layout-flex wp-container-254 wp-block-group-is-layout-flex\"><h1 class=\"wp-block-site-title has-medium-font-size\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n\n<p class=\"has-text-align-left\">2020 Lomita Blvd,&nbsp;<br>Torrance, CA 90101<br>United States</p>\n\n\n\n<p class=\"has-text-align-left has-small-font-size\">Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n\n\n\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\n\n\n<div class=\"wp-block-group is-content-justification-right is-layout-flex wp-container-260 wp-block-group-is-layout-flex\">\n<div class=\"wp-block-group is-vertical is-layout-flex wp-container-257 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-left\">Pages</p>\n\n\n<nav class=\"has-small-font-size items-justified-left is-vertical no-wrap is-fallback wp-block-navigation has-small-font-size is-content-justification-left is-nowrap is-layout-flex wp-container-256 wp-block-navigation-is-layout-flex\" aria-label=\"\"><ul class=\"wp-block-navigation__container has-small-font-size items-justified-left is-vertical no-wrap is-fallback wp-block-navigation has-small-font-size\"><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Home</span></a></li><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">About</span></a></li><li class=\"has-small-font-size wp-block-navigation-item wp-block-navigation-link\"><a class=\"wp-block-navigation-item__content\"  href=\"#\"><span class=\"wp-block-navigation-item__label\">Contact</span></a></li></ul></nav>\n\n\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\n\n\n<div class=\"wp-block-group is-vertical is-layout-flex wp-container-259 wp-block-group-is-layout-flex\">\n<p class=\"has-text-align-left\">Social</p>\n\n\n\n<div class=\"wp-block-group is-vertical is-content-justification-left is-layout-flex wp-container-258 wp-block-group-is-layout-flex\">\n<p><a href=\"#\">Facebook</a></p>\n\n\n\n<p><a href=\"#\">Instagram</a></p>\n\n\n\n<p><a href=\"#\">Twitter</a></p>\n</div>\n\n\n\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:44:\"Left-aligned footer with just a credit line.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:25:\"core/template-part/footer\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:69:\"core/group,core/navigation,core/paragraph,core/site-title,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"footer\";i:1;s:9:\"wireframe\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:2939:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"},\"padding\":{\"top\":\"var:preset|spacing|50\",\"right\":\"var:preset|spacing|30\",\"bottom\":\"var:preset|spacing|50\",\"left\":\"var:preset|spacing|30\"}}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"justifyContent\":\"space-between\",\"verticalAlignment\":\"top\"}} -->\n<div class=\"wp-block-group alignfull\" style=\"margin-top:0;margin-bottom:0;padding-top:var(--wp--preset--spacing--50);padding-right:var(--wp--preset--spacing--30);padding-bottom:var(--wp--preset--spacing--50);padding-left:var(--wp--preset--spacing--30)\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fill\",\"flexSize\":null}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"verticalAlignment\":\"top\"}} -->\n<div class=\"wp-block-group\"><!-- wp:site-title {\"fontSize\":\"medium\"} /-->\n\n<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">2020 Lomita Blvd,&nbsp;<br>Torrance, CA 90101<br>United States</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"left\",\"fontSize\":\"small\"} -->\n<p class=\"has-text-align-left has-small-font-size\">Proudly powered by <a rel=\"nofollow\" href=\"https://wordpress.org\">WordPress</a> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"24px\"} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"var:preset|spacing|50\"}},\"layout\":{\"type\":\"flex\",\"flexWrap\":\"wrap\",\"justifyContent\":\"right\",\"verticalAlignment\":\"top\"}} -->\n<div class=\"wp-block-group\"><!-- wp:group {\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Pages</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:navigation {\"overlayMenu\":\"never\",\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"left\",\"flexWrap\":\"nowrap\"},\"style\":{\"spacing\":{\"blockGap\":\"8px\"}},\"fontSize\":\"small\"} /-->\n\n<!-- wp:spacer {\"height\":\"24px\"} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\n\n<!-- wp:group {\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Social</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"8px\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph -->\n<p><a href=\"#\">Facebook</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Instagram</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"#\">Twitter</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"24px\"} -->\n<div style=\"height:24px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:51;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1330:\"\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-265 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:47:\"core/column,core/columns,core/image,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:52;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3496:\"\n<div class=\"wp-block-group alignfull has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#f5eac1;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\">\n<div class=\"wp-block-group is-vertical is-nowrap is-layout-flex wp-container-266 wp-block-group-is-layout-flex\" style=\"padding-right:0;padding-left:0\">\n<h6 class=\"wp-block-heading has-text-color\" id=\"ecosystem\" style=\"color:#000000;font-size:16px\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:6vw;font-style:normal;font-weight:700;letter-spacing:0px;line-height:0.9;text-decoration:none;text-transform:none\">Positive growth.</p>\n</div>\n\n\n\n<div style=\"height:1vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-group alignwide is-vertical is-nowrap is-layout-flex wp-container-274 wp-block-group-is-layout-flex\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\">\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-270 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. </p>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-273 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:69%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&rsquo;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:86:\"core/column,core/columns,core/group,core/heading,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:5:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:7:\"gallery\";i:3;s:6:\"images\";i:4;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:5124:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f5eac1\"},\"spacing\":{\"padding\":{\"top\":\"6vw\",\"bottom\":\"6vw\",\"left\":\"6vw\",\"right\":\"6vw\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f5eac1;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"16px\",\"padding\":{\"right\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\" style=\"padding-right:0;padding-left:0\"><!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"16px\"}},\"anchor\":\"ecosystem\"} -->\n<h6 class=\"wp-block-heading has-text-color\" id=\"ecosystem\" style=\"color:#000000;font-size:16px\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"0.9\",\"fontSize\":\"6vw\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"textTransform\":\"none\",\"textDecoration\":\"none\",\"letterSpacing\":\"0px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:6vw;font-style:normal;font-weight:700;letter-spacing:0px;line-height:0.9;text-decoration:none;text-transform:none\">Positive growth.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"1vw\"} -->\n<div style=\"height:1vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"3vw\",\"padding\":{\"top\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"right\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\"><!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"3vw\",\"left\":\"3vw\"}}}} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer {\"height\":\"2vw\"} -->\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"left\":\"3vw\"}}}} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"69%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:69%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:spacer {\"height\":\"2vw\"} -->\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:53;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2240:\"\n<div class=\"wp-block-group alignfull has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#f2f0e9\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-layout-flex wp-container-278 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-282 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:77:\"core/column,core/columns,core/group,core/paragraph,core/separator,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:54;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1445:\"\n<div class=\"wp-block-cover alignfull is-light\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#ffffff\"></span><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"wp-block-heading has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&rsquo;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link wp-element-button\">Learn more</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:79:\"core/button,core/buttons,core/cover,core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:2015:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"isDark\":false,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull is-light\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-100 has-background-dim\" style=\"background-color:#ffffff\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"wp-block-heading has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link wp-element-button\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:55;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:719:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><div class=\"wp-block-media-text__content\">\n<h2 class=\"wp-block-heading has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:43:\"core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1155:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"wp-block-heading has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:56;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:554:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:43:\"core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:844:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:57;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1508:\"\n<div class=\"wp-block-cover alignfull has-parallax\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-40 has-background-dim\" style=\"background-color:#000000\"></span><div role=\"img\" class=\"wp-block-cover__image-background has-parallax\" style=\"background-position:50% 50%;background-image:url(https://s.w.org/images/core/5.8/art-01.jpg)\"></div><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<h2 class=\"wp-block-heading alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-289 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#ffffff;background-color:#000000\">Visit</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:88:\"core/button,core/buttons,core/column,core/columns,core/cover,core/heading,core/paragraph\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"banner\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:2053:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-parallax\" style=\"min-height:100vh\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-40 has-background-dim\" style=\"background-color:#000000\"></span><div role=\"img\" class=\"wp-block-cover__image-background has-parallax\" style=\"background-position:50% 50%;background-image:url(https://s.w.org/images/core/5.8/art-01.jpg)\"></div><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"wp-block-heading alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#ffffff;background-color:#000000\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:58;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1321:\"\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-293 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/column,core/columns,core/cover,core/heading,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1698:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":\"330px\"} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:59;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:526:\"\n<h2 class=\"alignwide wp-block-heading\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We&rsquo;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:17:\"large text, title\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:12:\"core/heading\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:621:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:60;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1518:\"\n<h2 class=\"wp-block-heading\" style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-block-columns is-layout-flex wp-container-297 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&rsquo;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:52:\"core/column,core/columns,core/heading,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:61;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:572:\"\n<figure class=\"wp-block-gallery alignwide has-nested-images columns-default is-cropped wp-block-gallery-298 is-layout-flex wp-block-gallery-is-layout-flex\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" /></figure>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" /></figure>\n</figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:23:\"core/gallery,core/image\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:704:\"<!-- wp:gallery {\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide has-nested-images columns-default is-cropped\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" /></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(950, '_site_transient_timeout_wp_remote_block_patterns_bae4fd04e0f2fd61bda8b34441db445c', '1700180837', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(951, '_site_transient_wp_remote_block_patterns_bae4fd04e0f2fd61bda8b34441db445c', 'a:27:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:1267;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:26:\"Simple appel à l’action\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:970:\"\n<div class=\"wp-block-group alignfull has-text-color has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#ffffff;color:#000000\">\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>Contactez nous</strong></p>\n\n\n\n<h2 class=\"has-text-align-center wp-block-heading\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Prévoir une visite</strong></h2>\n\n\n\n<div class=\"wp-block-buttons is-horizontal is-content-justification-center is-layout-flex wp-container-1 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contactez-nous</a></div>\n</div>\n\n\n\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:115:\"Un conteneur avec un fond blanc. À l’intérieur se trouvent un paragraphe, un titre et un bouton, tous centrés.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/button,core/buttons,core/group,core/heading,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"buttons\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1515:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-group alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"lineHeight\":\".9\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>Contactez nous</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"typography\":{\"fontSize\":59,\"lineHeight\":\"1.15\"}}} -->\n<h2 class=\"has-text-align-center\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Prévoir une visite</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":50,\"style\":{\"color\":{\"background\":\"#000000\",\"text\":\"#ffffff\"},\"border\":{\"radius\":\"50px\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contactez-nous</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:1281;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:26:\"Three column pricing table\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3835:\"\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-9 wp-block-columns-is-layout-flex\" style=\"margin-bottom:0\">\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-83659803089e1b547255dfe446c46b5f is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#ffe97d;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"single\" style=\"font-size:40px\"><strong>Individuel</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Contribuez à notre communauté en pleine expansion.</strong> </p>\n\n\n\n<hr class=\"wp-block-separator has-text-color has-css-opacity has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>Entrée libre et réductions réservées aux membres pour un adulte</li>\n\n\n\n<li>Un billet gratuit par exposition temporaire</li>\n\n\n\n<li>Deux laissez-passer à usage unique par an</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-3 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$110 / an</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-46ebc591738054a94f191fb4bba093b2 is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#d1d1e1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"family\" style=\"font-size:40px\"><strong>Famille</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Soutenez les expositions spéciales.</strong></p>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>Entrée libre et réductions réservées aux membres pour deux adultes</li>\n\n\n\n<li>Quatre billets gratuits par exposition temporaire</li>\n\n\n\n<li>Quatre laissez-passer à usage unique par an</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-5 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">200€ / an</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-746aed14ce08da035dec724ac3e2183c is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#c0ebf1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"patron\" style=\"font-size:40px\"><strong>Mécène</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\"><strong>Soutenez-nous encore plus.</strong></p>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>Entrée libre et réductions réservées aux membres pour deux adultes</li>\n\n\n\n<li>Cinq billets gratuits par exposition temporaire</li>\n\n\n\n<li>Quatre laissez-passer à usage unique par an</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-7 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$400 / an</a></div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:280:\"Trois colonnes de largeur égale configurées comme un barème de tarifs. La colonne de gauche a un fond jaune, celle du milieu un fond violet clair, et celle de droite un fond bleu clair. Chaque colonne contient un titre, un sous-titre, un séparateur, une liste, puis un bouton.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:117:\"core/button,core/buttons,core/column,core/columns,core/heading,core/list,core/list-item,core/paragraph,core/separator\";}s:14:\"category_slugs\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:6245:\"<!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"0\"}}}} -->\n<div class=\"wp-block-columns alignwide\" style=\"margin-bottom:0\"><!-- wp:column {\"style\":{\"color\":{\"background\":\"#ffe97d\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#ffe97d;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"single\"} -->\n<h2 class=\"wp-block-heading\" id=\"single\" style=\"font-size:40px\"><strong>Individuel</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Contribuez à notre communauté en pleine expansion.</strong> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"style\":{\"color\":{\"background\":\"#000000\"}},\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-css-opacity has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>Entrée libre et réductions réservées aux membres pour un adulte</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Un billet gratuit par exposition temporaire</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Deux laissez-passer à usage unique par an</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$110 / an</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#d1d1e1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#d1d1e1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"family\"} -->\n<h2 class=\"wp-block-heading\" id=\"family\" style=\"font-size:40px\"><strong>Famille</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Soutenez les expositions spéciales.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>Entrée libre et réductions réservées aux membres pour deux adultes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Quatre billets gratuits par exposition temporaire</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Quatre laissez-passer à usage unique par an</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">200€ / an</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#c0ebf1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#c0ebf1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"patron\"} -->\n<h2 class=\"wp-block-heading\" id=\"patron\" style=\"font-size:40px\"><strong>Mécène</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\"><strong>Soutenez-nous encore plus.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>Entrée libre et réductions réservées aux membres pour deux adultes</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Cinq billets gratuits par exposition temporaire</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Quatre laissez-passer à usage unique par an</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$400 / an</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:8394;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Image et citation sur un arrière-plan\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2303:\"\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-1-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-1-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-1-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-1.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>Même le fruit le plus amer contient du sucre.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Terry a. O’Neal</p>\n</div>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-half-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-half-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-half-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-half.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>Les arbres qui mettent du temps à pousser donnent les meilleurs fruits.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Molière</p>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:255:\"Deux blocs contenu chacun un fichier média et du texte. Le bloc du haut a un fond vert pâle. Le texte est à gauche et contient une citation, et l’image est à droite. Le bloc suivant, en dessous, contient l’image à gauche et la citation à droite.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:41:\"core/group,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:2432:\"<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":5263,\"mediaLink\":\"https://wordpress.org/patterns/pattern/image-and-quote-on-a-background/pear-3/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#f1f5c7\"}}} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>Même le fruit le plus amer contient du sucre.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Terry a. O’Neal</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":673,\"mediaLink\":\"https://wordpress.org/patterns/pear-half/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#fffdea\"}}} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>Les arbres qui mettent du temps à pousser donnent les meilleurs fruits.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Molière</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:1290;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:11:\"Évènement\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1693:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color wp-elements-3a87edf8748e353341993873368aa148\" style=\"color:#fffdc7;background-color:#121c1c;grid-template-columns:auto 60%\"><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group has-link-color wp-elements-b94d31a8170cfb1b430035d912452f46 is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-weight:700;line-height:1.15\">Fête <br>d‘ouverture</h2>\n\n\n\n<p class=\"has-text-color has-link-color wp-elements-0860918d5b16b9e1778b1966b333b980\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n</div>\n</div><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1536x1536.jpg 1536w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1.jpg 1572w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:54:\"core/group,core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1623:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaId\":590,\"mediaLink\":\"https://wordpress.org/patterns/image-from-rawpixel-id-430289-jpeg-1/\",\"mediaType\":\"image\",\"mediaWidth\":60,\"verticalAlignment\":\"top\",\"style\":{\"color\":{\"background\":\"#121c1c\",\"text\":\"#fffdc7\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color\" style=\"color:#fffdc7;background-color:#121c1c;grid-template-columns:auto 60%\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-weight:700;line-height:1.15\">Fête <br>d‘ouverture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}},\"color\":{\"text\":\"#fffdc7\"}}} -->\n<p class=\"has-text-color has-link-color\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" /></figure></div>\n<!-- /wp:media-text -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:8524;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Annonce détaillée d’un événement\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1839:\"\n<div class=\"wp-block-group alignfull has-black-color has-text-color has-background has-link-color wp-elements-bdaf09705b636e6e43f0db96ecd59640 is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#d2cdc7\">\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"alignwide wp-block-heading\" style=\"font-size:46px;font-weight:400;line-height:1.1\">HÉLÈNE DUMAS<br><em>FRAGMENTS</em></h2>\n\n\n\n<h3 class=\"alignwide wp-block-heading\" style=\"font-size:46px;font-weight:400;line-height:1.1\">DU 20/04 AU 9/09/2021<br>SOUTH LONDON GALLERY</h3>\n\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-15 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:25%\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:75%\">\n<figure class=\"wp-block-image size-full\"><img decoding=\"async\" src=\"https://mywptesting.site/wp-content/uploads/2021/06/Histoire_naturelle_..._-fragments-_-_Upper_cover_C108eee15-1.jpg\" alt=\"\" class=\"wp-image-3173\" /></figure>\n</div>\n</div>\n\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-18 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"font-size:25px\">PLUS d’INFO SUR : WP.ORG · +44 21 1234 5678</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p class=\"has-text-align-right\" style=\"font-size:25px\">INSTAGRAM · <a href=\"#\">BILLETS</a></p>\n</div>\n</div>\n\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:86:\"core/column,core/columns,core/group,core/heading,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:2629:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#d2cdc7\"},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|black\"}}}},\"textColor\":\"black\"} -->\n<div class=\"wp-block-group alignfull has-black-color has-text-color has-background has-link-color\" style=\"background-color:#d2cdc7\"><!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"46px\",\"lineHeight\":\"1.1\",\"fontWeight\":\"400\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">HÉLÈNE DUMAS<br><em>FRAGMENTS</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"46px\",\"lineHeight\":\"1.1\",\"fontWeight\":\"400\"}}} -->\n<h3 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">DU 20/04 AU 9/09/2021<br>SOUTH LONDON GALLERY</h3>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"75%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:75%\"><!-- wp:image {\"id\":3173,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://mywptesting.site/wp-content/uploads/2021/06/Histoire_naturelle_..._-fragments-_-_Upper_cover_C108eee15-1.jpg\" alt=\"\" class=\"wp-image-3173\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"25px\"}}} -->\n<p style=\"font-size:25px\">PLUS d’INFO SUR : WP.ORG · +44 21 1234 5678</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"25px\"}}} -->\n<p class=\"has-text-align-right\" style=\"font-size:25px\">INSTAGRAM · <a href=\"#\">BILLETS</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:1372;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Image sur couleur unie avec description\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1929:\"\n<div class=\"wp-block-columns alignfull is-layout-flex wp-container-25 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:50%\">\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img loading=\"lazy\" decoding=\"async\" width=\"263\" height=\"300\" src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" srcset=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg 263w, https://s.w.org/patterns/files/2021/06/wire-sculpture-898x1024.jpg 898w, https://s.w.org/patterns/files/2021/06/wire-sculpture-768x875.jpg 768w, https://s.w.org/patterns/files/2021/06/wire-sculpture-1347x1536.jpg 1347w, https://s.w.org/patterns/files/2021/06/wire-sculpture.jpg 1658w\" sizes=\"(max-width: 263px) 100vw, 263px\" /></figure></div>\n</div></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\">\n<div class=\"wp-block-columns is-layout-flex wp-container-23 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:320px\">\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Avion</strong></p>\n\n\n\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Fil de cuivre, base en bois. J’ai créé cette pièce à la fin de l’année 2008. Pour cette œuvre, j’ai cherché à transmettre à la fois la lourdeur industrielle d’un avion, mais aussi la sensation de flottement, semblable à celui d’un nuage, que l’on ressent lorsque l’on est dans un avion.</p>\n</div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Image avec aplat de couleur et description.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:61:\"core/column,core/columns,core/cover,core/image,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1925:\"<!-- wp:columns {\"align\":\"full\"} -->\n<div class=\"wp-block-columns alignfull\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:cover {\"customOverlayColor\":\"#f6f6f6\",\"minHeight\":600} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:image {\"align\":\"center\",\"id\":571,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" /></figure></div>\n<!-- /wp:image --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"1em\",\"right\":\"1em\",\"bottom\":\"1em\",\"left\":\"1em\"}}}} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"320px\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:320px\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Avion</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Fil de cuivre, base en bois. J’ai créé cette pièce à la fin de l’année 2008. Pour cette œuvre, j’ai cherché à transmettre à la fois la lourdeur industrielle d’un avion, mais aussi la sensation de flottement, semblable à celui d’un nuage, que l’on ressent lorsque l’on est dans un avion.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:8085;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:36:\"Images décalées avec descriptions.\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1851:\"\n<div class=\"wp-block-columns is-layout-flex wp-container-28 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"793\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"\" class=\"wp-image-525\" srcset=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg 793w, https://s.w.org/patterns/files/2021/06/Iris-232x300.jpg 232w, https://s.w.org/patterns/files/2021/06/Iris-768x992.jpg 768w, https://s.w.org/patterns/files/2021/06/Iris-1189x1536.jpg 1189w, https://s.w.org/patterns/files/2021/06/Iris-1586x2048.jpg 1586w, https://s.w.org/patterns/files/2021/06/Iris.jpg 1920w\" sizes=\"(max-width: 793px) 100vw, 793px\" /></figure>\n\n\n\n<p style=\"font-size:14px\"><strong>Iris blancs</strong><br>Ogawa Kazumasa</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p style=\"font-size:14px\"><strong>Fleurs de cerisier</strong><br>Ogawa Kazumasa</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"707\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"\" class=\"wp-image-524\" srcset=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg 707w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-207x300.jpg 207w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-768x1112.jpg 768w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1061x1536.jpg 1061w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1414x2048.jpg 1414w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-scaled.jpg 1768w\" sizes=\"(max-width: 707px) 100vw, 707px\" /></figure>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:36:\"Images décalées avec descriptions.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:62:\"core/column,core/columns,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:7:\"gallery\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1178:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":525,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"\" class=\"wp-image-525\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Iris blancs</strong><br>Ogawa Kazumasa</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Fleurs de cerisier</strong><br>Ogawa Kazumasa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":524,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"\" class=\"wp-image-524\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:1306;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Image avec description en bas à droite\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1712:\"\n<div class=\"wp-block-columns is-layout-flex wp-container-33 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:10%\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Représentation ancienne de Cupidon\" class=\"wp-image-522\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1.jpg 1510w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:10%\"></div>\n</div>\n\n\n\n<div class=\"wp-block-columns is-layout-flex wp-container-36 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"font-size:14px\"><strong>Cupidon en plein vol</strong><br>Carré de 121 cm de côté<br>Impression « giclée » sur papier non-acide.</p>\n</div>\n</div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:51:\"Image avec une description en-dessous et à droite.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:50:\"core/column,core/columns,core/image,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1288:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":522,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Représentation ancienne de Cupidon\" class=\"wp-image-522\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Cupidon en plein vol</strong><br>Carré de 121 cm de côté<br>Impression « giclée » sur papier non-acide.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:1310;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:27:\"Détails de l’évènement\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1695:\"\n<figure class=\"wp-block-image alignwide size-full\"><img loading=\"lazy\" decoding=\"async\" width=\"2560\" height=\"1227\" src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image d’une femme portée dans les airs par des cygnes.\" class=\"wp-image-501\" srcset=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg 2560w, https://s.w.org/patterns/files/2021/06/Group-17-300x144.jpg 300w, https://s.w.org/patterns/files/2021/06/Group-17-1024x491.jpg 1024w, https://s.w.org/patterns/files/2021/06/Group-17-768x368.jpg 768w, https://s.w.org/patterns/files/2021/06/Group-17-1536x736.jpg 1536w, https://s.w.org/patterns/files/2021/06/Group-17-2048x981.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\" /></figure>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-layout-flex wp-container-41 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"line-height:2\"><strong>Localisation :</strong><br>82 Main St. Brooklyn, NY</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"line-height:2\"><strong>Date :</strong><br>24 octobre 2021</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#efefef;background-color:#262626\">Acheter des billets</a></div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:28:\"Détails de l’évènement.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/button,core/buttons,core/column,core/columns,core/image,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1653:\"<!-- wp:image {\"align\":\"wide\",\"id\":501,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image alignwide size-full\"><img src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image d’une femme portée dans les airs par des cygnes.\" class=\"wp-image-501\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Localisation :</strong><br>82 Main St. Brooklyn, NY</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Date :</strong><br>24 octobre 2021</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100,\"style\":{\"color\":{\"background\":\"#262626\",\"text\":\"#efefef\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#efefef;background-color:#262626\">Acheter des billets</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:1320;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Trois colonnes de texte\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1145:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background is-layout-flex wp-container-45 wp-block-columns-is-layout-flex\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Visite virtuelle ↗</a></strong></h3>\n\n\n\n<p>Parcourez le musée depuis votre ordinateur. Idéal pour les écoles et les événements.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Expos actuelles ↗</a></strong></h3>\n\n\n\n<p>Suivez nos actualités et parcourez nos expositions en cours ici.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<h3 class=\"wp-block-heading\" style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Infos utiles ↗</a></strong></h3>\n\n\n\n<p>Découvrez nos horaires d’ouverture, les prix des billets et les réductions.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:24:\"Trois colonnes de texte.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:52:\"core/column,core/columns,core/heading,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1564:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Visite virtuelle ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Parcourez le musée depuis votre ordinateur. Idéal pour les écoles et les événements.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Expos actuelles ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Suivez nos actualités et parcourez nos expositions en cours ici.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Infos utiles ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Découvrez nos horaires d’ouverture, les prix des billets et les réductions.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:1321;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Trois colonnes avec images et texte\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3596:\"\n<div class=\"wp-block-group alignfull has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#f5eac1;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\">\n<div class=\"wp-block-group is-vertical is-nowrap is-layout-flex wp-container-46 wp-block-group-is-layout-flex\" style=\"padding-right:0;padding-left:0\">\n<h6 class=\"wp-block-heading has-text-color\" id=\"ecosystem\" style=\"color:#000000;font-size:16px\">ÉCOSYSTÈME</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:6vw;font-style:normal;font-weight:700;letter-spacing:0px;line-height:0.9;text-decoration:none;text-transform:none\">Positive growth.</p>\n</div>\n\n\n\n<div style=\"height:1vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-group alignwide is-vertical is-nowrap is-layout-flex wp-container-54 wp-block-group-is-layout-flex\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\">\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-50 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. </p>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"Le soleil se couchant derrière une forêt dense.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Des éoliennes se tiennent sur une plaine herbeuse, avec un ciel bleu en arrière-plan.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-53 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:69%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"Le soleil brille au dessus d’une crête donnant sur le bord de mer. Plus loin, une voiture est visible.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Sans doute n’avons-nous pas de questions à poser qui soient sans réponse. Nous devons faire confiance à la perfection de la création au point de croire que, quelle que soit la curiosité que l’ordre des choses a éveillée dans notre esprit, l’ordre des choses peut la satisfaire. La condition de chaque homme est une solution en hiéroglyphes aux questions qu’il poserait.</p>\n</div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:96:\"Trois colonnes avec des images et du texte, avec un espacement vertical pour un aspect décalé.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:86:\"core/column,core/columns,core/group,core/heading,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:5:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:7:\"gallery\";i:3;s:6:\"images\";i:4;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:5234:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f5eac1\"},\"spacing\":{\"padding\":{\"top\":\"6vw\",\"bottom\":\"6vw\",\"left\":\"6vw\",\"right\":\"6vw\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f5eac1;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"16px\",\"padding\":{\"right\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\" style=\"padding-right:0;padding-left:0\"><!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"16px\"}},\"anchor\":\"ecosystem\"} -->\n<h6 class=\"wp-block-heading has-text-color\" id=\"ecosystem\" style=\"color:#000000;font-size:16px\">ÉCOSYSTÈME</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"0.9\",\"fontSize\":\"6vw\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"textTransform\":\"none\",\"textDecoration\":\"none\",\"letterSpacing\":\"0px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:6vw;font-style:normal;font-weight:700;letter-spacing:0px;line-height:0.9;text-decoration:none;text-transform:none\">Positive growth.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"1vw\"} -->\n<div style=\"height:1vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"3vw\",\"padding\":{\"top\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"right\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\"><!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"3vw\",\"left\":\"3vw\"}}}} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer {\"height\":\"2vw\"} -->\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"Le soleil se couchant derrière une forêt dense.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Des éoliennes se tiennent sur une plaine herbeuse, avec un ciel bleu en arrière-plan.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"left\":\"3vw\"}}}} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"69%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:69%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"Le soleil brille au dessus d’une crête donnant sur le bord de mer. Plus loin, une voiture est visible.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:spacer {\"height\":\"2vw\"} -->\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Sans doute n’avons-nous pas de questions à poser qui soient sans réponse. Nous devons faire confiance à la perfection de la création au point de croire que, quelle que soit la curiosité que l’ordre des choses a éveillée dans notre esprit, l’ordre des choses peut la satisfaire. La condition de chaque homme est une solution en hiéroglyphes aux questions qu’il poserait.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:1355;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:40:\"Média et texte avec image sur la gauche\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:568:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Espaces ouverts</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">Voir l’étude de cas ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:74:\"Bloc média et bloc texte, avec l’image à gauche et le texte à droite.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:43:\"core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:858:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Vue de près d’un détail architectural.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Espaces ouverts</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">Voir l’étude de cas ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:1325;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:44:\"Large en-tête avec texte aligné à gauche.\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1399:\"\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forêt.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-58 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Même un enfant sait combien la forêt est précieuse. L’odeur fraîche des arbres, à vous couper le souffle. L’écho des oiseaux volant au-dessus de cette magnitude dense. Un climat stable, une vie durable et diversifiée et une source de culture. Pourtant, les forêts et d’autres écosystèmes sont en péril, menacés de devenir des terres de culture, des pâturages ou des plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:35:\"Bannière avec une citation en haut\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:0:\"\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/column,core/columns,core/cover,core/heading,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1777:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forêt.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":\"330px\"} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Même un enfant sait combien la forêt est précieuse. L’odeur fraîche des arbres, à vous couper le souffle. L’écho des oiseaux volant au-dessus de cette magnitude dense. Un climat stable, une vie durable et diversifiée et une source de culture. Pourtant, les forêts et d’autres écosystèmes sont en péril, menacés de devenir des terres de culture, des pâturages ou des plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:13;O:8:\"stdClass\":7:{s:2:\"id\";i:1326;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Titre\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:608:\"\n<h2 class=\"alignwide wp-block-heading\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">Nous sommes un studio situé à Berlin, avec une forte expérience internationale dans les domaines de l’architecture, de l’urbanisme et de l’aménagement intérieur. Nous croyons au partage des connaissances et à la promotion du dialogue pour accroître le potentiel créatif de la collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:18:\"grand texte, titre\";s:16:\"wpop_description\";s:14:\"Texte du titre\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"fr_FR\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:12:\"core/heading\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:709:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">Nous sommes un studio situé à Berlin, avec une forte expérience internationale dans les domaines de l’architecture, de l’urbanisme et de l’aménagement intérieur. Nous croyons au partage des connaissances et à la promotion du dialogue pour accroître le potentiel créatif de la collaboration.</h2>\n<!-- /wp:heading -->\";}i:14;O:8:\"stdClass\":7:{s:2:\"id\";i:207567;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:11:\"Link in Bio\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:6632:\"\n<div class=\"wp-block-group has-white-background-color has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:var(--wp--preset--spacing--80);padding-right:0;padding-bottom:var(--wp--preset--spacing--80);padding-left:0\"><h1 style=\"font-style:normal;font-weight:700;\" class=\"has-text-align-center wp-block-site-title has-medium-font-size\"><a href=\"https://wordpress.org/patterns\" target=\"_self\" rel=\"home\">Block Pattern Directory</a></h1>\n\n<p class=\"has-text-align-center wp-block-site-tagline\">Beautifully designed patterns ready to go with a simple copy/paste</p>\n\n\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-buttons is-content-justification-center is-layout-flex wp-container-60 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Watch my latest videos</a></div>\n\n\n\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Buy merch</a></div>\n\n\n\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Support me on Patreon</a></div>\n\n\n\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link wp-element-button\">Get tickets for my show</a></div>\n</div>\n\n\n\n<ul class=\"wp-block-social-links has-normal-icon-size has-icon-color has-icon-background-color is-content-justification-center is-layout-flex wp-container-61 wp-block-social-links-is-layout-flex\" style=\"padding-top:var(--wp--preset--spacing--60);padding-bottom:var(--wp--preset--spacing--60)\"><li style=\"color: #000000; background-color: #ffffff; \" class=\"wp-social-link wp-social-link-instagram has-black-color has-white-background-color wp-block-social-link\"><a href=\"https://wordpress.org/patterns/\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M12,4.622c2.403,0,2.688,0.009,3.637,0.052c0.877,0.04,1.354,0.187,1.671,0.31c0.42,0.163,0.72,0.358,1.035,0.673 c0.315,0.315,0.51,0.615,0.673,1.035c0.123,0.317,0.27,0.794,0.31,1.671c0.043,0.949,0.052,1.234,0.052,3.637 s-0.009,2.688-0.052,3.637c-0.04,0.877-0.187,1.354-0.31,1.671c-0.163,0.42-0.358,0.72-0.673,1.035 c-0.315,0.315-0.615,0.51-1.035,0.673c-0.317,0.123-0.794,0.27-1.671,0.31c-0.949,0.043-1.233,0.052-3.637,0.052 s-2.688-0.009-3.637-0.052c-0.877-0.04-1.354-0.187-1.671-0.31c-0.42-0.163-0.72-0.358-1.035-0.673 c-0.315-0.315-0.51-0.615-0.673-1.035c-0.123-0.317-0.27-0.794-0.31-1.671C4.631,14.688,4.622,14.403,4.622,12 s0.009-2.688,0.052-3.637c0.04-0.877,0.187-1.354,0.31-1.671c0.163-0.42,0.358-0.72,0.673-1.035 c0.315-0.315,0.615-0.51,1.035-0.673c0.317-0.123,0.794-0.27,1.671-0.31C9.312,4.631,9.597,4.622,12,4.622 M12,3 C9.556,3,9.249,3.01,8.289,3.054C7.331,3.098,6.677,3.25,6.105,3.472C5.513,3.702,5.011,4.01,4.511,4.511 c-0.5,0.5-0.808,1.002-1.038,1.594C3.25,6.677,3.098,7.331,3.054,8.289C3.01,9.249,3,9.556,3,12c0,2.444,0.01,2.751,0.054,3.711 c0.044,0.958,0.196,1.612,0.418,2.185c0.23,0.592,0.538,1.094,1.038,1.594c0.5,0.5,1.002,0.808,1.594,1.038 c0.572,0.222,1.227,0.375,2.185,0.418C9.249,20.99,9.556,21,12,21s2.751-0.01,3.711-0.054c0.958-0.044,1.612-0.196,2.185-0.418 c0.592-0.23,1.094-0.538,1.594-1.038c0.5-0.5,0.808-1.002,1.038-1.594c0.222-0.572,0.375-1.227,0.418-2.185 C20.99,14.751,21,14.444,21,12s-0.01-2.751-0.054-3.711c-0.044-0.958-0.196-1.612-0.418-2.185c-0.23-0.592-0.538-1.094-1.038-1.594 c-0.5-0.5-1.002-0.808-1.594-1.038c-0.572-0.222-1.227-0.375-2.185-0.418C14.751,3.01,14.444,3,12,3L12,3z M12,7.378 c-2.552,0-4.622,2.069-4.622,4.622S9.448,16.622,12,16.622s4.622-2.069,4.622-4.622S14.552,7.378,12,7.378z M12,15 c-1.657,0-3-1.343-3-3s1.343-3,3-3s3,1.343,3,3S13.657,15,12,15z M16.804,6.116c-0.596,0-1.08,0.484-1.08,1.08 s0.484,1.08,1.08,1.08c0.596,0,1.08-0.484,1.08-1.08S17.401,6.116,16.804,6.116z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Instagram</span></a></li>\n\n<li style=\"color: #000000; background-color: #ffffff; \" class=\"wp-social-link wp-social-link-bandcamp has-black-color has-white-background-color wp-block-social-link\"><a href=\"https://wordpress.org/patterns/\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M15.27 17.289 3 17.289 8.73 6.711 21 6.711 15.27 17.289\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Bandcamp</span></a></li>\n\n<li style=\"color: #000000; background-color: #ffffff; \" class=\"wp-social-link wp-social-link-twitter has-black-color has-white-background-color wp-block-social-link\"><a href=\"https://wordpress.org/patterns/\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M22.23,5.924c-0.736,0.326-1.527,0.547-2.357,0.646c0.847-0.508,1.498-1.312,1.804-2.27 c-0.793,0.47-1.671,0.812-2.606,0.996C18.324,4.498,17.257,4,16.077,4c-2.266,0-4.103,1.837-4.103,4.103 c0,0.322,0.036,0.635,0.106,0.935C8.67,8.867,5.647,7.234,3.623,4.751C3.27,5.357,3.067,6.062,3.067,6.814 c0,1.424,0.724,2.679,1.825,3.415c-0.673-0.021-1.305-0.206-1.859-0.513c0,0.017,0,0.034,0,0.052c0,1.988,1.414,3.647,3.292,4.023 c-0.344,0.094-0.707,0.144-1.081,0.144c-0.264,0-0.521-0.026-0.772-0.074c0.522,1.63,2.038,2.816,3.833,2.85 c-1.404,1.1-3.174,1.756-5.096,1.756c-0.331,0-0.658-0.019-0.979-0.057c1.816,1.164,3.973,1.843,6.29,1.843 c7.547,0,11.675-6.252,11.675-11.675c0-0.178-0.004-0.355-0.012-0.531C20.985,7.47,21.68,6.747,22.23,5.924z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Twitter</span></a></li>\n\n<li style=\"color: #000000; background-color: #ffffff; \" class=\"wp-social-link wp-social-link-twitch has-black-color has-white-background-color wp-block-social-link\"><a href=\"https://wordpress.org/patterns/\" class=\"wp-block-social-link-anchor\"><svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" aria-hidden=\"true\" focusable=\"false\"><path d=\"M16.499,8.089h-1.636v4.91h1.636V8.089z M12,8.089h-1.637v4.91H12V8.089z M4.228,3.178L3,6.451v13.092h4.499V22h2.456 l2.454-2.456h3.681L21,14.636V3.178H4.228z M19.364,13.816l-2.864,2.865H12l-2.453,2.453V16.68H5.863V4.814h13.501V13.816z\"></path></svg><span class=\"wp-block-social-link-label screen-reader-text\">Twitch</span></a></li></ul>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:3:\"6.1\";s:25:\"wpop_contains_block_types\";s:116:\"core/button,core/buttons,core/group,core/site-tagline,core/site-title,core/social-link,core/social-links,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:2665:\"<!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"var:preset|spacing|80\",\"right\":\"0\",\"bottom\":\"var:preset|spacing|80\",\"left\":\"0\"}}},\"backgroundColor\":\"white\",\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group has-white-background-color has-background\" style=\"padding-top:var(--wp--preset--spacing--80);padding-right:0;padding-bottom:var(--wp--preset--spacing--80);padding-left:0\"><!-- wp:site-title {\"textAlign\":\"center\",\"style\":{\"typography\":{\"fontStyle\":\"normal\",\"fontWeight\":\"700\"}},\"fontSize\":\"medium\"} /-->\n\n<!-- wp:site-tagline {\"textAlign\":\"center\"} /-->\n\n<!-- wp:spacer {\"height\":\"20px\"} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Watch my latest videos</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"width\":100} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Buy merch</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"width\":100} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link wp-element-button\">Support me on Patreon</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"width\":100,\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link wp-element-button\">Get tickets for my show</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:social-links {\"iconColor\":\"black\",\"iconColorValue\":\"#000000\",\"iconBackgroundColor\":\"white\",\"iconBackgroundColorValue\":\"#ffffff\",\"size\":\"has-normal-icon-size\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"0\",\"left\":\"0\"},\"padding\":{\"top\":\"var:preset|spacing|60\",\"bottom\":\"var:preset|spacing|60\"}}},\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<ul class=\"wp-block-social-links has-normal-icon-size has-icon-color has-icon-background-color\" style=\"padding-top:var(--wp--preset--spacing--60);padding-bottom:var(--wp--preset--spacing--60)\"><!-- wp:social-link {\"url\":\"https://wordpress.org/patterns/\",\"service\":\"instagram\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://wordpress.org/patterns/\",\"service\":\"bandcamp\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://wordpress.org/patterns/\",\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"url\":\"https://wordpress.org/patterns/\",\"service\":\"twitch\"} /--></ul>\n<!-- /wp:social-links --></div>\n<!-- /wp:group -->\";}i:15;O:8:\"stdClass\":7:{s:2:\"id\";i:732;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Simple call to action\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:962:\"\n<div class=\"wp-block-group alignfull has-text-color has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#ffffff;color:#000000\">\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>GET IN TOUCH</strong></p>\n\n\n\n<h2 class=\"has-text-align-center wp-block-heading\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Schedule a Visit</strong></h2>\n\n\n\n<div class=\"wp-block-buttons is-horizontal is-content-justification-center is-layout-flex wp-container-63 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contact us</a></div>\n</div>\n\n\n\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:89:\"A container with a white background. Inside is a centered paragraph, heading, and button.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/button,core/buttons,core/group,core/heading,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"buttons\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1506:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-group alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"lineHeight\":\".9\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>GET IN TOUCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"typography\":{\"fontSize\":59,\"lineHeight\":\"1.15\"}}} -->\n<h2 class=\"has-text-align-center\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Schedule a Visit</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":50,\"style\":{\"color\":{\"background\":\"#000000\",\"text\":\"#ffffff\"},\"border\":{\"radius\":\"50px\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contact us</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:16;O:8:\"stdClass\":7:{s:2:\"id\";i:678;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:26:\"Three column pricing table\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3719:\"\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-71 wp-block-columns-is-layout-flex\" style=\"margin-bottom:0\">\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-2ae1b943d87d6b5cbc827b8e7de5c343 is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#ffe97d;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"single\" style=\"font-size:40px\"><strong>Single</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Enrich our growing community.</strong> </p>\n\n\n\n<hr class=\"wp-block-separator has-text-color has-css-opacity has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>General admission and member discounts for one adult</li>\n\n\n\n<li>One free ticket per special exhibition</li>\n\n\n\n<li>Two single-use guest passes per year</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-65 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$110 / year</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-c860b6260b3b3b7bae640a65db9c9aec is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#d1d1e1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"family\" style=\"font-size:40px\"><strong>Family</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Support special exhibitions.</strong></p>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>General admission and member discounts for two adults</li>\n\n\n\n<li>Four free tickets per special exhibition</li>\n\n\n\n<li>Four single-use guest passes per year</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-67 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$200 / year</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column has-text-color has-background has-link-color wp-elements-4a86cd4fa1de9230a73a90c7ad305893 is-layout-flow wp-block-column-is-layout-flow\" style=\"color:#000000;background-color:#c0ebf1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" id=\"patron\" style=\"font-size:40px\"><strong>Patron</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\"><strong>Take support to the next level.</strong></p>\n\n\n\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\">\n<li>General admission and member discounts for two adults</li>\n\n\n\n<li>Five free tickets per special exhibition</li>\n\n\n\n<li>Six single-use guest passes per year</li>\n</ul>\n\n\n\n<div class=\"wp-block-buttons alignfull is-horizontal is-content-justification-center is-layout-flex wp-container-69 wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$400 / year</a></div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:272:\"Three equal-width columns set up as a pricing table. The left column has a yellow background, the middle column has a light purple background, and the right column has a light blue background. Each column contains a heading, subheading, separator, list, and then a button.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:117:\"core/button,core/buttons,core/column,core/columns,core/heading,core/list,core/list-item,core/paragraph,core/separator\";}s:14:\"category_slugs\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:6125:\"<!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"margin\":{\"bottom\":\"0\"}}}} -->\n<div class=\"wp-block-columns alignwide\" style=\"margin-bottom:0\"><!-- wp:column {\"style\":{\"color\":{\"background\":\"#ffe97d\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#ffe97d;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"single\"} -->\n<h2 class=\"wp-block-heading\" id=\"single\" style=\"font-size:40px\"><strong>Single</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Enrich our growing community.</strong> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"style\":{\"color\":{\"background\":\"#000000\"}},\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-css-opacity has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>General admission and member discounts for one adult</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>One free ticket per special exhibition</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Two single-use guest passes per year</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$110 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#d1d1e1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#d1d1e1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"family\"} -->\n<h2 class=\"wp-block-heading\" id=\"family\" style=\"font-size:40px\"><strong>Family</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Support special exhibitions.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>General admission and member discounts for two adults</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Four free tickets per special exhibition</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Four single-use guest passes per year</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$200 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#c0ebf1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"color:#000000;background-color:#c0ebf1;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}},\"anchor\":\"patron\"} -->\n<h2 class=\"wp-block-heading\" id=\"patron\" style=\"font-size:40px\"><strong>Patron</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\"><strong>Take support to the next level.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"opacity\":\"css\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-css-opacity is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><!-- wp:list-item -->\n<li>General admission and member discounts for two adults</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Five free tickets per special exhibition</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Six single-use guest passes per year</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius wp-element-button\" style=\"background-color:#000000\">$400 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:17;O:8:\"stdClass\":7:{s:2:\"id\";i:669;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:31:\"Image and quote on a background\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2281:\"\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-1-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-1-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-1-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-1.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>Even the bitterest fruit has sugar in it.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Terry a O&rsquo;Neal</p>\n</div>\n</div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-half-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-half-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-half-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-half.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>The trees that are slow to grow bear the best fruit.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Molière</p>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:221:\"Two media and text blocks. The top one has a pale green background. The text is on the left and contains a quote, and the image is on the right. The next block underneath has the image on the left, and quote on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:41:\"core/group,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:2404:\"<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":5263,\"mediaLink\":\"https://wordpress.org/patterns/pattern/image-and-quote-on-a-background/pear-3/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#f1f5c7\"}}} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>Even the bitterest fruit has sugar in it.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Terry a O\'Neal</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":673,\"mediaLink\":\"https://wordpress.org/patterns/pear-half/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#fffdea\"}}} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>The trees that are slow to grow bear the best fruit.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Molière</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\";}i:18;O:8:\"stdClass\":7:{s:2:\"id\";i:591;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Event\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1687:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color wp-elements-5fce4e677a9b9d7d0cae0196c9d74d97\" style=\"color:#fffdc7;background-color:#121c1c;grid-template-columns:auto 60%\"><div class=\"wp-block-media-text__content\">\n<div class=\"wp-block-group has-link-color wp-elements-71b4a847bbd96313422a1303e9ba41f3 is-layout-flow wp-block-group-is-layout-flow\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-weight:700;line-height:1.15\">Opening <br>Party</h2>\n\n\n\n<p class=\"has-text-color has-link-color wp-elements-0860918d5b16b9e1778b1966b333b980\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n</div>\n</div><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1536x1536.jpg 1536w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1.jpg 1572w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:54:\"core/group,core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1617:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaId\":590,\"mediaLink\":\"https://wordpress.org/patterns/image-from-rawpixel-id-430289-jpeg-1/\",\"mediaType\":\"image\",\"mediaWidth\":60,\"verticalAlignment\":\"top\",\"style\":{\"color\":{\"background\":\"#121c1c\",\"text\":\"#fffdc7\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color\" style=\"color:#fffdc7;background-color:#121c1c;grid-template-columns:auto 60%\"><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-weight:700;line-height:1.15\">Opening <br>Party</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}},\"color\":{\"text\":\"#fffdc7\"}}} -->\n<p class=\"has-text-color has-link-color\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" /></figure></div>\n<!-- /wp:media-text -->\";}i:19;O:8:\"stdClass\":7:{s:2:\"id\";i:573;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Image on solid color with description\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1830:\"\n<div class=\"wp-block-columns alignfull is-layout-flex wp-container-80 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:50%\">\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img loading=\"lazy\" decoding=\"async\" width=\"263\" height=\"300\" src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" srcset=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg 263w, https://s.w.org/patterns/files/2021/06/wire-sculpture-898x1024.jpg 898w, https://s.w.org/patterns/files/2021/06/wire-sculpture-768x875.jpg 768w, https://s.w.org/patterns/files/2021/06/wire-sculpture-1347x1536.jpg 1347w, https://s.w.org/patterns/files/2021/06/wire-sculpture.jpg 1658w\" sizes=\"(max-width: 263px) 100vw, 263px\" /></figure></div>\n</div></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\">\n<div class=\"wp-block-columns is-layout-flex wp-container-78 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:320px\">\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Airplane</strong></p>\n\n\n\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Copper wire, wood base. I created this piece in late 2008. For this work, I aimed to convey both the industrial heaviness of an airplane, but also the cloudlike floating quality you feel when you’re in one.</p>\n</div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:38:\"Image on solid color with description.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:61:\"core/column,core/columns,core/cover,core/image,core/paragraph\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1826:\"<!-- wp:columns {\"align\":\"full\"} -->\n<div class=\"wp-block-columns alignfull\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:cover {\"customOverlayColor\":\"#f6f6f6\",\"minHeight\":600} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:image {\"align\":\"center\",\"id\":571,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" /></figure></div>\n<!-- /wp:image --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"1em\",\"right\":\"1em\",\"bottom\":\"1em\",\"left\":\"1em\"}}}} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"320px\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:320px\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Airplane</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Copper wire, wood base. I created this piece in late 2008. For this work, I aimed to convey both the industrial heaviness of an airplane, but also the cloudlike floating quality you feel when you’re in one.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:20;O:8:\"stdClass\":7:{s:2:\"id\";i:526;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:31:\"Offset images with descriptions\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2907:\"\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top is-layout-flex wp-container-90 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-vertically-aligned-top is-layout-flow wp-block-column-is-layout-flow\">\n<div class=\"wp-block-group wp-container-content-83 is-vertical is-content-justification-left is-nowrap is-layout-flex wp-container-84 wp-block-group-is-layout-flex\" style=\"margin-top:0;margin-bottom:0\">\n<figure class=\"wp-block-image size-large wp-container-content-81\"><img loading=\"lazy\" decoding=\"async\" width=\"793\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"Beautiful photomechanical prints of White Irises (1887-1897) by Ogawa Kazumasa. Original from The Rijksmuseum. \" class=\"wp-image-525\" srcset=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg 793w, https://s.w.org/patterns/files/2021/06/Iris-232x300.jpg 232w, https://s.w.org/patterns/files/2021/06/Iris-768x992.jpg 768w, https://s.w.org/patterns/files/2021/06/Iris-1189x1536.jpg 1189w, https://s.w.org/patterns/files/2021/06/Iris-1586x2048.jpg 1586w, https://s.w.org/patterns/files/2021/06/Iris.jpg 1920w\" sizes=\"(max-width: 793px) 100vw, 793px\" /></figure>\n\n\n\n<div class=\"wp-block-group is-vertical is-nowrap is-layout-flex wp-container-82 wp-block-group-is-layout-flex\">\n<p class=\"has-medium-font-size\"><strong>White Irises</strong></p>\n\n\n\n<p class=\"has-small-font-size\">Ogawa Kazumasa</p>\n</div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-top is-layout-flow wp-block-column-is-layout-flow\">\n<div class=\"wp-block-group wp-container-content-87 is-vertical is-layout-flex wp-container-88 wp-block-group-is-layout-flex\" style=\"margin-top:0;margin-bottom:0\">\n<div class=\"wp-block-group is-vertical is-nowrap is-layout-flex wp-container-86 wp-block-group-is-layout-flex\">\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-medium-font-size\"><strong>Cherry Blossom</strong></p>\n\n\n\n<p class=\"has-small-font-size\">Ogawa Kazumasa</p>\n</div>\n\n\n\n<figure class=\"wp-block-image size-large\" style=\"font-size:14px\"><img loading=\"lazy\" decoding=\"async\" width=\"707\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"Beautiful photomechanical prints of Cherry Blossom (1887-1897) by Ogawa Kazumasa. Original from The Rijksmuseum. \" class=\"wp-image-524\" srcset=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg 707w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-207x300.jpg 207w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-768x1112.jpg 768w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1061x1536.jpg 1061w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1414x2048.jpg 1414w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-scaled.jpg 1768w\" sizes=\"(max-width: 707px) 100vw, 707px\" /></figure>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:58:\"Two offset columns with images and titles within each one.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:73:\"core/column,core/columns,core/group,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:7:\"gallery\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:2930:\"<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"var:preset|spacing|40\",\"left\":\"var:preset|spacing|40\"}}}} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"480px\"},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\",\"justifyContent\":\"left\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:image {\"id\":525,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"50%\"}}} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"Beautiful photomechanical prints of White Irises (1887-1897) by Ogawa Kazumasa. Original from The Rijksmuseum. \" class=\"wp-image-525\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\"><strong>White Irises</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Ogawa Kazumasa</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:group {\"style\":{\"layout\":{\"selfStretch\":\"fixed\",\"flexSize\":\"480px\"},\"spacing\":{\"margin\":{\"top\":\"0\",\"bottom\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\"}} -->\n<div class=\"wp-block-group\" style=\"margin-top:0;margin-bottom:0\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"0\"}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\"><!-- wp:spacer {\"height\":\"80px\"} -->\n<div style=\"height:80px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\"><strong>Cherry Blossom</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\">Ogawa Kazumasa</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:image {\"id\":524,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<figure class=\"wp-block-image size-large\" style=\"font-size:14px\"><img src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"Beautiful photomechanical prints of Cherry Blossom (1887-1897) by Ogawa Kazumasa. Original from The Rijksmuseum. \" class=\"wp-image-524\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:group --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:21;O:8:\"stdClass\":7:{s:2:\"id\";i:521;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:45:\"Image with description below and to the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1665:\"\n<div class=\"wp-block-columns is-layout-flex wp-container-95 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:10%\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" decoding=\"async\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Vintage Cupid Illustration\" class=\"wp-image-522\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1.jpg 1510w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:10%\"></div>\n</div>\n\n\n\n<div class=\"wp-block-columns is-layout-flex wp-container-98 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"font-size:14px\"><strong>Cupid in Flight</strong><br>48” x 48” Giclee print on archival paper.</p>\n</div>\n</div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:46:\"Image with description below and to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:50:\"core/column,core/columns,core/image,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1241:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":522,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Vintage Cupid Illustration\" class=\"wp-image-522\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Cupid in Flight</strong><br>48” x 48” Giclee print on archival paper.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:22;O:8:\"stdClass\":7:{s:2:\"id\";i:502;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:13:\"Event details\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1685:\"\n<figure class=\"wp-block-image alignwide size-full\"><img loading=\"lazy\" decoding=\"async\" width=\"2560\" height=\"1227\" src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image of a woman being carried through the air by swans.\" class=\"wp-image-501\" srcset=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg 2560w, https://s.w.org/patterns/files/2021/06/Group-17-300x144.jpg 300w, https://s.w.org/patterns/files/2021/06/Group-17-1024x491.jpg 1024w, https://s.w.org/patterns/files/2021/06/Group-17-768x368.jpg 768w, https://s.w.org/patterns/files/2021/06/Group-17-1536x736.jpg 1536w, https://s.w.org/patterns/files/2021/06/Group-17-2048x981.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\" /></figure>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-layout-flex wp-container-103 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"line-height:2\"><strong>Location:</strong><br>82 Main St. Brooklyn, NY</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<p style=\"line-height:2\"><strong>Date:</strong><br>October 24, 2021</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\">\n<div class=\"wp-block-buttons is-layout-flex wp-block-buttons-is-layout-flex\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#efefef;background-color:#262626\">Purchase Tickets</a></div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:14:\"Event details.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/button,core/buttons,core/column,core/columns,core/image,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:8:\"featured\";}s:15:\"pattern_content\";s:1642:\"<!-- wp:image {\"align\":\"wide\",\"id\":501,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image alignwide size-full\"><img src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image of a woman being carried through the air by swans.\" class=\"wp-image-501\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Location:</strong><br>82 Main St. Brooklyn, NY</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Date:</strong><br>October 24, 2021</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100,\"style\":{\"color\":{\"background\":\"#262626\",\"text\":\"#efefef\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background wp-element-button\" style=\"color:#efefef;background-color:#262626\">Purchase Tickets</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:23;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3496:\"\n<div class=\"wp-block-group alignfull has-background is-layout-flow wp-block-group-is-layout-flow\" style=\"background-color:#f5eac1;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\">\n<div class=\"wp-block-group is-vertical is-nowrap is-layout-flex wp-container-104 wp-block-group-is-layout-flex\" style=\"padding-right:0;padding-left:0\">\n<h6 class=\"wp-block-heading has-text-color\" id=\"ecosystem\" style=\"color:#000000;font-size:16px\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:6vw;font-style:normal;font-weight:700;letter-spacing:0px;line-height:0.9;text-decoration:none;text-transform:none\">Positive growth.</p>\n</div>\n\n\n\n<div style=\"height:1vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-group alignwide is-vertical is-nowrap is-layout-flex wp-container-112 wp-block-group-is-layout-flex\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\">\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-108 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. </p>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-111 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:69%\">\n<figure class=\"wp-block-image size-large\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:33%\">\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&rsquo;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:86:\"core/column,core/columns,core/group,core/heading,core/image,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:5:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:7:\"gallery\";i:3;s:6:\"images\";i:4;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:5124:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f5eac1\"},\"spacing\":{\"padding\":{\"top\":\"6vw\",\"bottom\":\"6vw\",\"left\":\"6vw\",\"right\":\"6vw\"}}},\"layout\":{\"type\":\"default\"}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f5eac1;padding-top:6vw;padding-right:6vw;padding-bottom:6vw;padding-left:6vw\"><!-- wp:group {\"style\":{\"spacing\":{\"blockGap\":\"16px\",\"padding\":{\"right\":\"0\",\"left\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group\" style=\"padding-right:0;padding-left:0\"><!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"16px\"}},\"anchor\":\"ecosystem\"} -->\n<h6 class=\"wp-block-heading has-text-color\" id=\"ecosystem\" style=\"color:#000000;font-size:16px\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"0.9\",\"fontSize\":\"6vw\",\"fontStyle\":\"normal\",\"fontWeight\":\"700\",\"textTransform\":\"none\",\"textDecoration\":\"none\",\"letterSpacing\":\"0px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:6vw;font-style:normal;font-weight:700;letter-spacing:0px;line-height:0.9;text-decoration:none;text-transform:none\">Positive growth.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\n\n<!-- wp:spacer {\"height\":\"1vw\"} -->\n<div style=\"height:1vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:group {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":\"3vw\",\"padding\":{\"top\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"right\":\"0\"}}},\"layout\":{\"type\":\"flex\",\"orientation\":\"vertical\",\"flexWrap\":\"nowrap\"}} -->\n<div class=\"wp-block-group alignwide\" style=\"padding-top:0;padding-right:0;padding-bottom:0;padding-left:0\"><!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"top\":\"3vw\",\"left\":\"3vw\"}}}} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer {\"height\":\"2vw\"} -->\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\",\"style\":{\"spacing\":{\"blockGap\":{\"left\":\"3vw\"}}}} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"69%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:69%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:spacer {\"height\":\"2vw\"} -->\n<div style=\"height:2vw\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"},\"typography\":{\"fontSize\":\"17px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group --></div>\n<!-- /wp:group -->\";}i:24;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:554:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img decoding=\"async\" src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:43:\"core/heading,core/media-text,core/paragraph\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:844:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"wp-block-heading has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:25;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1321:\"\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img decoding=\"async\" class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container is-layout-flow wp-block-cover-is-layout-flow\">\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide is-layout-flex wp-container-116 wp-block-columns-is-layout-flex\">\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column is-layout-flow wp-block-column-is-layout-flow\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:75:\"core/column,core/columns,core/cover,core/heading,core/paragraph,core/spacer\";}s:14:\"category_slugs\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:1698:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull\" style=\"min-height:800px\"><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim-60 has-background-dim\"></span><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"wp-block-heading alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":\"330px\"} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:26;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:526:\"\n<h2 class=\"alignwide wp-block-heading\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We&rsquo;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":7:{s:13:\"wpop_keywords\";s:17:\"large text, title\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";s:15:\"wpop_wp_version\";s:0:\"\";s:25:\"wpop_contains_block_types\";s:12:\"core/heading\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:2:{i:0;s:4:\"core\";i:1;s:8:\"featured\";}s:15:\"pattern_content\";s:621:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(957, '_site_transient_timeout_theme_roots', '1700181876', 'no'),
(958, '_site_transient_theme_roots', 'a:5:{s:5:\"jaxon\";s:7:\"/themes\";s:9:\"mediclean\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_activities`
--

CREATE TABLE `wp_pm_activities` (
  `id` int(11) UNSIGNED NOT NULL,
  `actor_id` int(11) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `action_type` varchar(255) NOT NULL,
  `resource_id` int(11) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_assignees`
--

CREATE TABLE `wp_pm_assignees` (
  `id` int(11) UNSIGNED NOT NULL,
  `task_id` int(11) UNSIGNED NOT NULL,
  `assigned_to` int(11) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `started_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_boardables`
--

CREATE TABLE `wp_pm_boardables` (
  `id` int(11) UNSIGNED NOT NULL,
  `board_id` int(11) UNSIGNED NOT NULL,
  `board_type` varchar(255) NOT NULL,
  `boardable_id` int(11) UNSIGNED NOT NULL,
  `boardable_type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_boards`
--

CREATE TABLE `wp_pm_boards` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) UNSIGNED DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `is_private` tinyint(2) UNSIGNED DEFAULT 0,
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_capabilities`
--

CREATE TABLE `wp_pm_capabilities` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_categories`
--

CREATE TABLE `wp_pm_categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `categorible_type` varchar(255) DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_category_project`
--

CREATE TABLE `wp_pm_category_project` (
  `project_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_comments`
--

CREATE TABLE `wp_pm_comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `mentioned_users` varchar(255) DEFAULT NULL,
  `commentable_id` int(11) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) NOT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_files`
--

CREATE TABLE `wp_pm_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fileable_id` int(11) DEFAULT NULL,
  `fileable_type` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'file',
  `attachment_id` bigint(20) DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_imports`
--

CREATE TABLE `wp_pm_imports` (
  `id` int(20) UNSIGNED NOT NULL,
  `type` varchar(40) NOT NULL,
  `remote_id` varchar(150) NOT NULL,
  `local_id` varchar(150) NOT NULL,
  `creator_id` int(15) UNSIGNED DEFAULT NULL,
  `source` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_meta`
--

CREATE TABLE `wp_pm_meta` (
  `id` int(11) UNSIGNED NOT NULL,
  `entity_id` int(11) UNSIGNED NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_projects`
--

CREATE TABLE `wp_pm_projects` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `budget` double(8,2) DEFAULT NULL,
  `pay_rate` double(8,2) DEFAULT NULL,
  `est_completion_date` timestamp NULL DEFAULT NULL,
  `color_code` varchar(255) DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `projectable_type` varchar(255) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_roles`
--

CREATE TABLE `wp_pm_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_role_project`
--

CREATE TABLE `wp_pm_role_project` (
  `id` int(20) UNSIGNED NOT NULL,
  `project_id` int(20) UNSIGNED NOT NULL,
  `role_id` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_role_project_capabilities`
--

CREATE TABLE `wp_pm_role_project_capabilities` (
  `role_project_id` int(20) UNSIGNED NOT NULL,
  `capability_id` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_role_project_users`
--

CREATE TABLE `wp_pm_role_project_users` (
  `role_project_id` int(20) UNSIGNED NOT NULL,
  `user_id` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_role_user`
--

CREATE TABLE `wp_pm_role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) UNSIGNED NOT NULL,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `assigned_by` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_settings`
--

CREATE TABLE `wp_pm_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `project_id` int(11) UNSIGNED DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_tasks`
--

CREATE TABLE `wp_pm_tasks` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `estimation` int(11) DEFAULT 0,
  `start_at` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `complexity` tinyint(4) DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT 1,
  `payable` tinyint(1) NOT NULL DEFAULT 0,
  `recurrent` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_private` tinyint(2) UNSIGNED DEFAULT 0,
  `project_id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `completed_by` int(11) UNSIGNED DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_task_types`
--

CREATE TABLE `wp_pm_task_types` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `updated_by` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_pm_task_type_task`
--

CREATE TABLE `wp_pm_task_type_task` (
  `type_id` int(11) UNSIGNED NOT NULL,
  `task_id` int(11) UNSIGNED NOT NULL,
  `project_id` int(11) UNSIGNED NOT NULL,
  `list_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, '_customize_changeset_uuid', '17947524-11e4-4c18-b477-8e8d65ad24bd'),
(5, 7, '_edit_lock', '1698958686:1'),
(7, 8, '_customize_changeset_uuid', '17947524-11e4-4c18-b477-8e8d65ad24bd'),
(9, 9, '_customize_changeset_uuid', '17947524-11e4-4c18-b477-8e8d65ad24bd'),
(10, 13, '_menu_item_type', 'post_type'),
(11, 13, '_menu_item_menu_item_parent', '0'),
(12, 13, '_menu_item_object_id', '6'),
(13, 13, '_menu_item_object', 'page'),
(14, 13, '_menu_item_target', ''),
(15, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(16, 13, '_menu_item_xfn', ''),
(17, 13, '_menu_item_url', ''),
(34, 7, '_wp_trash_meta_status', 'publish'),
(35, 7, '_wp_trash_meta_time', '1698958708'),
(36, 6, '_edit_lock', '1700179931:1'),
(37, 6, 'footnotes', ''),
(38, 6, '_edit_last', '1'),
(40, 23, '_wp_trash_meta_status', 'publish'),
(41, 23, '_wp_trash_meta_time', '1698982880'),
(42, 25, '_wp_trash_meta_status', 'publish'),
(43, 25, '_wp_trash_meta_time', '1698984943'),
(44, 26, '_edit_lock', '1698985071:1'),
(45, 26, '_wp_trash_meta_status', 'publish'),
(46, 26, '_wp_trash_meta_time', '1698985097'),
(47, 27, '_edit_lock', '1699131225:1'),
(48, 27, '_wp_trash_meta_status', 'publish'),
(49, 27, '_wp_trash_meta_time', '1699131231'),
(51, 8, '_edit_lock', '1699236532:1'),
(52, 56, '_wp_attached_file', '2023/11/a-propos.jpg'),
(53, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:550;s:6:\"height\";i:249;s:4:\"file\";s:20:\"2023/11/a-propos.jpg\";s:8:\"filesize\";i:29124;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:21:\"Ndèye Penda Ndiongue\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1699206637\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 8, '_thumbnail_id', '56'),
(55, 57, '_edit_lock', '1699225216:1'),
(56, 56, '_wp_attachment_is_custom_background', 'twentytwentyone'),
(57, 57, '_wp_trash_meta_status', 'publish'),
(58, 57, '_wp_trash_meta_time', '1699225274'),
(59, 58, '_edit_lock', '1699225517:1'),
(60, 58, '_wp_trash_meta_status', 'publish'),
(61, 58, '_wp_trash_meta_time', '1699225534'),
(65, 2, '_edit_lock', '1699225566:1'),
(67, 63, '_customize_changeset_uuid', '1e2975c0-1c6e-45d3-aeb8-450f6ad2b3cc'),
(68, 66, '_menu_item_type', 'post_type'),
(69, 66, '_menu_item_menu_item_parent', '0'),
(70, 66, '_menu_item_object_id', '63'),
(71, 66, '_menu_item_object', 'page'),
(72, 66, '_menu_item_target', ''),
(73, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 66, '_menu_item_xfn', ''),
(75, 66, '_menu_item_url', ''),
(76, 64, '_wp_trash_meta_status', 'publish'),
(77, 64, '_wp_trash_meta_time', '1699236942'),
(78, 63, '_edit_lock', '1699240194:1'),
(79, 63, 'footnotes', ''),
(80, 69, '_wp_trash_meta_status', 'publish'),
(81, 69, '_wp_trash_meta_time', '1699237459'),
(82, 70, '_wp_trash_meta_status', 'publish'),
(83, 70, '_wp_trash_meta_time', '1699237489'),
(84, 71, '_edit_lock', '1699237711:1'),
(86, 72, '_customize_changeset_uuid', '0162bfe3-d9cb-4c22-9bf2-a9bfc8b3e09d'),
(97, 71, '_wp_trash_meta_status', 'publish'),
(98, 71, '_wp_trash_meta_time', '1699237723'),
(99, 75, '_edit_lock', '1699237830:1'),
(100, 75, '_wp_trash_meta_status', 'publish'),
(101, 75, '_wp_trash_meta_time', '1699237854'),
(102, 76, '_wp_trash_meta_status', 'publish'),
(103, 76, '_wp_trash_meta_time', '1699237963');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-11-02 21:09:04', '2023-11-02 20:09:04', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2023-11-02 21:09:04', '2023-11-02 20:09:04', '', 0, '/?p=1', 0, 'post', '', 1),
(2, 1, '2023-11-02 21:09:04', '2023-11-02 20:09:04', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux personnes visitant le site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules supers pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2023-11-02 21:09:04', '2023-11-02 20:09:04', '', 0, '/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-11-02 21:09:04', '2023-11-02 20:09:04', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>L’adresse de notre site est : http://localhost:8080.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Commentaires</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Quand vous laissez un commentaire sur notre site, les données inscrites dans le formulaire de commentaire, ainsi que votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse e-mail (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Médias</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous téléversez des images sur le site, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les personnes visitant votre site peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse e-mail et site dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenu embarqué depuis d’autres sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous demandez une réinitialisation de votre mot de passe, votre adresse IP sera incluse dans l’e-mail de réinitialisation.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les comptes qui s’inscrivent sur notre site (le cas échéant), nous stockons également les données personnelles indiquées dans leur profil. Tous les comptes peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur identifiant). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Où vos données sont envoyées</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texte suggéré : </strong>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2023-11-02 21:09:04', '2023-11-02 20:09:04', '', 0, '/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-11-02 21:09:14', '2023-11-02 20:09:14', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-11-02 21:09:14', '2023-11-02 20:09:14', '', 0, '/index.php/2023/11/02/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2023-11-02 21:58:20', '2023-11-02 20:58:20', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/employee.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">NOM UTILISATEUR</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">MOT DE PASSE</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"/salaire/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'publish', 'closed', 'closed', '', 'connexion', '', '', '2023-11-16 23:39:08', '2023-11-16 22:39:08', '', 0, '/?page_id=6', 0, 'page', '', 0),
(7, 1, '2023-11-02 21:58:20', '2023-11-02 20:58:20', '{\n    \"mediclean::nav_menu_locations[primary]\": {\n        \"value\": -727534657927440400,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:43:59\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            6,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:47:25\"\n    },\n    \"nav_menu[-727534657927440400]\": {\n        \"value\": {\n            \"name\": \"connexion-employ\\u00e9\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:43:59\"\n    },\n    \"nav_menu_item[-7407408781710678000]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Connexion\",\n            \"url\": \"/?page_id=6\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Connexion\",\n            \"nav_menu_term_id\": -727534657927440400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:46:25\"\n    },\n    \"nav_menu_item[-3753992067486728000]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"A propos\",\n            \"url\": \"/?page_id=8\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"A propos\",\n            \"nav_menu_term_id\": -727534657927440400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:44:24\"\n    },\n    \"nav_menu_item[-7180364408435364000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Accueil\",\n            \"url\": \"http://#",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Accueil\",\n            \"nav_menu_term_id\": -727534657927440400,\n            \"_invalid\": false,\n            \"type_label\": \"Lien personnalis\\u00e9\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:46:25\"\n    },\n    \"nav_menu_item[-6935467389345116000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:48:25\"\n    },\n    \"mediclean::header_image\": {\n        \"value\": \"/wp-content/themes/mediclean/images/header-banner.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:49:25\"\n    },\n    \"mediclean::header_image_data\": {\n        \"value\": \"corporate-business\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:49:25\"\n    },\n    \"sidebars_widgets[sidebar-footer-bottom-widget-area]\": {\n        \"value\": [\n            \"block-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:51:26\"\n    },\n    \"widget_block[8]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p> </p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:57:45\"\n    },\n    \"mediclean::theme_options[show_social_in_footer]\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:53:26\"\n    },\n    \"mediclean::theme_options[blog_title]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-02 20:55:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '17947524-11e4-4c18-b477-8e8d65ad24bd', '', '', '2023-11-02 21:58:20', '2023-11-02 20:58:20', '', 0, '/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2023-11-02 21:58:21', '2023-11-02 20:58:21', '', 'A propos', '', 'publish', 'closed', 'closed', '', 'a-propos', '', '', '2023-11-06 00:06:46', '2023-11-05 23:06:46', '', 0, '/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-11-02 21:58:22', '2023-11-02 20:58:22', '', 'Contacts', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2023-11-02 21:58:22', '2023-11-02 20:58:22', '', 0, '/?page_id=9', 0, 'page', '', 0),
(10, 1, '2023-11-02 21:58:20', '2023-11-02 20:58:20', '', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-02 21:58:20', '2023-11-02 20:58:20', '', 6, '/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-11-02 21:58:21', '2023-11-02 20:58:21', '', 'A propos', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-11-02 21:58:21', '2023-11-02 20:58:21', '', 8, '/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-11-02 21:58:22', '2023-11-02 20:58:22', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2023-11-02 21:58:22', '2023-11-02 20:58:22', '', 9, '/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-11-02 21:58:22', '2023-11-02 20:58:22', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2023-11-02 21:58:22', '2023-11-02 20:58:22', '', 0, '/index.php/2023/11/02/13/', 3, 'nav_menu_item', '', 0),
(19, 1, '2023-11-03 03:47:28', '2023-11-03 02:47:28', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-03 03:47:28', '2023-11-03 02:47:28', '', 6, '/?p=19', 0, 'revision', '', 0),
(21, 1, '2023-11-03 03:53:34', '2023-11-03 02:53:34', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&lt;?php wp_login_form(); ?></code></pre>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-03 03:53:34', '2023-11-03 02:53:34', '', 6, '/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-11-03 04:19:12', '2023-11-03 03:19:12', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code></code></pre>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-03 04:19:12', '2023-11-03 03:19:12', '', 6, '/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-11-03 04:41:19', '2023-11-03 03:41:19', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"block-2\",\n                \"block-3\",\n                \"block-4\"\n            ],\n            \"sidebar-2\": [\n                \"block-5\",\n                \"block-6\"\n            ],\n            \"sidebar-front-page-widget-area\": [],\n            \"sidebar-footer-bottom-widget-area\": [\n                \"block-8\"\n            ],\n            \"footer-1\": [],\n            \"footer-2\": [],\n            \"footer-3\": [],\n            \"footer-4\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-03 03:41:18\"\n    },\n    \"jaxon::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-03 03:41:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd128e94e-941f-4fcc-ae0c-463c337b91a0', '', '', '2023-11-03 04:41:19', '2023-11-03 03:41:19', '', 0, '/index.php/2023/11/03/d128e94e-941f-4fcc-ae0c-463c337b91a0/', 0, 'customize_changeset', '', 0),
(24, 1, '2023-11-03 04:41:56', '2023-11-03 03:41:56', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-jaxon', '', '', '2023-11-03 04:41:56', '2023-11-03 03:41:56', '', 0, '/index.php/2023/11/03/wp-global-styles-jaxon/', 0, 'wp_global_styles', '', 0),
(25, 1, '2023-11-03 05:15:43', '2023-11-03 04:15:43', '{\n    \"mediclean::theme_options[copyright_text]\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-03 04:15:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b0dba05-b7eb-4310-b699-8cfb804e5034', '', '', '2023-11-03 05:15:43', '2023-11-03 04:15:43', '', 0, '/index.php/2023/11/03/9b0dba05-b7eb-4310-b699-8cfb804e5034/', 0, 'customize_changeset', '', 0),
(26, 1, '2023-11-03 05:18:17', '2023-11-03 04:18:17', '{\n    \"mediclean::theme_options[home_content_status]\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-03 04:16:42\"\n    },\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-03 04:17:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '596a3d26-385a-464a-9150-69a81ebfef31', '', '', '2023-11-03 05:18:17', '2023-11-03 04:18:17', '', 0, '/?p=26', 0, 'customize_changeset', '', 0),
(27, 1, '2023-11-04 21:53:50', '2023-11-04 20:53:50', '{\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-04 20:43:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f86d3641-1e3e-45ac-8b89-7e7a6368c1ef', '', '', '2023-11-04 21:53:50', '2023-11-04 20:53:50', '', 0, '/?p=27', 0, 'customize_changeset', '', 0),
(30, 1, '2023-11-04 23:02:40', '2023-11-04 22:02:40', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>\n<!-- The Modal -->\n<div id=\"myModal\" class=\"modal\">\n  <!-- Modal content -->\n  <div class=\"modal-content\">\n    <span class=\"close\">×</span>\n    <form>\n      <label for=\"email\">Email Address</label>\n      <input type=\"email\" id=\"email\" name=\"email\" required=\"\">\n      <label for=\"password\">Password</label>\n      <input type=\"password\" id=\"password\" name=\"password\" required=\"\">\n      <input type=\"submit\" value=\"Login\">\n    </form>\n  </div>\n</div>\n\n</code></pre>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-04 23:02:40', '2023-11-04 22:02:40', '', 6, '/?p=30', 0, 'revision', '', 0),
(32, 1, '2023-11-04 23:07:51', '2023-11-04 22:07:51', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>\n<!-- The Modal -->\n<div id=\"myModal\" class=\"modal\">\n  <!-- Modal content -->\n  <div class=\"modal-content\">\n    <span class=\"close\">×</span>\n    <form>\n      <label for=\"email\">Email Address</label>\n      <input type=\"email\" id=\"email\" name=\"email\" required=\"\">\n      <label for=\"password\">Password</label>\n      <input type=\"password\" id=\"password\" name=\"password\" required=\"\">\n      <input type=\"submit\" value=\"Login\">\n    </form>\n  </div>\n</div>\n<!DOCTYPE html>\n<html>\n<head>\n    <title>LOGIN</title>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n</head>\n<body>\n     <form action=\"login.php\" method=\"post\">\n        <h2>LOGIN</h2>\n        <?php if (isset($_GET[\'error\'])) { ?>\n            <p class=\"error\"><?php echo $_GET[\'error\']; ?></p>\n        <?php } ?>\n        <label>User Name</label>\n        <input type=\"text\" name=\"uname\" placeholder=\"User Name\"><br>\n        <label>Password</label>\n        <input type=\"password\" name=\"password\" placeholder=\"Password\"><br> \n        <button type=\"submit\">Login</button>\n     </form>\n</body>\n</html>\nbody {\n    background: #91a716;\n    display: flex;\n    justify-content: center;\n    align-items: center;\n    height: 100vh;\n    flex-direction: column;\n}\n*{\n    font-family: cursive;\n    box-sizing: padding-box;\n}\nform {\n    width: 1000px;\n    border: 3px solid rgb(177, 142, 142);\n    padding: 20px;\n    background: rgb(85, 54, 54);\n    border-radius: 20px;\n}\nh2 {\n    text-align: center;\n    margin-bottom: 40px;\n}\ninput {\n    display: block;\n    border: 2px solid #ccc;\n    width: 95%;\n    padding: 10px;\n    margin: 10px auto;\n    border-radius: 5px;\n}\nlabel {\n    color: #888;\n    font-size: 18px;\n    padding: 10px;\n}\nbutton {\n    float: right;\n    background: rgb(35, 174, 202);\n    padding: 10px 15px;\n    color: #fff;\n    border-radius: 5px;\n    margin-right: 10px;\n    border: none;\n}\nbutton:hover{\n    opacity: .10;\n}\n.error {\n   background: #F2DEDE;\n   color: #0c0101;\n   padding: 10px;\n   width: 95%;\n   border-radius: 5px;\n   margin: 20px auto;\n}\nh1 {\n    text-align: center;\n    color: rgb(134, 3, 3);\n}\na {\n    float: right;\n    background: rgb(183, 225, 233);\n    padding: 10px 15px;\n    color: #fff;\n    border-radius: 10px;\n    margin-right: 10px;\n    border: none;\n    text-decoration: none;\n}\na:hover{\n    opacity: .7;\n}\n</code></pre>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-04 23:07:51', '2023-11-04 22:07:51', '', 6, '/?p=32', 0, 'revision', '', 0),
(34, 1, '2023-11-04 23:17:21', '2023-11-04 22:17:21', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>\n<!DOCTYPE html>\n<html>\n<head>\n    <title>LOGIN</title>\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">\n</head>\n<body>\n     <form action=\"login.php\" method=\"post\">\n        <h2>LOGIN</h2>\n        <?php if (isset($_GET[\'error\'])) { ?>\n            <p class=\"error\"><?php echo $_GET[\'error\']; ?></p>\n        <?php } ?>\n        <label>User Name</label>\n        <input type=\"text\" name=\"uname\" placeholder=\"User Name\"><br>\n        <label>Password</label>\n        <input type=\"password\" name=\"password\" placeholder=\"Password\"><br> \n        <button type=\"submit\">Login</button>\n     </form>\nbody {\n    background: #91a716;\n    display: flex;\n    justify-content: center;\n    align-items: center;\n    height: 100vh;\n    flex-direction: column;\n}\n*{\n    font-family: cursive;\n    box-sizing: padding-box;\n}\nform {\n    width: 1000px;\n    border: 3px solid rgb(177, 142, 142);\n    padding: 20px;\n    background: rgb(85, 54, 54);\n    border-radius: 20px;\n}\nh2 {\n    text-align: center;\n    margin-bottom: 40px;\n}\ninput {\n    display: block;\n    border: 2px solid #ccc;\n    width: 95%;\n    padding: 10px;\n    margin: 10px auto;\n    border-radius: 5px;\n}\nlabel {\n    color: #888;\n    font-size: 18px;\n    padding: 10px;\n}\nbutton {\n    float: right;\n    background: rgb(35, 174, 202);\n    padding: 10px 15px;\n    color: #fff;\n    border-radius: 5px;\n    margin-right: 10px;\n    border: none;\n}\nbutton:hover{\n    opacity: .10;\n}\n.error {\n   background: #F2DEDE;\n   color: #0c0101;\n   padding: 10px;\n   width: 95%;\n   border-radius: 5px;\n   margin: 20px auto;\n}\nh1 {\n    text-align: center;\n    color: rgb(134, 3, 3);\n}\na {\n    float: right;\n    background: rgb(183, 225, 233);\n    padding: 10px 15px;\n    color: #fff;\n    border-radius: 10px;\n    margin-right: 10px;\n    border: none;\n    text-decoration: none;\n}\na:hover{\n    opacity: .7;\n}\n</body>\n</html>\n</code></pre>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-04 23:17:21', '2023-11-04 22:17:21', '', 6, '/?p=34', 0, 'revision', '', 0),
(36, 1, '2023-11-04 23:45:46', '2023-11-04 22:45:46', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>\n</code></pre>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-04 23:45:46', '2023-11-04 22:45:46', '', 6, '/?p=36', 0, 'revision', '', 0),
(38, 1, '2023-11-04 23:52:52', '2023-11-04 22:52:52', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n <p>\n  <label for=\"user_login\">Identifiant</label>\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n  <p>\n  <label for=\"user_pass\">Mot de passe</label>\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n <p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\">\n  Rester connecter</label>\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n  <p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\">\n  <input type=\"hidden\" value=\"/" name=\"redirect_to\">\n  </p>\n </form>\n<pre class=\"wp-block-code\"><code>\n</code></pre>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-04 23:52:52', '2023-11-04 22:52:52', '', 6, '/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-11-04 23:54:09', '2023-11-04 22:54:09', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n <p>\n  <label for=\"user_login\">Identifiant</label>\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n  <p>\n  <label for=\"user_pass\">Mot de passe</label>\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n <p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\">\n  Rester connecter</label>\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n  <p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\">\n  <input type=\"hidden\" value=\"http://#\" name=\"redirect_to\">\n  </p>\n </form>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-04 23:54:09', '2023-11-04 22:54:09', '', 6, '/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-11-05 00:17:02', '2023-11-04 23:17:02', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n <p>\n  <label for=\"user_login\">Identifiant</label>\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n  <p>\n  <label for=\"user_pass\">Mot de passe</label>\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n <p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\">\n  Rester connecter</label>\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n  <p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\">\n  <input type=\"hidden\" value=\"http://localhost/Abzpaie\" name=\"redirect_to\">\n  </p>\n </form>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 00:17:02', '2023-11-04 23:17:02', '', 6, '/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-11-05 01:21:51', '2023-11-05 00:21:51', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n <p>\n  <label for=\"user_login\">Identifiant</label>\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n  <p>\n  <label for=\"user_pass\">Mot de passe</label>\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n <p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\">\n  Rester connecter</label>\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n  <p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\">\n  <input type=\"hidden\" value=\"http://localhost/Abzpaie/Paye.exe\" name=\"redirect_to\">\n  </p>\n </form>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 01:21:51', '2023-11-05 00:21:51', '', 6, '/?p=41', 0, 'revision', '', 0),
(43, 1, '2023-11-05 02:22:20', '2023-11-05 01:22:20', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n <p>\n  <label for=\"user_login\">Identifiant</label>\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n  <p>\n  <label for=\"user_pass\">Mot de passe</label>\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n <p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\">\n  Rester connecter</label>\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n  <p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\">\n  <input type=\"hidden\" value=\"/payroll-master/index.php\" name=\"redirect_to\">\n  </p>\n </form>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 02:22:20', '2023-11-05 01:22:20', '', 6, '/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-11-05 02:43:18', '2023-11-05 01:43:18', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:code -->\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n <p>\n  <label for=\"user_login\">Identifiant</label>\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n  <p>\n  <label for=\"user_pass\">Mot de passe</label>\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n <p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\">\n  Rester connecter</label>\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n  <p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\">\n  <input type=\"hidden\" value=\"/payroll-master/pay.php\" name=\"redirect_to\">\n  </p>\n </form>\n<!-- /wp:code -->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 02:43:18', '2023-11-05 01:43:18', '', 6, '/?p=44', 0, 'revision', '', 0),
(46, 1, '2023-11-05 03:34:19', '2023-11-05 02:34:19', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<p><?php\n  session_start(\'pay\');\n\n    include\"connection.php\";\n\n  error_reporting(E_ALL);\n    ini_set(\'display_errors\', \'0\');\n\n\n  if (isset($_SESSION[\'username\'])) {\n          echo(\"<script>location.href = \'index.php\';</script>\");<br />\n        }<br />\n?><br />\n<!DOCTYPE html><br />\n<html lang=\"en\"><br />\n  <head><br />\n    <meta charset=\"utf-8\"><br />\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><br />\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"><br />\n    <meta name=\"description\" content=\"\"><br />\n    <meta name=\"author\" content=\"\">\n    <link rel=\"icon\" href=\"favicon.ico\">\n<p>    <title>Crawford</title></p>\n<p>    <!-- Bootstrap core CSS -->\n    <link href=\"dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n<p>    <!-- Custom styles for this template -->\n    <link href=\"starter-template.css\" rel=\"stylesheet\">\n<p>    <!-- Just for debugging purposes. Don\'t actually copy these 2 lines! --><br />\n    <!--[if lt IE 9]><script src=\"assets/js/ie8-responsive-file-warning.js\"></script><![endif]--><br />\n    <script src=\"assets/js/ie-emulation-modes-warning.js\"></script></p>\n<p>    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --><br />\n    <!--[if lt IE 9]>\n      <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\n      <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\n    <![endif]--><br />\n  </head></p>\n<p>  <body style=\"background-image:url(bg05.jpg);color:#fff;\"></p>\n<div class=\"container\">\n<div class=\"starter-template\">\n<div class=\"col-md-4\">\n          <button class=\"btn btn-primary adminLog\">Admin Login</button><br />\n          <button class=\"btn btn-primary employeeLog\">Employee Login</button>\n        </div>\n<div class=\"col-md-4 payroll\">\n<h3><em>Crawford</em> University Nursery & Primary School</h3>\n</p></div>\n<div id=\"employee\" class=\"col-md-4 employee\" style=\"display:none;\">\n<h2>Employee Log In</h2>\n<form method=\"post\" action=\"login.php\">\n<div class=\"form-group\">\n              <input type=\"number\" name=\"employee_no\" placeholder=\"Employee No\" required=\"\" class=\"form-control\" />\n            </div>\n<div class=\"form-group\">\n              <input type=\"text\" name=\"surname\" placeholder=\"Surname\" required=\"\" class=\"form-control\" />\n            </div>\n<div class=\"form-group\">\n              <input type=\"password\" name=\"password\" placeholder=\"Password\" required=\"\" class=\"form-control\" />\n            </div>\n<div class=\"form-group\">\n              <button type=\"submit\" name=\"employee\" class=\"btn btn-info\">Log In</button>\n            </div>\n</p></form>\n</p></div>\n<div id=\"admin\" class=\"col-md-4 admin\" style=\"display:none;\">\n<h2>Admin Log In</h2>\n<form>\n<div class=\"form-group\">\n              <input type=\"text\" name=\"username\" placeholder=\"Username\" required=\"\" class=\"form-control\" />\n            </div>\n<div class=\"form-group\">\n              <input type=\"password\" name=\"admin_password\" placeholder=\"Password\" required=\"\" class=\"form-control\" />\n            </div>\n<div class=\"form-group\">\n              <button type=\"submit\" name=\"admin\" class=\"btn btn-info\">Log In</button>\n            </div>\n</p></form>\n</p></div>\n<div id=\"message\" class=\"col-md-4\"></div>\n</p></div>\n</p></div>\n<p><!-- /.container --></p>\n<p>    <!-- Bootstrap core JavaScript\n    ================================================== --><br />\n    <!-- Placed at the end of the document so the pages load faster --><br />\n    <script src=\"dist/js/bootstrap.min.js\"></script><br />\n    <script src=\"dist/js/jquery.min.js\"></script><br />\n    <script type=\"text/javascript\"><br />\n      $(document).ready(function(){<br />\n        $(\'.adminLog\').click(function(){<br />\n          $(\'.payroll\').css(\"display\",\"none\");<br />\n          $(\'.admin\').css(\"display\",\"block\");<br />\n          $(\'.employee\').css(\"display\",\"none\");<br />\n        })</p>\n<p>        $(\'.employeeLog\').click(function(){<br />\n          $(\'.payroll\').css(\"display\",\"none\");<br />\n          $(\'.employee\').css(\"display\",\"block\");<br />\n          $(\'.admin\').css(\"display\",\"none\");<br />\n        })</p>\n<p>        // Admin Login<br />\n        $(\'#admin\').submit(function(event){<br />\n          event.preventDefault();<br />\n          $.ajax({<br />\n            url: \"adminlogin.php\",<br />\n            method: \"post\",<br />\n            data: $(\'form\').serialize(),<br />\n            dataType: \"text\",<br />\n            success: function(strMessage){<br />\n              $(\'#message\').html(strMessage);<br />\n            }<br />\n          })<br />\n        })</p>\n<p>        // Employee Login<br />\n        $(\'#employee\').submit(function(event){<br />\n          event.preventDefault();<br />\n          $.ajax({<br />\n            url: \"employeelogin.php\",<br />\n            method: \"post\",<br />\n            data: $(\'form\').serialize(),<br />\n            dataType: \"text\",<br />\n            success: function(strMessage){<br />\n              $(\'#message\').html(strMessage);<br />\n            }<br />\n          })<br />\n        })<br />\n      });<br />\n    </script><br />\n    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug --><br />\n    <script src=\"assets/js/ie10-viewport-bug-workaround.js\"></script><br />\n  </body><br />\n</html></p>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 03:34:19', '2023-11-05 02:34:19', '', 6, '/?p=46', 0, 'revision', '', 0),
(48, 1, '2023-11-05 03:41:57', '2023-11-05 02:41:57', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/payroll/\" name=\"redirect_to\">\n</p>\n</p></form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 03:41:57', '2023-11-05 02:41:57', '', 6, '/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-11-05 04:58:39', '2023-11-05 03:58:39', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/salaire/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 04:58:39', '2023-11-05 03:58:39', '', 6, '/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-11-05 18:47:46', '2023-11-05 17:47:46', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/employee\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/salaire/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 18:47:46', '2023-11-05 17:47:46', '', 6, '/?p=50', 0, 'revision', '', 0),
(52, 1, '2023-11-05 20:29:49', '2023-11-05 19:29:49', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/employee\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/FileZillaFTP/source/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 20:29:49', '2023-11-05 19:29:49', '', 6, '/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-11-05 20:50:16', '2023-11-05 19:50:16', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/FileZillaFTP/source/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-05 20:50:16', '2023-11-05 19:50:16', '', 6, '/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-11-05 21:50:40', '2023-11-05 20:50:40', '', 'ERP Subscription', '', 'publish', 'closed', 'closed', '', 'erp-subscription', '', '', '2023-11-05 21:50:40', '2023-11-05 20:50:40', '', 0, '/index.php/erp-subscription/', 0, 'page', '', 0),
(55, 1, '2023-11-05 21:50:40', '2023-11-05 20:50:40', '', 'ERP Subscription', '', 'publish', 'closed', 'closed', '', 'erp-subscription', '', '', '2023-11-05 21:50:40', '2023-11-05 20:50:40', '', 0, '/index.php/erp-subscription/', 0, 'page', '', 0),
(56, 1, '2023-11-05 23:52:24', '2023-11-05 22:52:24', '', 'a propos', '', 'inherit', 'open', 'closed', '', 'a-propos-2', '', '', '2023-11-05 23:52:24', '2023-11-05 22:52:24', '', 8, '/wp-content/uploads/2023/11/a-propos.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(57, 1, '2023-11-06 00:01:12', '2023-11-05 23:01:12', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 22:59:16\"\n    },\n    \"twentytwentyone::background_image\": {\n        \"value\": \"/wp-content/uploads/2023/11/a-propos.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:00:15\"\n    },\n    \"twentytwentyone::background_preset\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:01:12\"\n    },\n    \"twentytwentyone::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:01:12\"\n    },\n    \"twentytwentyone::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:01:12\"\n    },\n    \"twentytwentyone::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:00:15\"\n    },\n    \"twentytwentyone::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:00:15\"\n    },\n    \"twentytwentyone::background_attachment\": {\n        \"value\": \"scroll\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:01:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e136b29a-f5d5-4804-8e52-28293b98af65', '', '', '2023-11-06 00:01:12', '2023-11-05 23:01:12', '', 0, '/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2023-11-06 00:05:32', '2023-11-05 23:05:32', '{\n    \"nav_menu_item[14]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:03:15\"\n    },\n    \"page_on_front\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-05 23:05:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9afe4a4e-4e41-48e8-ad36-5b5a44d5989a', '', '', '2023-11-06 00:05:32', '2023-11-05 23:05:32', '', 0, '/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2023-11-06 00:10:41', '2023-11-05 23:10:41', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/salaire\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-06 00:10:41', '2023-11-05 23:10:41', '', 6, '/?p=59', 0, 'revision', '', 0),
(60, 1, '2023-11-06 01:04:41', '2023-11-06 00:04:41', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"/wp-content/plugins/erp\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-06 01:04:41', '2023-11-06 00:04:41', '', 6, '/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-11-06 01:09:44', '2023-11-06 00:09:44', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/mystartup-master/V1\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-06 01:09:44', '2023-11-06 00:09:44', '', 6, '/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-11-06 02:50:58', '2023-11-06 01:50:58', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/compte-master/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-06 02:50:58', '2023-11-06 01:50:58', '', 6, '/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-11-06 03:15:39', '2023-11-06 02:15:39', 'WELCOME\n\nBienvenue dans l\'application gestion de paie des employés', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-11-06 03:34:10', '2023-11-06 02:34:10', '', 0, '/?page_id=63', 0, 'page', '', 0),
(64, 1, '2023-11-06 03:15:37', '2023-11-06 02:15:37', '{\n    \"nav_menu_item[15]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:15:37\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            63\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:15:37\"\n    },\n    \"nav_menu_item[-1834844498467553300]\": {\n        \"value\": {\n            \"object_id\": 63,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Home\",\n            \"url\": \"/?page_id=63\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:15:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e2975c0-1c6e-45d3-aeb8-450f6ad2b3cc', '', '', '2023-11-06 03:15:37', '2023-11-06 02:15:37', '', 0, '/index.php/2023/11/06/1e2975c0-1c6e-45d3-aeb8-450f6ad2b3cc/', 0, 'customize_changeset', '', 0),
(65, 1, '2023-11-06 03:15:39', '2023-11-06 02:15:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2023-11-06 03:15:39', '2023-11-06 02:15:39', '', 63, '/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-11-06 03:15:39', '2023-11-06 02:15:39', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2023-11-06 03:15:39', '2023-11-06 02:15:39', '', 0, '/index.php/2023/11/06/66/', 1, 'nav_menu_item', '', 0),
(68, 1, '2023-11-06 03:17:39', '2023-11-06 02:17:39', 'WELCOME\nBienvenue dans l\'application gestion de paie des employés', 'Home', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2023-11-06 03:17:39', '2023-11-06 02:17:39', '', 63, '/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-11-06 03:24:18', '2023-11-06 02:24:18', '{\n    \"blogdescription\": {\n        \"value\": \"WELCOME BILL MANAGEMENT\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:24:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7883f3eb-3098-42d6-b6d7-06edf3ee5f8c', '', '', '2023-11-06 03:24:18', '2023-11-06 02:24:18', '', 0, '/index.php/2023/11/06/7883f3eb-3098-42d6-b6d7-06edf3ee5f8c/', 0, 'customize_changeset', '', 0),
(70, 1, '2023-11-06 03:24:49', '2023-11-06 02:24:49', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:24:49\"\n    },\n    \"twentytwentyone::display_title_and_tagline\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:24:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '815d3f9e-ee76-4168-bd25-a0e18588dd19', '', '', '2023-11-06 03:24:49', '2023-11-06 02:24:49', '', 0, '/index.php/2023/11/06/815d3f9e-ee76-4168-bd25-a0e18588dd19/', 0, 'customize_changeset', '', 0),
(71, 1, '2023-11-06 03:28:40', '2023-11-06 02:28:40', '{\n    \"nav_menu_item[-4978407757668708000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:26:59\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            72\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:26:59\"\n    },\n    \"nav_menu_item[-3445081941170383000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:26:59\"\n    },\n    \"nav_menu_item[-1176579649510201300]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:27:59\"\n    },\n    \"nav_menu_item[-1139066973778292700]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:27:59\"\n    },\n    \"nav_menu_item[-8821527801039495000]\": {\n        \"value\": {\n            \"object_id\": 72,\n            \"object\": \"post\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"WELCOME\",\n            \"url\": \"/?p=72\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"WELCOME\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"Article\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:28:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0162bfe3-d9cb-4c22-9bf2-a9bfc8b3e09d', '', '', '2023-11-06 03:28:40', '2023-11-06 02:28:40', '', 0, '/?p=71', 0, 'customize_changeset', '', 0),
(72, 1, '2023-11-06 03:28:40', '2023-11-06 02:28:40', '', 'WELCOME', '', 'publish', 'open', 'open', '', 'welcome', '', '', '2023-11-06 03:28:40', '2023-11-06 02:28:40', '', 0, '/?p=72', 0, 'post', '', 0),
(73, 1, '2023-11-06 03:28:40', '2023-11-06 02:28:40', '', 'WELCOME', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2023-11-06 03:28:40', '2023-11-06 02:28:40', '', 72, '/?p=73', 0, 'revision', '', 0),
(75, 1, '2023-11-06 03:30:51', '2023-11-06 02:30:51', '{\n    \"nav_menu_item[74]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:29:00\"\n    },\n    \"page_on_front\": {\n        \"value\": \"63\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:29:59\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:30:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a5a0a0d4-507b-49a6-85fe-fd86ea9f4313', '', '', '2023-11-06 03:30:51', '2023-11-06 02:30:51', '', 0, '/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2023-11-06 03:32:42', '2023-11-06 02:32:42', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-11-06 02:32:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c7e4959-4b26-46d3-bc90-f82f6fb27b21', '', '', '2023-11-06 03:32:42', '2023-11-06 02:32:42', '', 0, '/index.php/2023/11/06/9c7e4959-4b26-46d3-bc90-f82f6fb27b21/', 0, 'customize_changeset', '', 0),
(77, 1, '2023-11-06 04:11:06', '2023-11-06 03:11:06', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/Employee\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/compte-master/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-06 04:11:06', '2023-11-06 03:11:06', '', 6, '/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-11-06 04:29:30', '2023-11-06 03:29:30', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/employee\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/compte-master/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-06 04:29:30', '2023-11-06 03:29:30', '', 6, '/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-11-06 04:35:42', '2023-11-06 03:35:42', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/compte-master/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-06 04:35:42', '2023-11-06 03:35:42', '', 6, '/?p=79', 0, 'revision', '', 0),
(81, 1, '2023-11-10 17:32:13', '2023-11-10 16:32:13', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/employee.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">Identifiant</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">Mot de passe</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/compte-master/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-10 17:32:13', '2023-11-10 16:32:13', '', 6, '/?p=81', 0, 'revision', '', 0),
(83, 1, '2023-11-10 20:51:42', '2023-11-10 19:51:42', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/employee.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">NOM UTILISATEUR</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">MOT DE PASSE</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/compte-master/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-10 20:51:42', '2023-11-10 19:51:42', '', 6, '/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-11-10 21:24:41', '2023-11-10 20:24:41', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/wp-login.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">NOM UTILISATEUR</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">MOT DE PASSE</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/compte-master/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-10 21:24:41', '2023-11-10 20:24:41', '', 6, '/?p=84', 0, 'revision', '', 0),
(85, 1, '2023-11-10 21:54:56', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-11-10 21:54:56', '0000-00-00 00:00:00', '', 0, '/?p=85', 0, 'post', '', 0),
(86, 1, '2023-11-16 20:07:46', '2023-11-16 19:07:46', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/employee.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">NOM UTILISATEUR</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">MOT DE PASSE</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/compte-master/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-16 20:07:46', '2023-11-16 19:07:46', '', 6, '/?p=86', 0, 'revision', '', 0),
(88, 1, '2023-11-16 23:39:08', '2023-11-16 22:39:08', '<!-- wp:paragraph -->\n<p>Veuillez vous connecter</p>\n<!-- /wp:paragraph -->\n\n<form method=\"post\" action=\"/employee.php\" id=\"loginform\" name=\"loginform\">\n<p>\n  <label for=\"user_login\">NOM UTILISATEUR</label><br />\n  <input type=\"text\" tabindex=\"10\" size=\"20\" value=\"\" id=\"user_login\" name=\"log\">\n  </p>\n<p>\n  <label for=\"user_pass\">MOT DE PASSE</label><br />\n  <input type=\"password\" tabindex=\"20\" size=\"20\" value=\"\" id=\"user_pass\" name=\"pwd\">\n  </p>\n<p><label><input type=\"checkbox\" tabindex=\"90\" value=\"forever\" id=\"rememberme\" name=\"rememberme\"><br />\n  Rester connecter</label><br />\n  | <a href=\"/wp-login.ph?action=lostpassword\">Mot de passe oublié</a></p>\n<p>\n  <input type=\"submit\" tabindex=\"100\" value=\"Se connecter\" id=\"wp-submit\" name=\"wp-submit\"><br />\n  <input type=\"hidden\" value=\"http://localhost/salaire/\" name=\"redirect_to\">\n</p>\n</p>\n</form>\n\n<!-- wp:code /-->', 'Connexion', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-11-16 23:39:08', '2023-11-16 22:39:08', '', 6, '/?p=88', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'connexion-employé', 'connexion-employe', 0),
(3, 'jaxon', 'jaxon', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(13, 2, 0),
(24, 3, 0),
(66, 2, 0),
(72, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:4:{s:13:\"administrator\";b:1;s:14:\"erp_hr_manager\";b:1;s:15:\"erp_crm_manager\";b:1;s:14:\"erp_ac_manager\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"352c8327cf42f8e12d6646f0e62a085015743bdefd216d725523c41379f967e9\";a:4:{s:10:\"expiration\";i:1700165382;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1698955782;}s:64:\"7f58718a424d31a7dbcc636a03ba3d876f5f623a849db50cfb76f231104e6f52\";a:4:{s:10:\"expiration\";i:1700435466;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1699225866;}s:64:\"da94458e7d2234cbddc760c8537735ca3078567863fa5a12420790e220cb90f9\";a:4:{s:10:\"expiration\";i:1701371143;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1700161543;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '85'),
(18, 1, 'wp_persisted_preferences', 'a:4:{s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-11-06T02:33:26.286Z\";s:14:\"core/edit-post\";a:6:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:14:\"featured-image\";i:3;s:16:\"discussion-panel\";}s:12:\"fixedToolbar\";b:1;s:14:\"fullscreenMode\";b:0;s:10:\"editorMode\";s:4:\"text\";}s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 2, 'nickname', 'alice-benga@hotmail.fr'),
(24, 2, 'first_name', 'ALICE'),
(25, 2, 'last_name', 'BENGA'),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(35, 2, 'wp_user_level', '0'),
(36, 2, 'company', NULL),
(37, 2, 'phone', '5142998765'),
(38, 2, 'mobile', ''),
(39, 2, 'other', NULL),
(40, 2, 'fax', NULL),
(41, 2, 'notes', NULL),
(42, 2, 'street_1', '89 Rue des Sorbiers Delson'),
(43, 2, 'street_2', ''),
(44, 2, 'city', ''),
(45, 2, 'state', ''),
(46, 2, 'postal_code', ''),
(47, 2, 'country', 'CA'),
(48, 2, 'currency', NULL),
(49, 2, 'life_stage', ''),
(50, 2, 'dismissed_wp_pointers', ''),
(51, 2, 'photo_id', ''),
(52, 2, 'middle_name', ''),
(53, 2, 'other_email', ''),
(54, 2, 'work_phone', ''),
(55, 2, 'spouse_name', ''),
(56, 2, 'father_name', 'Modou Benga'),
(57, 2, 'mother_name', 'Aissatou Sow'),
(58, 2, 'address', ''),
(59, 2, 'driving_license', ''),
(60, 2, 'hobbies', 'Lecture'),
(61, 2, 'user_url', ''),
(62, 2, 'full_name', ''),
(63, 2, 'blood_group', 'a+'),
(64, 2, 'nationality', 'CA'),
(65, 2, 'gender', 'female'),
(66, 2, 'marital_status', 'single'),
(67, 3, 'nickname', 'maurice-kabba@applipaie.com'),
(68, 3, 'first_name', 'MAURICE'),
(69, 3, 'last_name', 'KABBA'),
(70, 3, 'description', ''),
(71, 3, 'rich_editing', 'true'),
(72, 3, 'syntax_highlighting', 'true'),
(73, 3, 'comment_shortcuts', 'false'),
(74, 3, 'admin_color', 'fresh'),
(75, 3, 'use_ssl', '0'),
(76, 3, 'show_admin_bar_front', 'true'),
(77, 3, 'locale', ''),
(78, 3, 'wp_capabilities', 'a:1:{s:8:\"employee\";b:1;}'),
(79, 3, 'wp_user_level', '0'),
(80, 3, 'company', NULL),
(81, 3, 'phone', '4386584213'),
(82, 3, 'mobile', ''),
(83, 3, 'other', NULL),
(84, 3, 'fax', NULL),
(85, 3, 'notes', NULL),
(86, 3, 'street_1', ''),
(87, 3, 'street_2', ''),
(88, 3, 'city', ''),
(89, 3, 'state', 'AB'),
(90, 3, 'postal_code', ''),
(91, 3, 'country', 'CA'),
(92, 3, 'currency', NULL),
(93, 3, 'life_stage', ''),
(94, 3, 'dismissed_wp_pointers', ''),
(95, 3, 'photo_id', ''),
(96, 3, 'middle_name', ''),
(97, 3, 'other_email', ''),
(98, 3, 'work_phone', ''),
(99, 3, 'spouse_name', ''),
(100, 3, 'address', ''),
(101, 3, 'driving_license', ''),
(102, 3, 'hobbies', ''),
(103, 3, 'user_url', ''),
(104, 3, 'full_name', ''),
(105, 3, 'blood_group', 'o+'),
(106, 3, 'father_name', 'ALBEN KABBA'),
(107, 3, 'mother_name', 'ANGEL MAURE'),
(108, 3, 'nationality', 'LU'),
(109, 3, 'gender', 'male'),
(110, 3, 'marital_status', 'married'),
(111, 4, 'nickname', 'jason-martin@applipaie.com'),
(112, 4, 'first_name', 'JASON'),
(113, 4, 'last_name', 'MARTIN'),
(114, 4, 'description', ''),
(115, 4, 'rich_editing', 'true'),
(116, 4, 'syntax_highlighting', 'true'),
(117, 4, 'comment_shortcuts', 'false'),
(118, 4, 'admin_color', 'fresh'),
(119, 4, 'use_ssl', '0'),
(120, 4, 'show_admin_bar_front', 'true'),
(121, 4, 'locale', ''),
(122, 4, 'wp_capabilities', 'a:1:{s:8:\"employee\";b:1;}'),
(123, 4, 'wp_user_level', '0'),
(124, 4, 'company', NULL),
(125, 4, 'phone', '5142998787'),
(126, 4, 'mobile', ''),
(127, 4, 'other', NULL),
(128, 4, 'fax', NULL),
(129, 4, 'notes', NULL),
(130, 4, 'street_1', ''),
(131, 4, 'street_2', ''),
(132, 4, 'city', ''),
(133, 4, 'state', 'QC'),
(134, 4, 'postal_code', ''),
(135, 4, 'country', 'CA'),
(136, 4, 'currency', NULL),
(137, 4, 'life_stage', ''),
(138, 4, 'dismissed_wp_pointers', ''),
(139, 4, 'photo_id', ''),
(140, 4, 'middle_name', ''),
(141, 4, 'other_email', ''),
(142, 4, 'work_phone', ''),
(143, 4, 'spouse_name', ''),
(144, 4, 'address', ''),
(145, 4, 'driving_license', ''),
(146, 4, 'hobbies', ''),
(147, 4, 'user_url', ''),
(148, 4, 'full_name', ''),
(149, 4, 'blood_group', '-1'),
(150, 4, 'father_name', 'ALEXANDRE MARTIN'),
(151, 4, 'mother_name', 'LAURA BANE'),
(152, 4, 'nationality', 'AL'),
(153, 4, 'gender', 'male'),
(154, 4, 'marital_status', 'single'),
(155, 2, 'user_email', 'alice-benga@applipaie.com'),
(156, 2, 'erp_last_removed_role', 'employee'),
(157, 5, 'nickname', 'alice-benga1@applipaie.com'),
(158, 5, 'first_name', 'ALICE'),
(159, 5, 'last_name', 'BENGA'),
(160, 5, 'description', ''),
(161, 5, 'rich_editing', 'true'),
(162, 5, 'syntax_highlighting', 'true'),
(163, 5, 'comment_shortcuts', 'false'),
(164, 5, 'admin_color', 'fresh'),
(165, 5, 'use_ssl', '0'),
(166, 5, 'show_admin_bar_front', 'true'),
(167, 5, 'locale', ''),
(168, 5, 'wp_capabilities', 'a:1:{s:8:\"employee\";b:1;}'),
(169, 5, 'wp_user_level', '0'),
(170, 5, 'company', NULL),
(171, 5, 'phone', '5142998765'),
(172, 5, 'mobile', ''),
(173, 5, 'other', NULL),
(174, 5, 'fax', NULL),
(175, 5, 'notes', NULL),
(176, 5, 'street_1', '89 Rue des Sorbiers Delson'),
(177, 5, 'street_2', ''),
(178, 5, 'city', ''),
(179, 5, 'state', ''),
(180, 5, 'postal_code', ''),
(181, 5, 'country', 'CA'),
(182, 5, 'currency', NULL),
(183, 5, 'life_stage', ''),
(184, 5, 'dismissed_wp_pointers', ''),
(185, 5, 'photo_id', ''),
(186, 5, 'middle_name', ''),
(187, 5, 'other_email', ''),
(188, 5, 'work_phone', ''),
(189, 5, 'spouse_name', ''),
(190, 5, 'address', ''),
(191, 5, 'driving_license', ''),
(192, 5, 'hobbies', ''),
(193, 5, 'user_url', ''),
(194, 5, 'full_name', ''),
(195, 5, 'blood_group', 'a+'),
(196, 5, 'father_name', 'Modou Benga'),
(197, 5, 'mother_name', 'Aissatou Sow'),
(198, 5, 'nationality', 'CA'),
(199, 5, 'gender', 'female'),
(200, 5, 'marital_status', 'single'),
(201, 1, 'wp_user-settings', 'libraryContent=browse'),
(202, 1, 'wp_user-settings-time', '1699224879'),
(203, 5, 'erp_hr_disable_notification', ''),
(204, 5, 'session_tokens', 'a:1:{s:64:\"55a60a0cb8591211c3316c23f25fa6fdb20007ed68e5904ee18e2994a97a3404\";a:4:{s:10:\"expiration\";i:1699414571;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36\";s:5:\"login\";i:1699241771;}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BXeejDVh.4Pxwf8gDqzCVm1AI7EBxe/', 'root', 'a.wurad@gmail.com', '/', '2023-11-02 20:09:01', '', 0, 'root'),
(2, 'alice-benga@hotmail.fr', '$P$B7fm3WZD.e69NgCmaK7m.X8LqTnSLs0', 'alice-bengahotmail-fr', 'alice-benga@applipaie.com', '', '2023-11-05 21:38:32', '', 0, 'ALICE BENGA'),
(3, 'maurice-kabba@applipaie.com', '$P$BuIg0wNxbkoUzlyPXUGsRDXjFRX.Sg1', 'maurice-kabbaapplipaie-com', 'maurice-kabba@applipaie.com', '', '2023-11-05 21:56:31', '', 0, 'MAURICE KABBA'),
(4, 'jason-martin@applipaie.com', '$P$BD2y.N6ja3V9ExcocS0QOAa/MKn8GJ/', 'jason-martinapplipaie-com', 'jason-martin@applipaie.com', '', '2023-11-05 22:09:49', '', 0, 'JASON MARTIN'),
(5, 'alice-benga1@applipaie.com', '$P$BNyGKRmJRmglumUPCoIGOJH0LLsBpg.', 'alice-benga1applipaie-com', 'alice-benga1@applipaie.com', '', '2023-11-05 22:16:54', '', 0, 'ALICE BENGA');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_erp_acct_bills`
--
ALTER TABLE `wp_erp_acct_bills`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_bill_account_details`
--
ALTER TABLE `wp_erp_acct_bill_account_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_bill_details`
--
ALTER TABLE `wp_erp_acct_bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_cash_at_banks`
--
ALTER TABLE `wp_erp_acct_cash_at_banks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_chart_of_accounts`
--
ALTER TABLE `wp_erp_acct_chart_of_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_currency_info`
--
ALTER TABLE `wp_erp_acct_currency_info`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_expenses`
--
ALTER TABLE `wp_erp_acct_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_expense_checks`
--
ALTER TABLE `wp_erp_acct_expense_checks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_expense_details`
--
ALTER TABLE `wp_erp_acct_expense_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_financial_years`
--
ALTER TABLE `wp_erp_acct_financial_years`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_invoices`
--
ALTER TABLE `wp_erp_acct_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_invoice_account_details`
--
ALTER TABLE `wp_erp_acct_invoice_account_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_invoice_details`
--
ALTER TABLE `wp_erp_acct_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_invoice_details_tax`
--
ALTER TABLE `wp_erp_acct_invoice_details_tax`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_invoice_receipts`
--
ALTER TABLE `wp_erp_acct_invoice_receipts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_invoice_receipts_details`
--
ALTER TABLE `wp_erp_acct_invoice_receipts_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_journals`
--
ALTER TABLE `wp_erp_acct_journals`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_journal_details`
--
ALTER TABLE `wp_erp_acct_journal_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_ledgers`
--
ALTER TABLE `wp_erp_acct_ledgers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_ledger_categories`
--
ALTER TABLE `wp_erp_acct_ledger_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_ledger_details`
--
ALTER TABLE `wp_erp_acct_ledger_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_ledger_settings`
--
ALTER TABLE `wp_erp_acct_ledger_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_opening_balances`
--
ALTER TABLE `wp_erp_acct_opening_balances`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_payment_methods`
--
ALTER TABLE `wp_erp_acct_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_pay_bill`
--
ALTER TABLE `wp_erp_acct_pay_bill`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_pay_bill_details`
--
ALTER TABLE `wp_erp_acct_pay_bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_pay_purchase`
--
ALTER TABLE `wp_erp_acct_pay_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_pay_purchase_details`
--
ALTER TABLE `wp_erp_acct_pay_purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_people_account_details`
--
ALTER TABLE `wp_erp_acct_people_account_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_people_trn`
--
ALTER TABLE `wp_erp_acct_people_trn`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_people_trn_details`
--
ALTER TABLE `wp_erp_acct_people_trn_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_products`
--
ALTER TABLE `wp_erp_acct_products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_product_categories`
--
ALTER TABLE `wp_erp_acct_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_product_details`
--
ALTER TABLE `wp_erp_acct_product_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_product_types`
--
ALTER TABLE `wp_erp_acct_product_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_purchase`
--
ALTER TABLE `wp_erp_acct_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_purchase_account_details`
--
ALTER TABLE `wp_erp_acct_purchase_account_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_purchase_details`
--
ALTER TABLE `wp_erp_acct_purchase_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_purchase_details_tax`
--
ALTER TABLE `wp_erp_acct_purchase_details_tax`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_synced_taxes`
--
ALTER TABLE `wp_erp_acct_synced_taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_id` (`system_id`),
  ADD KEY `sync_id` (`sync_id`),
  ADD KEY `sync_slug` (`sync_slug`),
  ADD KEY `sync_type` (`sync_type`),
  ADD KEY `sync_source` (`sync_source`);

--
-- Index pour la table `wp_erp_acct_taxes`
--
ALTER TABLE `wp_erp_acct_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_tax_agencies`
--
ALTER TABLE `wp_erp_acct_tax_agencies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_tax_agency_details`
--
ALTER TABLE `wp_erp_acct_tax_agency_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_tax_categories`
--
ALTER TABLE `wp_erp_acct_tax_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_tax_cat_agency`
--
ALTER TABLE `wp_erp_acct_tax_cat_agency`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_tax_pay`
--
ALTER TABLE `wp_erp_acct_tax_pay`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_transfer_voucher`
--
ALTER TABLE `wp_erp_acct_transfer_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_trn_status_types`
--
ALTER TABLE `wp_erp_acct_trn_status_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_acct_voucher_no`
--
ALTER TABLE `wp_erp_acct_voucher_no`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_audit_log`
--
ALTER TABLE `wp_erp_audit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `component` (`component`),
  ADD KEY `sub_component` (`sub_component`),
  ADD KEY `changetype` (`changetype`),
  ADD KEY `created_by` (`created_by`);

--
-- Index pour la table `wp_erp_company_locations`
--
ALTER TABLE `wp_erp_company_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `wp_erp_crm_activities_task`
--
ALTER TABLE `wp_erp_crm_activities_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_erp_crm_contact_group`
--
ALTER TABLE `wp_erp_crm_contact_group`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_crm_contact_subscriber`
--
ALTER TABLE `wp_erp_crm_contact_subscriber`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_group` (`user_id`,`group_id`),
  ADD KEY `status` (`status`),
  ADD KEY `hash` (`hash`);

--
-- Index pour la table `wp_erp_crm_customer_activities`
--
ALTER TABLE `wp_erp_crm_customer_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `created_by` (`created_by`);

--
-- Index pour la table `wp_erp_crm_customer_companies`
--
ALTER TABLE `wp_erp_crm_customer_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `wp_erp_crm_save_email_replies`
--
ALTER TABLE `wp_erp_crm_save_email_replies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_crm_save_search`
--
ALTER TABLE `wp_erp_crm_save_search`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_holidays_indv`
--
ALTER TABLE `wp_erp_holidays_indv`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_hr_announcement`
--
ALTER TABLE `wp_erp_hr_announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `wp_erp_hr_dependents`
--
ALTER TABLE `wp_erp_hr_dependents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Index pour la table `wp_erp_hr_depts`
--
ALTER TABLE `wp_erp_hr_depts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_hr_designations`
--
ALTER TABLE `wp_erp_hr_designations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_hr_education`
--
ALTER TABLE `wp_erp_hr_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Index pour la table `wp_erp_hr_employees`
--
ALTER TABLE `wp_erp_hr_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `designation` (`designation`),
  ADD KEY `department` (`department`),
  ADD KEY `status` (`status`);

--
-- Index pour la table `wp_erp_hr_employee_history`
--
ALTER TABLE `wp_erp_hr_employee_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `module` (`module`);

--
-- Index pour la table `wp_erp_hr_employee_notes`
--
ALTER TABLE `wp_erp_hr_employee_notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_hr_employee_performance`
--
ALTER TABLE `wp_erp_hr_employee_performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Index pour la table `wp_erp_hr_financial_years`
--
ALTER TABLE `wp_erp_hr_financial_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `year_search` (`start_date`,`end_date`),
  ADD KEY `start_date` (`start_date`),
  ADD KEY `end_date` (`end_date`);

--
-- Index pour la table `wp_erp_hr_holiday`
--
ALTER TABLE `wp_erp_hr_holiday`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_hr_leaves`
--
ALTER TABLE `wp_erp_hr_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_erp_hr_leaves_unpaid`
--
ALTER TABLE `wp_erp_hr_leaves_unpaid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `leave_id` (`leave_id`),
  ADD KEY `f_year` (`f_year`),
  ADD KEY `leave_request_id` (`leave_request_id`),
  ADD KEY `leave_approval_status_id` (`leave_approval_status_id`);

--
-- Index pour la table `wp_erp_hr_leave_approval_status`
--
ALTER TABLE `wp_erp_hr_leave_approval_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_id` (`leave_request_id`),
  ADD KEY `approval_status_id` (`approval_status_id`);

--
-- Index pour la table `wp_erp_hr_leave_encashment_requests`
--
ALTER TABLE `wp_erp_hr_leave_encashment_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `leave_id` (`leave_id`),
  ADD KEY `f_year` (`f_year`);

--
-- Index pour la table `wp_erp_hr_leave_entitlements`
--
ALTER TABLE `wp_erp_hr_leave_entitlements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comp_key_1` (`user_id`,`leave_id`,`f_year`,`trn_type`),
  ADD KEY `trn_id` (`trn_id`),
  ADD KEY `leave_id` (`leave_id`);

--
-- Index pour la table `wp_erp_hr_leave_policies`
--
ALTER TABLE `wp_erp_hr_leave_policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_id` (`leave_id`),
  ADD KEY `f_year` (`f_year`);

--
-- Index pour la table `wp_erp_hr_leave_policies_segregation`
--
ALTER TABLE `wp_erp_hr_leave_policies_segregation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_policy_id` (`leave_policy_id`);

--
-- Index pour la table `wp_erp_hr_leave_requests`
--
ALTER TABLE `wp_erp_hr_leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_leave` (`user_id`,`leave_id`),
  ADD KEY `user_entitlement` (`user_id`,`leave_entitlement_id`),
  ADD KEY `last_status` (`last_status`),
  ADD KEY `leave_entitlement_id` (`leave_entitlement_id`);

--
-- Index pour la table `wp_erp_hr_leave_request_details`
--
ALTER TABLE `wp_erp_hr_leave_request_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_request_id` (`leave_request_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_fyear_leave` (`user_id`,`f_year`,`leave_date`);

--
-- Index pour la table `wp_erp_hr_work_exp`
--
ALTER TABLE `wp_erp_hr_work_exp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Index pour la table `wp_erp_peoplemeta`
--
ALTER TABLE `wp_erp_peoplemeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `erp_people_id` (`erp_people_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_erp_peoples`
--
ALTER TABLE `wp_erp_peoples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `wp_erp_people_types`
--
ALTER TABLE `wp_erp_people_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `wp_erp_people_type_relations`
--
ALTER TABLE `wp_erp_people_type_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `people_id` (`people_id`),
  ADD KEY `people_types_id` (`people_types_id`);

--
-- Index pour la table `wp_erp_user_leaves`
--
ALTER TABLE `wp_erp_user_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `wp_pm_activities`
--
ALTER TABLE `wp_pm_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `actor_id` (`actor_id`),
  ADD KEY `resource_id` (`resource_id`);

--
-- Index pour la table `wp_pm_assignees`
--
ALTER TABLE `wp_pm_assignees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `project_id` (`project_id`);

--
-- Index pour la table `wp_pm_boardables`
--
ALTER TABLE `wp_pm_boardables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `board_id` (`board_id`),
  ADD KEY `boardable_id` (`boardable_id`);

--
-- Index pour la table `wp_pm_boards`
--
ALTER TABLE `wp_pm_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Index pour la table `wp_pm_capabilities`
--
ALTER TABLE `wp_pm_capabilities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_pm_categories`
--
ALTER TABLE `wp_pm_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_pm_category_project`
--
ALTER TABLE `wp_pm_category_project`
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `wp_pm_comments`
--
ALTER TABLE `wp_pm_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `commentable_id` (`commentable_id`);

--
-- Index pour la table `wp_pm_files`
--
ALTER TABLE `wp_pm_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `fileable_id` (`fileable_id`);

--
-- Index pour la table `wp_pm_imports`
--
ALTER TABLE `wp_pm_imports`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_pm_meta`
--
ALTER TABLE `wp_pm_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_id` (`entity_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Index pour la table `wp_pm_projects`
--
ALTER TABLE `wp_pm_projects`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_pm_roles`
--
ALTER TABLE `wp_pm_roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_pm_role_project`
--
ALTER TABLE `wp_pm_role_project`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_pm_role_project_capabilities`
--
ALTER TABLE `wp_pm_role_project_capabilities`
  ADD KEY `role_project_id` (`role_project_id`);

--
-- Index pour la table `wp_pm_role_project_users`
--
ALTER TABLE `wp_pm_role_project_users`
  ADD KEY `role_project_id` (`role_project_id`);

--
-- Index pour la table `wp_pm_role_user`
--
ALTER TABLE `wp_pm_role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `assigned_by` (`assigned_by`);

--
-- Index pour la table `wp_pm_settings`
--
ALTER TABLE `wp_pm_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Index pour la table `wp_pm_tasks`
--
ALTER TABLE `wp_pm_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Index pour la table `wp_pm_task_types`
--
ALTER TABLE `wp_pm_task_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wp_pm_task_type_task`
--
ALTER TABLE `wp_pm_task_type_task`
  ADD UNIQUE KEY `task_id` (`task_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_bills`
--
ALTER TABLE `wp_erp_acct_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_bill_account_details`
--
ALTER TABLE `wp_erp_acct_bill_account_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_bill_details`
--
ALTER TABLE `wp_erp_acct_bill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_cash_at_banks`
--
ALTER TABLE `wp_erp_acct_cash_at_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_chart_of_accounts`
--
ALTER TABLE `wp_erp_acct_chart_of_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_currency_info`
--
ALTER TABLE `wp_erp_acct_currency_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_expenses`
--
ALTER TABLE `wp_erp_acct_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_expense_checks`
--
ALTER TABLE `wp_erp_acct_expense_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_expense_details`
--
ALTER TABLE `wp_erp_acct_expense_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_financial_years`
--
ALTER TABLE `wp_erp_acct_financial_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_invoices`
--
ALTER TABLE `wp_erp_acct_invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_invoice_account_details`
--
ALTER TABLE `wp_erp_acct_invoice_account_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_invoice_details`
--
ALTER TABLE `wp_erp_acct_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_invoice_details_tax`
--
ALTER TABLE `wp_erp_acct_invoice_details_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_invoice_receipts`
--
ALTER TABLE `wp_erp_acct_invoice_receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_invoice_receipts_details`
--
ALTER TABLE `wp_erp_acct_invoice_receipts_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_journals`
--
ALTER TABLE `wp_erp_acct_journals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_journal_details`
--
ALTER TABLE `wp_erp_acct_journal_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_ledgers`
--
ALTER TABLE `wp_erp_acct_ledgers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_ledger_categories`
--
ALTER TABLE `wp_erp_acct_ledger_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_ledger_details`
--
ALTER TABLE `wp_erp_acct_ledger_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_ledger_settings`
--
ALTER TABLE `wp_erp_acct_ledger_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_opening_balances`
--
ALTER TABLE `wp_erp_acct_opening_balances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_payment_methods`
--
ALTER TABLE `wp_erp_acct_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_pay_bill`
--
ALTER TABLE `wp_erp_acct_pay_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_pay_bill_details`
--
ALTER TABLE `wp_erp_acct_pay_bill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_pay_purchase`
--
ALTER TABLE `wp_erp_acct_pay_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_pay_purchase_details`
--
ALTER TABLE `wp_erp_acct_pay_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_people_account_details`
--
ALTER TABLE `wp_erp_acct_people_account_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_people_trn`
--
ALTER TABLE `wp_erp_acct_people_trn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_people_trn_details`
--
ALTER TABLE `wp_erp_acct_people_trn_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_products`
--
ALTER TABLE `wp_erp_acct_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_product_categories`
--
ALTER TABLE `wp_erp_acct_product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_product_details`
--
ALTER TABLE `wp_erp_acct_product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_product_types`
--
ALTER TABLE `wp_erp_acct_product_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_purchase`
--
ALTER TABLE `wp_erp_acct_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_purchase_account_details`
--
ALTER TABLE `wp_erp_acct_purchase_account_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_purchase_details`
--
ALTER TABLE `wp_erp_acct_purchase_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_purchase_details_tax`
--
ALTER TABLE `wp_erp_acct_purchase_details_tax`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_synced_taxes`
--
ALTER TABLE `wp_erp_acct_synced_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_taxes`
--
ALTER TABLE `wp_erp_acct_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_tax_agencies`
--
ALTER TABLE `wp_erp_acct_tax_agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_tax_agency_details`
--
ALTER TABLE `wp_erp_acct_tax_agency_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_tax_categories`
--
ALTER TABLE `wp_erp_acct_tax_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_tax_cat_agency`
--
ALTER TABLE `wp_erp_acct_tax_cat_agency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_tax_pay`
--
ALTER TABLE `wp_erp_acct_tax_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_transfer_voucher`
--
ALTER TABLE `wp_erp_acct_transfer_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_trn_status_types`
--
ALTER TABLE `wp_erp_acct_trn_status_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `wp_erp_acct_voucher_no`
--
ALTER TABLE `wp_erp_acct_voucher_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_audit_log`
--
ALTER TABLE `wp_erp_audit_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `wp_erp_company_locations`
--
ALTER TABLE `wp_erp_company_locations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_crm_activities_task`
--
ALTER TABLE `wp_erp_crm_activities_task`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_crm_contact_group`
--
ALTER TABLE `wp_erp_crm_contact_group`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_crm_contact_subscriber`
--
ALTER TABLE `wp_erp_crm_contact_subscriber`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_crm_customer_activities`
--
ALTER TABLE `wp_erp_crm_customer_activities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_crm_customer_companies`
--
ALTER TABLE `wp_erp_crm_customer_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_crm_save_email_replies`
--
ALTER TABLE `wp_erp_crm_save_email_replies`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_crm_save_search`
--
ALTER TABLE `wp_erp_crm_save_search`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_holidays_indv`
--
ALTER TABLE `wp_erp_holidays_indv`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_announcement`
--
ALTER TABLE `wp_erp_hr_announcement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_dependents`
--
ALTER TABLE `wp_erp_hr_dependents`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_depts`
--
ALTER TABLE `wp_erp_hr_depts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_designations`
--
ALTER TABLE `wp_erp_hr_designations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_education`
--
ALTER TABLE `wp_erp_hr_education`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_employees`
--
ALTER TABLE `wp_erp_hr_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_employee_history`
--
ALTER TABLE `wp_erp_hr_employee_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_employee_notes`
--
ALTER TABLE `wp_erp_hr_employee_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_employee_performance`
--
ALTER TABLE `wp_erp_hr_employee_performance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_financial_years`
--
ALTER TABLE `wp_erp_hr_financial_years`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_holiday`
--
ALTER TABLE `wp_erp_hr_holiday`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leaves`
--
ALTER TABLE `wp_erp_hr_leaves`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leaves_unpaid`
--
ALTER TABLE `wp_erp_hr_leaves_unpaid`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leave_approval_status`
--
ALTER TABLE `wp_erp_hr_leave_approval_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leave_encashment_requests`
--
ALTER TABLE `wp_erp_hr_leave_encashment_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leave_entitlements`
--
ALTER TABLE `wp_erp_hr_leave_entitlements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leave_policies`
--
ALTER TABLE `wp_erp_hr_leave_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leave_policies_segregation`
--
ALTER TABLE `wp_erp_hr_leave_policies_segregation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leave_requests`
--
ALTER TABLE `wp_erp_hr_leave_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_leave_request_details`
--
ALTER TABLE `wp_erp_hr_leave_request_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_hr_work_exp`
--
ALTER TABLE `wp_erp_hr_work_exp`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_erp_peoplemeta`
--
ALTER TABLE `wp_erp_peoplemeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `wp_erp_peoples`
--
ALTER TABLE `wp_erp_peoples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wp_erp_people_types`
--
ALTER TABLE `wp_erp_people_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wp_erp_people_type_relations`
--
ALTER TABLE `wp_erp_people_type_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `wp_erp_user_leaves`
--
ALTER TABLE `wp_erp_user_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=960;

--
-- AUTO_INCREMENT pour la table `wp_pm_activities`
--
ALTER TABLE `wp_pm_activities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_assignees`
--
ALTER TABLE `wp_pm_assignees`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_boardables`
--
ALTER TABLE `wp_pm_boardables`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_boards`
--
ALTER TABLE `wp_pm_boards`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_capabilities`
--
ALTER TABLE `wp_pm_capabilities`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_categories`
--
ALTER TABLE `wp_pm_categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_comments`
--
ALTER TABLE `wp_pm_comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_files`
--
ALTER TABLE `wp_pm_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_imports`
--
ALTER TABLE `wp_pm_imports`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_meta`
--
ALTER TABLE `wp_pm_meta`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_projects`
--
ALTER TABLE `wp_pm_projects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_roles`
--
ALTER TABLE `wp_pm_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_role_project`
--
ALTER TABLE `wp_pm_role_project`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_role_user`
--
ALTER TABLE `wp_pm_role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_settings`
--
ALTER TABLE `wp_pm_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_tasks`
--
ALTER TABLE `wp_pm_tasks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_pm_task_types`
--
ALTER TABLE `wp_pm_task_types`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
