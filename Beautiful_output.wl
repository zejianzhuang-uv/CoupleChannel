(* ::Package:: *)

Begin["CoupleChannel`Private`"]

MakeBoxes[Dp,TraditionalForm]:="D";
MakeBoxes[Fp,TraditionalForm]:="F";


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



MakeBoxes[k1, TraditionalForm] := "\!\(\*SubscriptBox[\(k\), \(1\)]\)";
MakeBoxes[k2, TraditionalForm] := "\!\(\*SubscriptBox[\(k\), \(2\)]\)";
MakeBoxes[p1, TraditionalForm] := "\!\(\*SubscriptBox[\(p\), \(1\)]\)";
MakeBoxes[p2, TraditionalForm] := "\!\(\*SubscriptBox[\(p\), \(2\)]\)";
MakeBoxes[mp, TraditionalForm] := "\!\(\*SubscriptBox[\(m\), \(p\)]\)";
MakeBoxes[mn, TraditionalForm] := "Subscript[m, n]";
MakeBoxes[mLambda, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\[CapitalLambda]\)]\)";
MakeBoxes[mSigmap, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \
\(+\)]\)\)]\)";
MakeBoxes[mSigma0, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \
\(0\)]\)\)]\)";
MakeBoxes[mSigmam, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(\[CapitalSigma]\), \
\(-\)]\)\)]\)";
MakeBoxes[mXi0, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(\[CapitalXi]\), \
\(0\)]\)\)]\)";
MakeBoxes[mXim, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(\[CapitalXi]\), \
\(-\)]\)\)]\)";
MakeBoxes[mpip, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(\[Pi]\), \(+\)]\)\)]\)";
MakeBoxes[mpi0, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(\[Pi]\), \(0\)]\)\)]\)";
MakeBoxes[mKp, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(K\), \(+\)]\)\)]\)";
MakeBoxes[mK0, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\!\(\*SuperscriptBox[\(K\), \(0\)]\)\)]\)";
MakeBoxes[meta, TraditionalForm] := 
  "\!\(\*SubscriptBox[\(m\), \(\[Eta]\)]\)";

End[]
