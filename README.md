# 📦 Pushing Large Files (Git LFS)

## One-time setup (per system)

```bash
nix-shell -p git-lfs
git lfs install
```

## Track large files (run once per repo or when adding new file types)

```bash
git lfs track "*.mp4"
git lfs track "*.zip"
git lfs track "*.mov"
```

## Push files

```bash
git add .
git commit -m "your message"
git push
```

## If you accidentally committed large files without LFS

```bash
git lfs migrate import --include="*.mp4,*.zip,*.mov"
git push --force
```
