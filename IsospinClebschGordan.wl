(* ::Package:: *)

(* Begin["CoupleChannel`Private`"] *)


ParticleInformation[SS_]:=Module[
{s={
S[1]->{-1,{0,1,1}} (*pip*),
S[2]->{1,{0,1,0}} (*pi0*),
-S[1]->{1,{0,1,-1}} (*pim*),
S[3]->{1,{1,1/2,1/2}} (*Kp*),
-S[3]->{-1,{-1,1/2,-1/2}} (*Km*),
S[4]->{1,{1,1/2,-1/2}} (*K0*),
-S[4]->{1,{-1,1/2,1/2}} (*K0bar*),
S[5]->{1,{0,0,0}} (*eta*),
F[1]->{1,{1,1/2,1/2}} (*p*),
F[2]->{1,{1,1/2,-1/2}} (*n*),
F[3]->{1,{0,0,0}} (*Lambda*),
F[4]->{-1,{0,1,1}} (*Sigmap*),
F[5]->{1,{0,1,0}} (*Sigma0*),
F[6]->{1,{0,1,-1}} (*Sigmam*),
F[7]->{1,{-1,1/2,1/2}} (*Xi0*),
F[8]->{-1,{-1,1/2,-1/2}} (*Xim*)}},
Association[s][SS]
];

IsospinMesonMultiplet[SS_]:=Association[{"pion"->{S[1],S[2],-S[1]},
"kaon"->{S[3],S[4],-S[4],-S[3]},
"eta"->{S[5]}}][SS]
IsospinBaryonMultiplet[SS_]:=Association[
{"N"->{F[1],F[2]},
"Lambda"->{F[3]},
"Sigma"->{F[4],F[5],F[6]},
"Xi"->{F[7],F[8]}}][SS]


(*SetDirectory[NotebookDirectory[]]
Get["ParticleInformation.wl"]*)


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



(* End[] *)
