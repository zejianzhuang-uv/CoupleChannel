(* ::Package:: *)

BeginPackage["CoupleChannel`"]

(*ParticleInformation::usage = "ParticleInformation[SS] returns {phase, {Q, I, I3}} for particle SS.";
IsospinMesonMultiplet::usage = "IsospinMesonMultiplet[SS] returns the isospin multiplet for meson SS.";
IsospinBaryonMultiplet::usage = "IsospinBaryonMultiplet[SS] returns the isospin multiplet for baryon SS.";*)
(*IsospinClebschGordan::usage = "IsospinClebschGordan[Channel, TotalIsospin] computes the CG coefficient for a channel.";*)
(*CoupleChannelBasis::usage = "CoupleChannelBasis[Ch, I] returns the coupled channel basis for isospin I.";*)
GroupChannelsByIsospin::usage = "GroupChannelsByIsospin[channels] groups charge-basis channels into isospin multiplets.";
CoupleChannelBasisMatrix::usage = "CoupleChannelBasisMatrix[Ch, I] returns the basis transformation matrix.";
ChannelCoupleExample::usage = "ChannelCoupleExample[] runs an example: S=-1, Q=0, I=0 coupled channel basis matrix.";

Get[FileNameJoin[{DirectoryName[$InputFileName], "ParticleInformation.wl"}]]
Get[FileNameJoin[{DirectoryName[$InputFileName], "IsospinClebschGordan.wl"}]]
Get[FileNameJoin[{DirectoryName[$InputFileName],"Beautiful_output.wl"}]]
CoupleChannelExample[] := Module[
  {Sm1Q0I0, result},
  Sm1Q0I0 = {{S[2],F[5]},{-S[1],F[4]},{S[1],F[6]},{-S[3],F[1]},{-S[4],F[2]},{S[5],F[3]},{S[4],F[7]},{S[3],F[8]}};
  Print["Example: S=-1, Q=0, I=0 coupled channel basis matrix"];
  Print["Charge basis channels: ", Sm1Q0I0];
  result = CoupleChannelBasisMatrix[Sm1Q0I0, 0];
  Print["CoupleChannelBasisMatrix[Sm1Q0I0, 0] = ", MatrixForm[result]];
];

EndPackage[]

