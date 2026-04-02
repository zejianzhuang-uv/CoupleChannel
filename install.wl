(* ::Package:: *)

Module[{dir = FileNameJoin[{$UserBaseDirectory, "Applications", "CoupleChannel"}]},
  If[DirectoryQ[dir], DeleteDirectory[dir, DeleteContents -> True]];
  URLDownload[
    "https://github.com/zejianzhuang-uv/CoupleChannel/archive/refs/heads/main.zip",
    FileNameJoin[{$TemporaryDirectory, "CoupleChannel.zip"}]
  ];
  ExtractArchive[
    FileNameJoin[{$TemporaryDirectory, "CoupleChannel.zip"}],
    FileNameJoin[{$UserBaseDirectory, "Applications"}]
  ];
  RenameDirectory[
    FileNameJoin[{$UserBaseDirectory, "Applications", "CoupleChannel-main"}],
    dir
  ];
  Print["Installed successfully. Use Needs[\"CoupleChannel`\"] to load."]
]
