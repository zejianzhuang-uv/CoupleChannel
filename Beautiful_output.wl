(* ::Package:: *)

MakeBoxes[DA,TraditionalForm]:="D";
MakeBoxes[FA,TraditionalForm]:="F";


(*Meson Field*)
MakeBoxes[S[1],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(+\)]\)";
MakeBoxes[S[2],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(0\)]\)";
MakeBoxes[S[3],TraditionalForm]:="\!\(\*SuperscriptBox[\(K\), \(+\)]\)";
MakeBoxes[S[4],TraditionalForm]:="\!\(\*SubscriptBox[\(K\), \(0\)]\)";
MakeBoxes[S[5],TraditionalForm]:="\[Eta]";
MakeBoxes[S[1],StandardForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(+\)]\)";
MakeBoxes[S[2],StandardForm]:="\!\(\*SuperscriptBox[\(\[Pi]\), \(0\)]\)";
MakeBoxes[S[3],StandardForm]:="\!\(\*SuperscriptBox[\(K\), \(+\)]\)";
MakeBoxes[S[4],StandardForm]:="\!\(\*SubscriptBox[\(K\), \(0\)]\)";
MakeBoxes[S[5],StandardForm]:="\[Eta]";

(*Baryon Field*)
MakeBoxes[F[1],TraditionalForm]:="p"
MakeBoxes[F[2],TraditionalForm]:="n"
MakeBoxes[F[3],TraditionalForm]:="\[CapitalLambda]";
MakeBoxes[F[4],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(+\)]\)";
MakeBoxes[F[5],TraditionalForm]:="\!\(\*SubscriptBox[\(\[CapitalSigma]\), \(0\)]\)";
MakeBoxes[F[6],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(-\)]\)";
MakeBoxes[F[7],TraditionalForm]:="\!\(\*SubscriptBox[\(\[CapitalXi]\), \(0\)]\)";
MakeBoxes[F[8],TraditionalForm]:="\!\(\*SuperscriptBox[\(\[CapitalXi]\), \(-\)]\)";
MakeBoxes[F[1],StandardForm]:="p"
MakeBoxes[F[2],StandardForm]:="n"
MakeBoxes[F[3],StandardForm]:="\[CapitalLambda]";
MakeBoxes[F[4],StandardForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(+\)]\)";
MakeBoxes[F[5],StandardForm]:="\!\(\*SubscriptBox[\(\[CapitalSigma]\), \(0\)]\)";
MakeBoxes[F[6],StandardForm]:="\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \(-\)]\)";
MakeBoxes[F[7],StandardForm]:="\!\(\*SubscriptBox[\(\[CapitalXi]\), \(0\)]\)";
MakeBoxes[F[8],StandardForm]:="\!\(\*SuperscriptBox[\(\[CapitalXi]\), \(-\)]\)";
