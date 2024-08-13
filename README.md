# libelfsize

Calculate the size of an ELF file on disk, using a tiny library. This is useful, e.g., to find out at which offset the filesystem image of an AppImage starts.

## Building

```
make
```

## Testing

```
ls -l ./elfsize
# 17136

./elfsize ./elfsize
# 17136

# Append some data after the ELF
echo "appendeddata" >> ./elfsize

# Check whether we still get the correct ELF size
./elfsize ./elfsize
# 17136
```

## Note

There is a similar project that does not use a library at https://github.com/probonopd/elfsize/
