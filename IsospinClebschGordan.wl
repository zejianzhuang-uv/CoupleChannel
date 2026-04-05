(* ::Package:: *)

(*Get["ParticleInformation.wl"]*)

Begin["CoupleChannel`Private`"]
IsospinClebschGordan[Channel_,TotalIsospin_]:=Module[
{f1,f2,is1,is2},
{f1,is1}=ParticleInformation[Channel[[1]]];
{f2,is2}=ParticleInformation[Channel[[2]]];
f1 f2 ClebschGordan[is1[[2;;3]],is2[[2;;3]],{TotalIsospin,is1[[3]]+is2[[3]]}]
];


CoupleChannelBasis[Ch_,I_]:=Sum[
IsospinClebschGordan[Ch[[i]],I] ff[I,Ch[[i]]],
{i,Length[Ch]}
];





GroupChannelsByIsospin[channels_] :=
  Module[{groups, matched},
    groups = {};
    Do[
      Do[
        matched = Select[channels, MemberQ[IsospinMesonMultiplet[mk], #[[1]]] && MemberQ[IsospinBaryonMultiplet[bk], #[[2]]] &];
        If[Length[matched] > 0, AppendTo[groups, matched]],
        {mk, {"pion", "kaon", "eta"}}
      ],
      {bk, {"N", "Lambda", "Sigma", "Xi"}}
    ];
    SortBy[groups, FirstPosition[channels, #[[1]]][[1]] &]
  ];

CoupleChannelBasisMatrix[Ch_,I_]:=Module[
{b=Table[ff[I,Ch[[i]]],{i,Length[Ch]}],
g=GroupChannelsByIsospin[Ch]},
Table[CoupleChannelBasis[g[[i]],I]//Coefficient[#,b[[j]]]&,{i,Length[g]},{j,Length[Ch]}]//Transpose
];


(*Sm1Q0I0={{S[2],F[5]},{-S[1],F[4]},{S[1],F[6]},{-S[3],F[1]},{-S[4],F[2]},{S[5],F[3]},{S[4],F[7]},{S[3],F[8]}}; (*Channels in charge basis*)
CoupleChannelBasisMatrix[Sm1Q0I0,0]*)
(*Output (Channels in isospin space): {{{S[2],F[5]},{-S[1],F[4]},{S[1],F[6]}}(*("pi0", "Sig0"),("pim", "Sigp"),("pip", "Sigm")*),
{{-S[3],F[1]},{-S[4],F[2]}}(*("Km", "p"),("K0bar", "n")*),
{{S[5],F[3]}}(*("eta", "L")*),{{S[4],F[7]},{S[3],F[8]}}(*("K0", "Xi0"),("Kp", "Xim")*)};*)
End[]
