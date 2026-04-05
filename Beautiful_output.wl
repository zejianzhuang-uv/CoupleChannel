(* ::Package:: *)

Begin["CoupleChannel`Private`"]

MakeBoxes[DA,TraditionalForm]:="D";
MakeBoxes[FA,TraditionalForm]:="F";


(*Meson Field*)
MakeBoxes[S[1],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(+\)]\)";
MakeBoxes[-S[1],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(-\)]\)"
MakeBoxes[S[2],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(0\)]\)"
MakeBoxes[S[3],TraditionalForm]:="\!\(\*SuperscriptBox[\(K\), \(+\)]\)";
MakeBoxes[-S[3],TraditionalForm]:="\!\(\*SuperscriptBox[\(K\), \(-\)]\)";
MakeBoxes[S[4],TraditionalForm]:="\!\(\*SuperscriptBox[\(K\), \(0\)]\)";
MakeBoxes[-S[4],TraditionalForm]:="\!\(\*OverscriptBox[SubscriptBox[\(K\), \(0\)], \(_\)]\)";
MakeBoxes[S[5],TraditionalForm]:="\[Eta]";


MakeBoxes[S[1],StandardForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(+\)]\)";
MakeBoxes[-S[1],StandardForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(-\)]\)"
MakeBoxes[S[2],StandardForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(0\)]\)";
MakeBoxes[S[3],StandardForm]:="\!\(\*SuperscriptBox[\(K\), \(+\)]\)";
MakeBoxes[-S[3],StandardForm]:="\!\(\*SuperscriptBox[\(K\), \(-\)]\)";
MakeBoxes[S[4],StandardForm]:="\!\(\*SuperscriptBox[\(K\), \(0\)]\)";
MakeBoxes[-S[4],StandardForm]:="\!\(\*OverscriptBox[SuperscriptBox[\(K\), \(0\)], \(_\)]\)";
MakeBoxes[S[5],StandardForm]:="\[Eta]";

(*Baryon Field*)
MakeBoxes[F[1],TraditionalForm]:="p"
MakeBoxes[F[2],TraditionalForm]:="n"
MakeBoxes[F[3],TraditionalForm]:="\[CapitalLambda]";
MakeBoxes[F[4],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(+\)]\)";
MakeBoxes[F[5],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(0\)]\)";
MakeBoxes[F[6],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(-\)]\)";
MakeBoxes[F[7],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[CapitalXi]\), \(0\)]\)";
MakeBoxes[F[8],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[CapitalXi]\), \(-\)]\)";
MakeBoxes[F[1],StandardForm]:="p"
MakeBoxes[F[2],StandardForm]:="n"
MakeBoxes[F[3],StandardForm]:="\[CapitalLambda]";
MakeBoxes[F[4],StandardForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(+\)]\)";
MakeBoxes[F[5],StandardForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(0\)]\)";
MakeBoxes[F[6],StandardForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(-\)]\)";
MakeBoxes[F[7],StandardForm]:="\!\(\*SuperscriptBox[\(\[CapitalXi]\), \(0\)]\)";
MakeBoxes[F[8],StandardForm]:="\!\(\*SuperscriptBox[\(\[CapitalXi]\), \(-\)]\)";
End[]
