# Kruti Dev PDF Table Extractor

A robust Python utility designed to extract tabular data from PDF files and handle the conversion of legacy **Kruti Dev** Hindi fonts into standard **Unicode** format.

## 🚀 Features
- **Font Conversion:** Automatically detects and converts Kruti Dev characters to readable Hindi Unicode.
- **Table Extraction:** Uses `pdfplumber` to maintain table structures during conversion.
- **One-Click Execution:** Includes a Windows Batch file (`.bat`) for users who don't want to use the command line.
- **Multi-Format Output:** Saves results in both `.csv` and `.xlsx`.

## 🛠️ Installation & Usage
1. Clone this repository or download the ZIP.
2. Ensure [Python 3.x](https://www.python.org/downloads/) is installed and added to your PATH.
3. Place your PDF in the project folder.
4. Double-click `run_extractor.bat` and follow the on-screen prompts.

## 📦 Dependencies
- `pdfplumber`
- `pandas`
- `openpyxl`
