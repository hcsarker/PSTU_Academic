# PSTU_Academic

A personal repository containing semester notes, assignments, code examples and project files used by Hridoy (hcsarker).

সংক্ষিপ্ত বিবরণ (বাংলায়):

- এই রিপোজিটরিটিতে আপনার সেমিস্টারভিত্তিক নোট, অ্যাসাইনমেন্ট, প্রোজেক্ট ফাইল ও কোড রয়েছে।
- বড় বাইনারি/ডকুমেন্ট ফাইলগুলো Git LFS দিয়ে পরিচালিত হচ্ছে (pdf, mp4, pptx, docx, xlsx, zip, images ইত্যাদি)।

Quick start

- Clone via SSH (recommended):

  git clone git@github.com:hcsarker/PSTU_Academic.git

- Or clone via HTTPS:

  git clone https://github.com/hcsarker/PSTU_Academic.git

If you use HTTPS and the repo requires authentication, use a Personal Access Token (PAT) as password.

## Git LFS

This repository uses Git LFS for large files. After cloning, run:

git lfs install
git lfs pull

## Branches

- `HCS` (main working branch)
- `snapshot-before-cleanup-YYYYMMDD-HHMMSS` (local snapshot branches created during recovery)

## Notes

- I migrated large binary files to Git LFS to allow pushing to GitHub (pack size limits). If you plan to contribute, make sure `git lfs` is installed.
- The folder `1st Semester/C Programing` was previously a nested git repo and has been removed from the outer index; decide whether to keep it as a nested repo or convert it to tracked files or a submodule.

## License

This project is licensed under the MIT License — see `LICENSE`.

## Contact

If you need help with cloning or LFS, open an issue or contact the repository owner.
